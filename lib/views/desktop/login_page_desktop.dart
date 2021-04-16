import 'package:diva_roulette/theme.dart';
import 'package:diva_roulette/views/widgets/preview_widget.dart';
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
          padding: EdgeInsets.all(AppTheme.paddingLarge),
          width: size.width / 1.5,
          decoration: BoxDecoration(
            color: AppTheme.purpleBG,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      style: Theme.of(context).textTheme.headline6,
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
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(decoration: TextDecoration.underline)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: AppTheme.paddingMedium),
              Expanded(
                flex: 1,
                child: PreviewWidget(phaseWord: phaseWord,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
