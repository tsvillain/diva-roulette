import 'package:diva_roulette/helpers/route_name.dart';
import 'package:diva_roulette/utils/widgets/terms_card.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ConfirmCard extends StatelessWidget {
  final double size;

  const ConfirmCard({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          padding: EdgeInsets.all(50),
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[300],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.ac_unit_rounded,
                  color: Colors.red[400],
                ),
                minRadius: 20,
                maxRadius: 35,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Generate a new key phase',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                hoverColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, LoginPageRoute);
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Already have",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blueAccent,
                      ),
                    ),
                    TextSpan(text: " ?"),
                  ]),
                ),
              ),
              SizedBox(
                width: size / 2,
                child: Divider(),
              ),
              GFButton(
                color: Colors.red[400],
                onPressed: () {
                  Navigator.pushNamed(context, AccountCreationPageRoute);
                },
                text: 'GENERATE KEY PHASE',
                shape: GFButtonShape.standard,
              ),
              TermsCard(),
              MaterialButton(
                hoverColor: Colors.transparent,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  // style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
