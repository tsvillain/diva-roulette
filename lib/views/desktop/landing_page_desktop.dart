import 'package:diva_roulette/helpers/route_name.dart';
import 'package:diva_roulette/utils/widgets/card_collection.dart';
import 'package:diva_roulette/utils/widgets/content_card.dart';
import 'package:diva_roulette/utils/widgets/footer.dart';
import 'package:diva_roulette/utils/widgets/login_card.dart';
import 'package:diva_roulette/utils/widgets/terms_card.dart';
import 'package:flutter/material.dart';

class LandingPageDesktop extends StatefulWidget {
  @override
  _LandingPageDesktopState createState() => _LandingPageDesktopState();
}

class _LandingPageDesktopState extends State<LandingPageDesktop> {
  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            height: _size.height / 1.3,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginCard(
                  size: _size.width / 4,
                  btnFunc: () {
                    Navigator.pushNamed(context, LoginPageRoute);
                  },
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
                  btnFunc: () {
                    Navigator.pushNamed(context, ConfirmCreationPageRoute);
                  },
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
        ),
        Center(
          child: TermsCard(),
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
                'What is Lorem Ipsum',
                style: Theme.of(context).textTheme.headline3,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContentCard(
                    image: AssetImage('assets/image/start.png'),
                    title: 'Lorem ipsum',
                    desc:
                        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean consequat commodo nisl vitae bibendum. Nam vel luctus diam. Nullam sed sem sit amet neque finibus suscipit et at urna. Donec facilisis lacus nec finibus vestibulum. Proin eget elementum tortor. Cras accumsan risus ipsum, ut consectetur nunc commodo a.''',
                    func: null,
                    size: _size.width / 3.5,
                  ),
                  ContentCard(
                    image: AssetImage('assets/image/start.png'),
                    title: 'Sed commodo',
                    desc:
                        '''Sed commodo mauris et semper imperdiet. Phasellus sit amet suscipit elit. Proin non lacus consequat, lacinia eros a, aliquam turpis. Integer faucibus leo condimentum dolor volutpat laoreet. Donec commodo sem viverra felis bibendum malesuada. Morbi vulputate, sem at interdum vestibulum, purus ligula sollicitudin augue, quis fermentum mi lorem sit amet arcu.''',
                    func: null,
                    size: _size.width / 3.5,
                  ),
                  ContentCard(
                    image: AssetImage('assets/image/start.png'),
                    title: 'Etiam ultrices',
                    desc:
                        '''Etiam ultrices augue id metus congue, ac ultricies lectus varius. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec blandit quam. Nunc sodales orci non lacus tempus, eu placerat nulla ultricies. Nulla congue tortor ut dolor lobortis, sit amet mollis dui tristique. Cras sollicitudin metus ac felis volutpat, ut euismod felis fringilla.''',
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
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 60, 100, 60),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Why do we use it?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
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
                    'Start Using It',
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
                  imageLeft(AssetImage('assets/icon/glass.png'),
                      'Where can I get some?', context),
                  SizedBox(width: 60),
                  Expanded(
                    child: textData(
                      '''There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.''',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: textData(
                      '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.''',
                    ),
                  ),
                  SizedBox(width: 60),
                  imageLeft(AssetImage('assets/icon/smartphone.png'),
                      'Where does it come from?', context),
                ],
              ),
              SizedBox(height: 60),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  imageBottom(AssetImage('assets/icon/heart.png'),
                      'What is Lorem Ipsum?', context),
                  SizedBox(width: 60),
                  Expanded(
                    child: textData(
                      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.''',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: textData(
                      '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English''',
                    ),
                  ),
                  SizedBox(width: 60),
                  imageBottom(AssetImage('assets/icon/globe.png'),
                      'Why do we use it?', context),
                ],
              ),
            ],
          ),
        ),
        // 5 section
        Divider(),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: _size.width / 2.5,
                child: aboutCard('More About Us',
                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'''),
              ),
              Container(
                width: _size.width / 2.5,
                child: aboutCard('Achievement',
                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'''),
              ),
            ],
          ),
        ),
        Footer(),
      ],
    );
  }
}
