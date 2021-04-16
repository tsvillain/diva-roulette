import 'package:diva_roulette/helpers/routeName.dart';
import 'package:diva_roulette/views/accountCreationPage.dart';
import 'package:diva_roulette/views/confirmCreationPage.dart';
import 'package:diva_roulette/views/landingPage.dart';
import 'package:diva_roulette/views/loginPage.dart';
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
    case LoginPageRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    default:
      return MaterialPageRoute(
          builder: (context) => PageNotFound(name: settings.name));
  }
}
