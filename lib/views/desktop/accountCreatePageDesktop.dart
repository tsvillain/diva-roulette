import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AccountCreationPageDesktop extends StatefulWidget {
  const AccountCreationPageDesktop({
    Key key,
  }) : super(key: key);

  @override
  _AccountCreationPageDesktopState createState() =>
      _AccountCreationPageDesktopState();
}

class _AccountCreationPageDesktopState
    extends State<AccountCreationPageDesktop> {
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
    return Container(
      padding: EdgeInsets.all(50),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: _size.width / 3,
            height: _size.height / 1.3,
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[300],
                  ),
                  child: Text(
                      "${dummyList.toString().replaceAll(RegExp(r'[,\[\]]'), '')}"),
                ),
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
          SizedBox(width: 20),
          Container(
            padding: EdgeInsets.all(40),
            width: _size.width / 3,
            height: _size.height / 1.3,
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
                        Text('I wrote down my key phrase in a secure location.')
                      ],
                    ),
                    GFButton(
                      onPressed: () {},
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
    );
  }
}
