import 'dart:math';

import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:diva_roulette/models/chat_message_model.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class VideoChatPageDesktop extends StatefulWidget {
  @override
  _VideoChatPageDesktopState createState() => _VideoChatPageDesktopState();
}

class _VideoChatPageDesktopState extends State<VideoChatPageDesktop> {
  bool _showFrontSide = true;
  bool _called = false;
  final _key = GlobalKey<AutoCompleteTextFieldState<String>>();
  final List<String> _gender = ['Male', 'Female', 'Gay', 'Lesbian', 'Other'];
  final List<String> _oppGender = [
    'Male',
    'Female',
    'Gay',
    'Lesbian',
    'Everyone'
  ];
  List<String> _suggestInterest = [
    'Singing',
    'Acting',
    'Football',
    'Cricket',
    'Food',
    'Wrestling',
    'Youtube',
    'Photography'
  ];
  List<String> _interest = [];
  String _selectedGender = 'Other';
  String _selectedOppGender = 'Everyone';
  TextEditingController _messageController = TextEditingController();

  Widget __transitionBuilder(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(_showFrontSide) != widget.key);
        final value =
            isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: Matrix4.rotationY(value),
          child: widget,
          alignment: Alignment.center,
        );
      },
    );
  }

  Offset _profilePosition;

  @override
  void initState() {
    super.initState();
    _profilePosition = Offset(20, 20);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _walletCard("Balance: 10000\$"),
                      _walletCard(
                          "Wallet Address:    X-avax12c4fgp3gqpxccddkk592z3fsjsphpmea7s2lhj"),
                    ],
                  ),
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/image/sample_people_1.jpg'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            fit: StackFit.expand,
                            alignment: Alignment.center,
                            children: [
                              // Profile Pci
                              Positioned(
                                top: _profilePosition.dy,
                                left: _profilePosition.dx == 20
                                    ? (constraints.maxWidth - 150)
                                    : _profilePosition.dx,
                                child: Draggable(
                                  onDraggableCanceled:
                                      (Velocity velocity, Offset offset) {
                                    double _top = 0, _left = 0;
                                    if ((offset.dy) >
                                        (constraints.maxHeight - 60)) {
                                      _top = (constraints.maxHeight - 150);
                                    } else if ((offset.dy) < 60) {
                                      _top = 0;
                                    } else {
                                      _top = _top + offset.dy - 110.0;
                                    }

                                    if ((offset.dx) >
                                        (constraints.maxWidth - 60)) {
                                      _left = (constraints.maxWidth - 140);
                                    } else if ((offset.dx) < 60) {
                                      _left = 0;
                                    } else {
                                      _left = _left + offset.dx - 65.0;
                                    }

                                    setState(() {
                                      _profilePosition = Offset(_left, _top);
                                    });
                                  },
                                  feedback: _callerVideo(),
                                  child: _callerVideo(),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                child: Row(
                                  children: [
                                    _called
                                        ? FloatingActionButton(
                                            onPressed: () {
                                              setState(() {
                                                _showFrontSide = true;
                                                _called = false;
                                              });
                                            },
                                            backgroundColor: Colors.red,
                                            child: Icon(Icons.call_end),
                                          )
                                        : FloatingActionButton(
                                            onPressed: () {
                                              setState(() {
                                                _showFrontSide = false;
                                                _called = true;
                                              });
                                            },
                                            backgroundColor: Colors.green,
                                            child: Icon(Icons.call),
                                          ),
                                    SizedBox(width: 30),
                                    FloatingActionButton(
                                      onPressed: () {},
                                      backgroundColor: Colors.blue,
                                      child: Icon(Icons.skip_next_rounded),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // side bar
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedSwitcher(
                  switchInCurve: Curves.easeInBack,
                  switchOutCurve: Curves.easeInBack.flipped,
                  transitionBuilder: __transitionBuilder,
                  layoutBuilder: (widget, list) =>
                      Stack(children: [widget, ...list]),
                  duration: Duration(milliseconds: 600),
                  child: _showFrontSide ? _sideCardFront() : _sideCardBack()),
            ),
          ),
        ],
      ),
    );
  }

  // Callers Video
  Widget _callerVideo() {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/sample_people_2.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: 5,
        ),
      ),
    );
  }

// Wallet Card
  Widget _walletCard(String text) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black54,
      ),
      child: SelectableText(
        '$text',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

// Chat Screen aka Back side of the Card
  _sideCardBack() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 14,
                ),
                hoverColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    _showFrontSide = !_showFrontSide;
                  });
                }),
          ),
          Expanded(
            flex: 10,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: dummyMessage.length,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                  child: Align(
                    alignment: dummyMessage[i].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: dummyMessage[i].messageType == "receiver"
                            ? Colors.grey.shade200
                            : Colors.green[200],
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '${dummyMessage[i].messageContent}',
                        maxLines: 10,
                        style: TextStyle(fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (_, __) {
                return SizedBox(height: 3);
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _messageController,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8),
                        hintText: 'Write your message..',
                        hintStyle: TextStyle(fontSize: 12, color: Colors.white),
                        hoverColor: Colors.white,
                        border: InputBorder.none,
                      ),
                      onFieldSubmitted: (val) {
                        // Send Message
                        print(val);
                        _messageController.clear();
                      },
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.send_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// Setting Screen aka front side of the card
  Widget _sideCardFront() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // connect with gender
          Container(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Connect with',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                Container(
                  height: 30,
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: _oppGender
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: GFButton(
                                onPressed: () {
                                  setState(() {
                                    _selectedOppGender = e;
                                  });
                                },
                                color: e == _selectedOppGender
                                    ? Colors.red[400]
                                    : Colors.white24,
                                text: '$e',
                                hoverElevation: 0,
                                textColor: e == _selectedOppGender
                                    ? Colors.white
                                    : Colors.black,
                                shape: GFButtonShape.pills,
                              ),
                            ),
                          )
                          .toList()),
                ),
              ],
            ),
          ),
          // Interests
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SimpleAutoCompleteTextField(
                    key: _key,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: 'Add your Interest',
                      labelStyle: TextStyle(fontSize: 13),
                      hintStyle: TextStyle(color: Colors.black, fontSize: 13),
                      border: InputBorder.none,
                    ),
                    suggestions: _suggestInterest,
                    clearOnSubmit: true,
                    submitOnSuggestionTap: true,
                    textInputAction: TextInputAction.none,
                    textSubmitted: (val) {
                      setState(() {
                        _interest.add(val);
                        _suggestInterest.remove(val);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: _interest
                      .map((e) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: FilterChip(
                            backgroundColor: Colors.green[200],
                            label: Text(
                              "$e",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            avatar: Icon(
                              Icons.remove_circle_outline,
                              color: Colors.black,
                            ),
                            onSelected: (value) {
                              _interest.remove(e);
                              setState(() {});
                            },
                          )))
                      .toList(),
                ),
              ],
            ),
          ),
          // i am Gender
          Container(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'I am..',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                Container(
                  height: 30,
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: _gender
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: GFButton(
                                onPressed: () {
                                  setState(() {
                                    _selectedGender = e;
                                  });
                                },
                                color: e == _selectedGender
                                    ? Colors.red[400]
                                    : Colors.white24,
                                text: '$e',
                                hoverElevation: 0,
                                textColor: e == _selectedGender
                                    ? Colors.white
                                    : Colors.black,
                                shape: GFButtonShape.pills,
                              ),
                            ),
                          )
                          .toList()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
