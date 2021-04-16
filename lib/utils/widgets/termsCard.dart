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
              style: Theme.of(context).textTheme.bodyText2),
          TextSpan(
            text: "Terms of Use",
            style: Theme.of(context).textTheme.bodyText2.copyWith(
              decoration: TextDecoration.underline,
              color: Colors.purple,
              fontWeight: FontWeight.w400
            ),
          ),
        ]),
      ),
    );
  }
}
