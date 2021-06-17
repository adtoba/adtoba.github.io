// ignore: avoid_web_libraries_in_flutter
// import 'dart:html' as html;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/buttons/contact_button.dart';
import 'package:portfolio/pages/my_portfolio.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  Home({this.onPageChanged});

  final Function(int) onPageChanged;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;

  PageController _controller;

  final colors = [
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.yellowAccent,
    Colors.tealAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
  ];

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: false,
      controller: _controller,
      scrollDirection: Axis.vertical,
      allowImplicitScrolling: false,
      clipBehavior: Clip.antiAlias,
      onPageChanged: (int index) {
        setState(() {
          pageIndex = index;
        });
      },
      children: [
        Stack(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(60),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hi,',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Config.xMargin(context, 11),
                            fontFamily: 'Coolvetica',
                            letterSpacing: 2,
                            color: Colors.white),
                      ),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          ColorizeAnimatedText('I\'m Adetoba, ',
                              colors: colors,
                              textStyle: TextStyle(
                                  fontSize: Config.xMargin(context, 11),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Coolvetica',
                                  letterSpacing: 2,
                                  color: Colors.white)),
                        ],
                      ),
                      Text(
                        'Software developer',
                        style: TextStyle(
                            fontSize: Config.xMargin(context, 11),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontFamily: 'Coolvetica',
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: Config.yMargin(context, 1),
                      ),
                      Text(
                        'Mobile developer / Intermediate Flutter developer',
                        style: TextStyle(
                            fontSize: Config.xMargin(context, 2.3),
                            color: AppColors.darkGreyText),
                      ),
                      SizedBox(
                        height: Config.yMargin(context, 6),
                      ),
                      ContactButton(onPressed: () async {
                        var repo = "mailto:adetoba53@gmail.com";

                        if (await canLaunch(repo)) {
                          launch(repo);
                        }
                      })
                    ],
                  ),
                )),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        WavyAnimatedText('Scroll down',
                            textStyle: TextStyle(
                                fontSize: Config.xMargin(context, 2),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(height: Config.yMargin(context, 1)),
                  Icon(Icons.arrow_downward)
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Column(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        WavyAnimatedText('Scroll down',
                            textStyle: TextStyle(
                                fontSize: Config.xMargin(context, 2),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(height: Config.yMargin(context, 1)),
                  Icon(Icons.arrow_downward)
                ],
              ),
            )
          ],
        ),
        PortfolioPage(onPageChanged: widget.onPageChanged)
      ],
    );
  }
}
