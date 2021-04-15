import 'package:diva_roulette/helpers/routeName.dart';
import 'package:diva_roulette/views/accountCreationPage.dart';
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
    case AccountCreationPageRoute:
      return MaterialPageRoute(builder: (context) => AccountCreationPage());
    default:
      return MaterialPageRoute(
          builder: (context) => PageNotFound(name: settings.name));
  }
}
