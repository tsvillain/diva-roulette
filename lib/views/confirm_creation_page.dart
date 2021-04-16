import 'package:diva_roulette/utils/widgets/confirm_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ConfirmCreationPage extends StatefulWidget {
  @override
  _ConfirmCreationPageState createState() => _ConfirmCreationPageState();
}

class _ConfirmCreationPageState extends State<ConfirmCreationPage> {
  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          child: ResponsiveBuilder(builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return ConfirmCard(
                size: _size.width / 1,
              );
            } else if (sizingInformation.deviceScreenType ==
                DeviceScreenType.tablet) {
              return ConfirmCard(
                size: _size.width / 1.5,
              );
            } else {
              return ConfirmCard(
                size: _size.width / 3,
              );
            }
          }),
        ),
      ),
    );
  }
}
