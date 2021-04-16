import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';

class LoginPageTablet extends StatefulWidget {
  const LoginPageTablet({
    Key key,
  }) : super(key: key);

  @override
  _LoginPageTabletState createState() => _LoginPageTabletState();
}

class _LoginPageTabletState extends State<LoginPageTablet> {
  Size size;
  List<String> phaseWord = [];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            padding: EdgeInsets.all(20),
            width: size.width / 1.5,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Preview',
                  style: TextStyle(color: Colors.grey),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 24,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3 / 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
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
                          Text(
                            phaseWord.length > index
                                ? "${phaseWord[index]}"
                                : "",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 40),
                Text(
                  'Enter your MNEMONIC phrase',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 10),
                Text(
                  '''Hit 'SPACE' after every successful word entry.''',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 20),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onChanged: (val) {
                      List<String> temp = val.trim().split(" ");
                      setState(() {
                        phaseWord = temp;
                      });
                    },
                  ),
                ),
                SizedBox(height: 50),
                GFButton(
                  onPressed: phaseWord.length == 24 ? () {} : null,
                  text: 'ACCESS',
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  hoverColor: Colors.transparent,
                  child: Text('Cancel',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.underline)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
