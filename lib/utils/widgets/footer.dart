import 'package:flutter/material.dart';

// TODO make below links dyanmic
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
              blurRadius: 3, offset: Offset(0, -3), color: Colors.black54),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
                  ['Home', 'About', 'FAQ', 'Terms', 'Contact Us']
                      .map((e) => MaterialButton(
                            onPressed: () {},
                            child: Text(
                              '$e',
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                      .toList(),
            ),
          ),
          SizedBox(height: 20),
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AssetImage('assets/icon/facebook.png'),
                AssetImage('assets/icon/twitter.png')
              ]
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                            image: e,
                            height: 30,
                            width: 30,
                            fit: BoxFit.contain),
                      ))
                  .toList()),
          SizedBox(height: 20),
          Text(
            '© 2021 Divaroulette | All Rights Reserved',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
