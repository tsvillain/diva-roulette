import 'package:diva_roulette/views/desktop/accountCreatePageDesktop.dart';
import 'package:diva_roulette/views/tablet/accountCreationPageTablet.dart';
import 'package:diva_roulette/views/mobile/accountCreationPageMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AccountCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          child: ResponsiveBuilder(builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return AccountCreationPageMobile();
            } else if (sizingInformation.deviceScreenType ==
                DeviceScreenType.tablet) {
              return AccountCreationPageTablet();
            } else {
              return AccountCreationPageDesktop();
            }
          }),
        ),
      ),
    );
  }
}
