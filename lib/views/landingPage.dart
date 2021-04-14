import 'package:diva_roulette/utils/widgets/cardCollection.dart';
import 'package:diva_roulette/utils/widgets/contentCard.dart';
import 'package:diva_roulette/utils/widgets/loginCard.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Diva Roulette"),
      //   backgroundColor: Colors.blueAccent,
      // ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginCard(
                    size: _size.width / 4,
                    btnFunc: null,
                    btnText: 'ACCESS',
                    color: Colors.deepPurple,
                    firstText: 'WELCOME BACK!',
                    icon: Icon(Icons.login_rounded),
                    secondText: 'Access your existence',
                    btnColor: Colors.deepPurple,
                  ),
                  SizedBox(width: 20),
                  LoginCard(
                    size: _size.width / 4,
                    btnFunc: null,
                    btnText: 'CREATE NEW',
                    color: Colors.red[300],
                    firstText: 'NEW TO',
                    icon: Icon(Icons.app_registration),
                    secondText: 'Create a new',
                    btnColor: Colors.red[300],
                  ),
                ],
              ),
            ),
            Center(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(text: "By using this application you agree to the "),
                  TextSpan(
                    text: "Terms of Use",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blueAccent,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Get mouse hover effect
                        // TODO add Terms link
                        launch('https://google.com');
                      },
                  ),
                ]),
              ),
            ),
            Divider(),
            // Second Section

            Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Free Sex Cams',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContentCard(
                        image: AssetImage('assets/image/start.png'),
                        title: 'Press Start',
                        desc:
                            '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
                        func: null,
                        size: _size.width / 3.5,
                      ),
                      ContentCard(
                        image: AssetImage('assets/image/start.png'),
                        title: 'Partner Up',
                        desc:
                            '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
                        func: null,
                        size: _size.width / 3.5,
                      ),
                      ContentCard(
                        image: AssetImage('assets/image/start.png'),
                        title: 'Get Sexy',
                        desc:
                            '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
                        func: null,
                        size: _size.width / 3.5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // 3 section
            Container(
              height: _size.width / 3,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Only Looking for Girls?',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 60, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.redAccent[700],
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Only Show Girls',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // 4 Section
            Container(
              padding: EdgeInsets.all(50),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      imageLeft(AssetImage('assets/icon/glass.png'), 'Anoymous',
                          context),
                      SizedBox(width: 60),
                      textData(
                        '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English''',
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textData(
                        '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English''',
                      ),
                      SizedBox(width: 60),
                      imageLeft(AssetImage('assets/icon/smartphone.png'),
                          'On The Go', context),
                    ],
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      imageBottom(AssetImage('assets/icon/heart.png'),
                          'Free Adult Chat', context),
                      SizedBox(width: 60),
                      textData(
                        '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English''',
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textData(
                        '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English''',
                      ),
                      SizedBox(width: 60),
                      imageBottom(AssetImage('assets/icon/globe.png'),
                          'Chat Choices', context),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
