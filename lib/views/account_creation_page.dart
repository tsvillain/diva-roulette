import 'package:diva_roulette/views/desktop/account_create_page_desktop.dart';
import 'package:diva_roulette/views/tablet/account_creation_page_tablet.dart';
import 'package:diva_roulette/views/mobile/account_creation_page_mobile.dart';
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
