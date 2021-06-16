import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/buttons/contact_button.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';

class PortfolioPage extends StatelessWidget {
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
    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(30),
        child: Column(
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
                      fontSize: Config.xMargin(context, 3),
                      color: AppColors.white),
                ),
                SizedBox(
                  height: Config.yMargin(context, 2),
                ),
                Text(
                  'Lets make something special',
                  style: TextStyle(
                      fontSize: Config.xMargin(context, 2.2),
                      color: AppColors.lightGreen),
                ),
                SizedBox(
                  height: Config.yMargin(context, 6),
                ),
                ContactButton(
                  text: 'See more !',
                )
              ],
            ),
            SizedBox(height: Config.yMargin(context, 5)),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: width > 750 ? 4 : 2,
                      mainAxisSpacing: Config.yMargin(context, 2),
                      crossAxisSpacing: Config.yMargin(context, 2)),
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.green,
                    );
                  }),
            )
          ],
        ));
  }
}
