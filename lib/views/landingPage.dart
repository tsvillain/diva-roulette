import 'package:diva_roulette/views/desktop/landingPageDesktop.dart';
import 'package:diva_roulette/views/mobile/landingPageMobile.dart';
import 'package:diva_roulette/views/tablet/landingPageTablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          child: ResponsiveBuilder(builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return LandingPageMobile();
            } else if (sizingInformation.deviceScreenType ==
                DeviceScreenType.tablet) {
              return LandingPageTablet();
            } else {
              return LandingPageDesktop();
            }
          }),
        ),
      ),
    );
  }
}
