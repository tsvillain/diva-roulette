import 'package:flutter/material.dart';

Widget textData(String text) {
  return Text(
    '$text',
    maxLines: 5,
    overflow: TextOverflow.clip,
    textAlign: TextAlign.left,
  );
}

Widget imageLeft(AssetImage image, String text, BuildContext context) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '$text',
        style: Theme.of(context).textTheme.headline5,
      ),
      SizedBox(width: 5),
      Image(
        image: image,
        width: 50,
        height: 50,
        fit: BoxFit.contain,
      ),
    ],
  );
}

Widget aboutCard(String title, String content) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '$title',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.red,
          fontSize: 34,
        ),
      ),
      SizedBox(height: 20),
      Text(
        '$content',
        textAlign: TextAlign.left,
        maxLines: 5,
      ),
    ],
  );
}

Widget imageBottom(AssetImage image, String text, BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '$text',
        style: Theme.of(context).textTheme.headline5,
      ),
      SizedBox(height: 5),
      Image(
        image: image,
        width: 50,
        height: 50,
        fit: BoxFit.contain,
      ),
    ],
  );
}
