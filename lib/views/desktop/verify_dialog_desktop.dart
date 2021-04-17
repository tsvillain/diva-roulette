import 'package:diva_roulette/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class VerifyDialogDesktop extends StatelessWidget {
  final Size size;
  final List<int> randomBlank;
  final List<String> phaseWord;

  const VerifyDialogDesktop({
    Key key,
    @required this.size,
    @required this.randomBlank,
    @required this.phaseWord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.all(4),
      title: ListTile(
        title: Text(
          "Verify Mnemonic",
          style: Theme.of(context).textTheme.headline5.copyWith(
            color: Theme.of(context).primaryColor
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.close_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      contentPadding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Divider(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Fill In Mnemonic Phrase Below',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Grid
          Container(
            height: size.height / 2,
            width: size.width / 3,
            padding: EdgeInsets.all(8),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 24,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.5 / 0.1,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 12),
              itemBuilder: (context, index) {
                return TextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    prefixText: "${index + 1}.  ",
                    enabled: randomBlank.contains(index),
                  ),
                  initialValue:
                      randomBlank.contains(index) ? "" : "${phaseWord[index]}",
                );
              },
            ),
          ),
          Container(
            width: 256,
            child: GFButton(
              onPressed: () {},
              text: 'VERIFY',
              textColor: Colors.white,
              color: AppTheme.purple,
            ),
          ),
        ],
      ),
    );
  }
}
