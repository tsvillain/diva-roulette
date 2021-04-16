import 'package:auto_size_text/auto_size_text.dart';
import 'package:diva_roulette/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';

class LoginCard extends StatelessWidget {
  final double size;
  final Color color;
  final Color btnColor;
  final String firstText;
  final String secondText;
  final Icon icon;
  final String btnText;
  final Function btnFunc;
  final Color avatarColor;

  const LoginCard({
    Key key,
    @required this.size,
    @required this.color,
    @required this.firstText,
    @required this.secondText,
    @required this.btnColor,
    @required this.icon,
    @required this.btnText,
    @required this.btnFunc,
    this.avatarColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppTheme.purpleBG,
      ),
      width: size,
      height: size,
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.paddingLarge),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundColor: avatarColor ?? color,
                      child: icon,
                      minRadius: 20,
                      maxRadius: 32,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: AppTheme.paddingSmall)),
                  AutoSizeText(
                    "$firstText",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  AutoSizeText(
                    "$secondText",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            Expanded(flex: 1, child: SizedBox()),
            ElevatedButton(
              onPressed: btnFunc,
              child: Padding(
                padding: EdgeInsets.only(right: AppTheme.paddingLarge),
                child: Text(btnText),
              ),
              style: ElevatedButton.styleFrom(primary: btnColor),
            ),
          ],
        ),
      ),
    );
  }
}
