import 'package:diva_roulette/views/desktop/login_page_desktop.dart';
import 'package:diva_roulette/views/mobile/login_page_mobile.dart';
import 'package:diva_roulette/views/tablet/login_page_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          child: ResponsiveBuilder(builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return LoginPageMobile();
            } else if (sizingInformation.deviceScreenType ==
                DeviceScreenType.tablet) {
              return LoginPageTablet();
            } else {
              return LoginPageDesktop();
            }
          }),
        ),
      ),
    );
  }
}
