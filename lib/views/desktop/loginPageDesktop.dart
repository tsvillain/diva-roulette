import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';

class LoginPageDesktop extends StatefulWidget {
  const LoginPageDesktop({
    Key key,
  }) : super(key: key);

  @override
  _LoginPageDesktopState createState() => _LoginPageDesktopState();
}

class _LoginPageDesktopState extends State<LoginPageDesktop> {
  Size size;
  List<String> phaseWord = [];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          padding: EdgeInsets.all(20),
          width: size.width / 1.5,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          style:
                              TextStyle(decoration: TextDecoration.underline)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
