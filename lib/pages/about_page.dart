import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';

class AboutPage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    var about = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText('Me, Myself & I',
                textStyle: TextStyle(
                    fontSize: Config.xMargin(context, 9),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Coolvetica',
                    letterSpacing: 2,
                    color: AppColors.lightGreen)),
          ],
        ),
        SizedBox(
          height: Config.yMargin(context, 2),
        ),
        Text(
          'I’m a Front-End Developer located in Poland. I have a serious passion for UI effects, animations and creating intuitive, dynamic user experiences.\n\nWell-organised person, problem solver, independent employee with high attention to detail. Fan of MMA, outdoor activities, TV series and English literature. A family person and father of two fractious boys,\n\nInterested in the entire frontend spectrum and working on ambitious projects with positive people.',
          style: TextStyle(
              fontSize: Config.xMargin(context, 3), color: AppColors.white),
        ),
        SizedBox(
          height: Config.yMargin(context, 2),
        ),
        Text(
          'Lets make something special',
          style: TextStyle(
              fontSize: Config.xMargin(context, 3),
              color: AppColors.lightGreen),
        ),
        SizedBox(
          height: Config.yMargin(context, 6),
        ),
      ],
    );

    if (width > 750) {
      return Container(
        width: MediaQuery.of(context).size.width / 2,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(60),
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 7, child: about),
              SizedBox(
                width: Config.xMargin(context, 2),
              ),
              Expanded(child: Container())
            ],
          ),
        ),
      );
    } else {
      return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              about,
            ],
          ),
        ),
      );
    }
  }
}
