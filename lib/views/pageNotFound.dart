import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  final String name;

  const PageNotFound({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$name not Found'),
      ),
    );
  }
}
