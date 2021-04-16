import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final double size;
  final AssetImage image;
  final String title;
  final String desc;
  final Function func;

  const ContentCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.desc,
    @required this.func,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            width: 120,
            height: 120,
            image: image,
            fit: BoxFit.contain,
          ),
          AutoSizeText(
            '$title',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$desc',
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
