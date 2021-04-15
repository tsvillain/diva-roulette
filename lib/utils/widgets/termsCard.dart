import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsCard extends StatelessWidget {
  const TermsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        // TODO add Terms link
        launch('https://google.com');
      },
      hoverColor: Colors.transparent,
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "By using this application you agree to the ",
              style: TextStyle(fontSize: 10)),
          TextSpan(
            text: "Terms of Use",
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blueAccent,
              fontSize: 10,
            ),
          ),
        ]),
      ),
    );
  }
}
