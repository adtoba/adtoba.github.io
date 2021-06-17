import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/buttons/something_special_button.dart';
import 'package:portfolio/components/widgets/projects.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';

class PortfolioPage extends StatelessWidget {
  PortfolioPage({this.onPageChanged});

  final Function(int) onPageChanged;
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
    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText('My Portfolio',
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
                  "A small gallery of projects chosen by me. I've done all of them together "
                  "with amazing people and this is just a small faction compared to the entire list",
                  style: TextStyle(
                      fontSize: Config.xMargin(context, 2.3),
                      color: AppColors.white),
                ),
                SizedBox(
                  height: Config.yMargin(context, 2),
                ),
                SelectSpecialButton(),
                SizedBox(
                  height: Config.yMargin(context, 6),
                ),
                // ContactButton(
                //   text: 'See more !',
                //   onPressed: () {
                //     onPageChanged(3);
                //   },
                // )
              ],
            ),
            SizedBox(height: Config.yMargin(context, 4)),
            Expanded(child: ProjectsList())
          ],
        ));
  }
}
