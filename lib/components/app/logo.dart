import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';

class NameLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    final colorizeTextStyle = TextStyle(
        fontSize: Config.xMargin(context, 10),
        height: 1,
        fontFamily: 'Coolvetica');

    return Column(
      children: [
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            ColorizeAnimatedText(
              'A',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          isRepeatingAnimation: true,
          onTap: () {
            print("Tap Event");
          },
        ),
        Text(
          'Adetoba',
          style: TextStyle(
              fontSize: Config.xMargin(context, 2), color: Colors.white),
        ),
        SizedBox(height: Config.yMargin(context, 2)),
        Text(
          'Flutter developer',
          style: TextStyle(
              fontSize: Config.xMargin(context, 1.2),
              color: AppColors.darkGreyText),
        ),
      ],
    );
  }
}
