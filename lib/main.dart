import 'package:diva_roulette/helpers/route_name.dart';
import 'package:flutter/material.dart';
import 'package:diva_roulette/helpers/generate_route.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diva Roulette',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: VideoChatRoute,
    );
  }
}
