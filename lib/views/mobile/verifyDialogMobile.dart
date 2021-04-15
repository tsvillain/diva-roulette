import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class VerifyDialogMobile extends StatelessWidget {
  final Size size;
  final List<int> randomBlank;
  final List<String> phaseWord;

  const VerifyDialogMobile({
    Key key,
    @required this.size,
    @required this.randomBlank,
    @required this.phaseWord,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.all(5),
      title: ListTile(
        title: Text("Verify Mnemonic"),
        trailing: IconButton(
          icon: Icon(Icons.close_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      contentPadding: EdgeInsets.all(20),
      content: Column(
        mainAxisSize: MainAxisSize.max,
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
            width: size.width / 1,
            padding: EdgeInsets.all(8),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 24,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.5 / 0.1,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8),
              itemBuilder: (context, index) {
                return TextFormField(
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
            width: 100,
            child: GFButton(
              onPressed: () {},
              text: 'VERIFY',
              textColor: Colors.white,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
