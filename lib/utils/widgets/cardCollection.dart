import 'package:flutter/material.dart';

Widget textData(String text) {
  return Expanded(
    child: Text(
      '$text',
      maxLines: 5,
      overflow: TextOverflow.fade,
      textAlign: TextAlign.left,
    ),
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
