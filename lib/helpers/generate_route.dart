import 'package:diva_roulette/helpers/route_name.dart';
import 'package:diva_roulette/views/account_creation_page.dart';
import 'package:diva_roulette/views/confirm_creation_page.dart';
import 'package:diva_roulette/views/landing_page.dart';
import 'package:diva_roulette/views/login_page.dart';
import 'package:diva_roulette/views/page_not_found.dart';
import 'package:diva_roulette/views/video_chat_page.dart';
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
    case VideoChatRoute:
      return MaterialPageRoute(builder: (context) => VideoChatPage());
    default:
      return MaterialPageRoute(
          builder: (context) => PageNotFound(name: settings.name));
  }
}
