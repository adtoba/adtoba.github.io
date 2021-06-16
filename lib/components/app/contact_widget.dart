import 'package:flutter/foundation.dart' show kIsWeb;
// ignore: avoid_web_libraries_in_flutter
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/config.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: () async {
              var repo = "https://www.twitter.com/tobacodes";
              if (await canLaunch(repo)) {
                launch(repo);
              }
            },
            icon: SvgPicture.asset(
              'assets/icons/twitter.svg',
              height: Config.yMargin(context, 2),
              width: Config.xMargin(context, 2),
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: Config.xMargin(context, 1.5),
          ),
          IconButton(
            onPressed: () async {
              var repo = "https://www.github.com/adtoba";
              if (await canLaunch(repo)) {
                launch(repo);
              }
            },
            icon: SvgPicture.asset(
              'assets/icons/github.svg',
              height: Config.yMargin(context, 2),
              width: Config.xMargin(context, 2),
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: Config.xMargin(context, 1.5),
          ),
          IconButton(
            onPressed: () async {
              var repo = "https://wa.me/+2348179477272";
              if (await canLaunch(repo)) {
                launch(repo);
              }
            },
            icon: SvgPicture.asset(
              'assets/icons/whatsapp.svg',
              height: Config.yMargin(context, 2),
              width: Config.xMargin(context, 2),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
