import 'package:diva_roulette/helpers/routeName.dart';
import 'package:diva_roulette/theme.dart';
import 'package:flutter/material.dart';
import 'package:diva_roulette/helpers/generateRoute.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diva Roulette',
      theme: AppTheme.getAppTheme(),
      onGenerateRoute: router.generateRoute,
      initialRoute: LandingPageRoute,
    );
  }
}
