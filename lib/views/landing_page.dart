import 'package:diva_roulette/views/desktop/landing_page_desktop.dart';
import 'package:diva_roulette/views/mobile/landing_page_mobile.dart';
import 'package:diva_roulette/views/tablet/landing_page_tablet.dart';
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
