import 'package:flutter/material.dart';

class WordWidget extends StatelessWidget {
  final int pos;
  final String word;

  const WordWidget({Key key, this.pos, this.word})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${pos + 1}.',
            style: Theme.of(context).textTheme.bodyText2.copyWith(
              fontWeight: FontWeight.w400,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                word,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
