import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:diva_roulette/theme.dart';
import 'package:diva_roulette/views/desktop/verify_dialog_desktop.dart';
import 'package:diva_roulette/views/widgets/word_widget.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:ndialog/ndialog.dart';

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
    "morning",
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
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: _size.width / 3,
              height: _size.height / 1.3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppTheme.purpleBG,
                    ),
                    padding: EdgeInsets.all(AppTheme.defaultPadding),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 24,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 3 / 1.3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5),
                      itemBuilder: (context, index) {
                        return WordWidget(
                          pos: index,
                          word: dummyList[index],
                        );
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: AppTheme.defaultPadding)),
                  Container(
                    padding: EdgeInsets.all(AppTheme.defaultPadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppTheme.purpleBG,
                    ),
                    child: Text(
                      "${dummyList.toString().replaceAll(RegExp(r'[,\[\]]'), '')}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: AppTheme.defaultPadding)),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Padding(
                      padding:
                          const EdgeInsets.only(right: AppTheme.paddingMedium),
                      child: Text('REGENERATE'),
                    ),
                    icon: Icon(
                      Icons.refresh_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            Container(
              padding: EdgeInsets.all(AppTheme.paddingLarge),
              width: _size.width / 3,
              height: _size.height / 1.3,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      child: Icon(Icons.list_alt_rounded),
                      minRadius: 20,
                      maxRadius: 32,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: AppTheme.defaultPadding)),
                  AutoSizeText(
                    "This is your key phrase.",
                    style: TextStyle(
                      fontSize: 36,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 128),
                    child: Container(
                      height: double.infinity,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: AppTheme.defaultPadding)),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: false, onChanged: (_) {}),
                      Text('I wrote down my key phrase in a secure location.')
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: AppTheme.defaultPadding)),
                  GFButton(
                    onPressed: () {
                      List<int> randomBlank = [];
                      while (randomBlank.length < 4) {
                        int temp = (Random().nextInt(dummyList.length - 1) + 1);
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
                          dialog: VerifyDialogDesktop(
                            phaseWord: dummyList,
                            randomBlank: randomBlank,
                            size: _size,
                          ),
                          blur: 5,
                        ),
                      );
                    },
                    text: 'LOGIN',
                    color: Theme.of(context).accentColor,
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
