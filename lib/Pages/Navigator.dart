

import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:maa/Pages/Login.dart';


class IntroSixPage extends StatefulWidget {
  static final String path = "lib/src/pages/onboarding/intro6.dart";
  @override
  _IntroSixPageState createState() => _IntroSixPageState();
}

class _IntroSixPageState extends State<IntroSixPage> {


  SwiperController _controller = SwiperController();
  int _currentIndex = 0;
  final List<String> titles = [
    "Safety Tips",
    "Safety Tips",
    "Safety Tips",
    "Safety Tips",
    "Safety Tips",
    "Safety Tips"
  ];
  final List<String> subtitles = [
    "Wash your hands frequently",
    "Maintain social distancing",
    "Avoid touching eyes, nose and mouth"
        "Practice respiratory hygiene",
    "If you have fever, cough and difficulty breathing, seek medical care early",
    "Stay informed and follow advice given by your healthcare provider"
  ];
  final List<String> Whys = [
    "Washing your hands with soap and water or using alcohol-based hand rub kills viruses that may be on your hands.",
    "When someone coughs or sneezes they spray small liquid droplets from their nose or mouth which may contain virus. If you are too close, you can breathe in the droplets, including the COVID-19 virus if the person coughing has the disease.",
    "Hands touch many surfaces and can pick up viruses. Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and can make you sick."
        "Droplets spread virus. By following good respiratory hygiene you protect the people around you from viruses such as cold, flu and COVID-19.",
    "National and local authorities will have the most up to date information on the situation in your area. Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also protect you and help prevent spread of viruses and other infections.",
    " National and local authorities will have the most up to date information on whether COVID-19 is spreading in your area. They are best placed to advise on what people in your area should be doing to protect themselves."
  ];
  final List<Color> colors = [
    Colors.green.shade300,
    Colors.blue.shade300,
    Colors.indigo.shade300,
    Colors.green.shade300,
    Colors.blue.shade300,
    Colors.indigo.shade300,
  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        children: <Widget>[
          Swiper(
            loop: false,
            index: _currentIndex,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _controller,
            pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                activeColor: Colors.red,
                activeSize: 20.0,
              ),
            ),
            itemCount: 5,
            itemBuilder: (context, index) {
              return IntroItem(
                title: titles[index],
                subtitle: subtitles[index],
                bg: colors[index],
                imageUrl: Whys[index],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton(
              child: Text("Skip"),
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(
                    builder: (context) => AuthThreePage()));
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon:
              Icon(_currentIndex == 4 ? Icons.check : Icons.arrow_forward),
              onPressed: () {
                if (_currentIndex != 4)
                  _controller.next();
                else {
                  Navigator.push(context, CupertinoPageRoute(
                      builder: (context) => AuthThreePage()));
                }
              })
          )],
      ),
    );
  }
}

class IntroItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color bg;
  final String imageUrl;

  const IntroItem(
      {Key key, @required this.title, this.subtitle, this.bg, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg ?? Theme.of(context).primaryColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: Colors.white),
                ),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 20.0),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(height: 40.0),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 70),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Material(
                      elevation: 4.0,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Center(child: Text("Why?",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(imageUrl,
                                style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
                            ),
                          ],
                        ),
                      ),
                    ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}