import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/buttons/contact_button.dart';
import 'package:portfolio/components/inputs/textfield.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
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

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    var contactForm = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText('Contact me ',
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
          "I\'m interested and open to freelance opportunities and gigs. "
          "However, if you have other request or question, don\'t hesistate to use the form.",
          style: TextStyle(
              fontSize: Config.xMargin(context, 3), color: AppColors.white),
        ),
        SizedBox(
          height: Config.yMargin(context, 6),
        ),
        width > 750
            ? Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: PTextField(
                          controller: nameController,
                          hint: 'Name',
                        ),
                      ),
                      SizedBox(
                        width: Config.xMargin(context, 3),
                      ),
                      Expanded(
                        child: PTextField(
                          controller: subjectController,
                          hint: 'Subject',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 3),
                  ),
                  PTextField(
                    controller: messageController,
                    hint: 'Message',
                    maxLines: 10,
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 3),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ContactButton(
                        text: 'Send Message !', onPressed: () => sendMail()),
                  )
                ],
              )
            : Column(
                children: [
                  PTextField(
                    controller: nameController,
                    hint: 'Name',
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 3),
                  ),
                  PTextField(
                    controller: subjectController,
                    hint: 'Subject',
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 3),
                  ),
                  PTextField(
                    controller: messageController,
                    hint: 'Message',
                    maxLines: 10,
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 3),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ContactButton(
                      text: 'Send Message !',
                      onPressed: () => sendMail(),
                    ),
                  )
                ],
              )
      ],
    );

    var level = Container(
      padding: EdgeInsets.symmetric(horizontal: Config.xMargin(context, 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
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
              Expanded(flex: 2, child: contactForm),
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
              contactForm,
            ],
          ),
        ),
      );
    }
  }

  void sendMail() async {
    var repo =
        "mailto:adetoba53@gmail.com?subject=${subjectController.text}&body=${messageController.text}";

    if (await canLaunch(repo)) {
      launch(repo);
    }
  }
}
