import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  final double size;
  final Color color;
  final Color btnColor;
  final String firstText;
  final String secondText;
  final Icon icon;
  final String btnText;
  final Function btnFunc;

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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      width: size,
      height: size,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
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
                      backgroundColor: color,
                      child: icon,
                      minRadius: 20,
                      maxRadius: 35,
                    ),
                  ),
                  AutoSizeText(
                    "$firstText",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.deepPurple[300],
                    ),
                  ),
                  AutoSizeText(
                    "$secondText",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 1, child: SizedBox()),
            InkWell(
              onTap: btnFunc,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: btnColor,
                ),
                padding: EdgeInsets.all(8),
                child: Text('$btnText',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
