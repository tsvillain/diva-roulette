import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:diva_roulette/views/tablet/verify_dialog_tablet.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:ndialog/ndialog.dart';

class AccountCreationPageTablet extends StatefulWidget {
  const AccountCreationPageTablet({
    Key key,
  }) : super(key: key);

  @override
  _AccountCreationPageTabletState createState() =>
      _AccountCreationPageTabletState();
}

class _AccountCreationPageTabletState extends State<AccountCreationPageTablet> {
  final dummyList = [
    "someone",
    "number",
    "moring",
    "twice",
    "cycle",
    "taxi",
    "audit",
    "naive",
    "neglect",
    "venture",
    "orange",
    "call",
    "dutch",
    "uncle",
    "panel",
    "memory",
    "silver",
    "library",
    "atom",
    "eternal",
    "rug",
    "super",
    "inquiry",
    "toward"
  ];
  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: _size.width / 1,
              // height: _size.height / 1,
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(15),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 24,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 3 / 1.3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${index + 1}.'),
                              Text('${dummyList[index]}')
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300],
                    ),
                    child: Text(
                        "${dummyList.toString().replaceAll(RegExp(r'[,\[\]]'), '')}"),
                  ),
                  SizedBox(height: 5),
                  GFButton(
                    onPressed: () {},
                    text: 'REGENERATE',
                    icon: Icon(
                      Icons.refresh_rounded,
                      color: Colors.white,
                    ),
                    color: Colors.deepPurple,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: _size.width / 1,
              height: _size.height / 2,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          child: Icon(Icons.list_alt_rounded),
                          minRadius: 20,
                          maxRadius: 35,
                        ),
                      ),
                      AutoSizeText(
                        "This is your key \nphrase.",
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(value: false, onChanged: (_) {}),
                          Text(
                              'I wrote down my key phrase in a secure location.')
                        ],
                      ),
                      GFButton(
                        onPressed: () {
                          List<int> randomBlank = [];
                          while (randomBlank.length < 4) {
                            int temp =
                                (Random().nextInt(dummyList.length - 1) + 1);
                            if (!randomBlank.contains(temp)) {
                              randomBlank.add(temp);
                            }
                          }
                          print("blank List:: " + randomBlank.toString());
                          // Verify Mnemonic Dialog
                          showDialog(
                            context: context,
                            builder: (_) => DialogBackground(
                              dismissable: false,
                              dialog: VerifyDialogTablet(
                                phaseWord: dummyList,
                                randomBlank: randomBlank,
                                size: _size,
                              ),
                              blur: 5,
                            ),
                          );
                        },
                        text: 'LOGIN',
                        color: Colors.red[400],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
