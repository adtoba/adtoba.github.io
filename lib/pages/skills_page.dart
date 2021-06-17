import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/buttons/something_special_button.dart';
import 'package:portfolio/components/indicators/skill_progress_painter.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';

class SkillsPage extends StatelessWidget {
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

    var skills = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText('Skills & ',
                textStyle: TextStyle(
                    fontSize: Config.xMargin(context, 9),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Coolvetica',
                    letterSpacing: 2,
                    color: AppColors.lightGreen)),
          ],
        ),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText('Experience',
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
          "Since beginning my journey as a developer nearly 5 years ago, I\'ve"
          " done remote work for agencies and collaborated with talented people "
          "to create products for personal or business use.\n\n"
          "The main area of my expertise is Mobile development, Java, Kotlin, "
          "Flutter, animations and coding interactive layouts.\n\n"
          "I also have experience working with node.js and springboot for backend development.",
          style: TextStyle(
              fontSize: Config.xMargin(context, 2.3), color: AppColors.white),
        ),
        SizedBox(
          height: Config.yMargin(context, 2),
        ),
        SelectSpecialButton(),
        SizedBox(
          height: Config.yMargin(context, 6),
        ),
      ],
    );

    var level = Container(
      padding: EdgeInsets.symmetric(horizontal: Config.xMargin(context, 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Level of expertise in flutter
          Text('Flutter',
              style: TextStyle(
                  fontSize: Config.xMargin(context, 3),
                  fontFamily: 'Coolvetica')),
          SizedBox(height: Config.yMargin(context, 1.5)),
          CustomPaint(
            painter: SkillProgress(color: AppColors.lightGreen, progress: 80),
            size: Size(double.infinity, 2),
          ),
          SizedBox(height: Config.yMargin(context, 2)),

          // Level of expertise in Java
          Text('Java',
              style: TextStyle(
                  fontSize: Config.xMargin(context, 3),
                  fontFamily: 'Coolvetica')),
          SizedBox(height: Config.yMargin(context, 1.5)),
          CustomPaint(
            painter: SkillProgress(color: AppColors.lightGreen, progress: 50),
            size: Size(double.infinity, 2),
          ),
          SizedBox(height: Config.yMargin(context, 2)),

          // Level of expertise in Kotlin
          Text('Kotlin',
              style: TextStyle(
                  fontSize: Config.xMargin(context, 3),
                  fontFamily: 'Coolvetica')),
          SizedBox(height: Config.yMargin(context, 1.5)),
          CustomPaint(
            painter: SkillProgress(color: Colors.red, progress: 60),
            size: Size(double.infinity, 2),
          ),
          SizedBox(height: Config.yMargin(context, 2)),

          // Level of expertise in Swift
          Text('Swift',
              style: TextStyle(
                  fontSize: Config.xMargin(context, 3),
                  fontFamily: 'Coolvetica')),
          SizedBox(height: Config.yMargin(context, 1.5)),
          CustomPaint(
            painter: SkillProgress(color: Colors.pink, progress: 20),
            size: Size(double.infinity, 2),
          )
        ],
      ),
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
              Expanded(flex: 2, child: skills),
              SizedBox(
                width: Config.xMargin(context, 2),
              ),
              Expanded(child: level)
            ],
          ),
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              skills,
              SizedBox(
                height: Config.yMargin(context, 5),
              ),
              level
            ],
          ),
        ),
      );
    }
  }
}
