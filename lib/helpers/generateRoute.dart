import 'package:diva_roulette/helpers/routeName.dart';
import 'package:diva_roulette/views/confirmCreationPage.dart';
import 'package:diva_roulette/views/landingPage.dart';
import 'package:diva_roulette/views/pageNotFound.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LandingPageRoute:
      return MaterialPageRoute(builder: (context) => LandingPage());
      break;
    case ConfirmCreationPageRoute:
      return MaterialPageRoute(builder: (context) => ConfirmCreationPage());
    default:
      return MaterialPageRoute(
          builder: (context) => PageNotFound(name: settings.name));
  }
}
