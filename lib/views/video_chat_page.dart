import 'package:diva_roulette/views/desktop/video_chat_page_desktop.dart';
import 'package:diva_roulette/views/mobile/video_chat_page_mobile.dart';
import 'package:diva_roulette/views/tablet/video_chat_page_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class VideoChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Scrollbar(
          child: ResponsiveBuilder(builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return VideoChatPageMobile();
            } else if (sizingInformation.deviceScreenType ==
                DeviceScreenType.tablet) {
              return VideoChatPageTablet();
            } else {
              return VideoChatPageDesktop();
            }
          }),
        ),
      ),
    );
  }
}
