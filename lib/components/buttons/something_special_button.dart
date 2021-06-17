import 'package:flutter/foundation.dart' show kIsWeb;
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';
import 'package:url_launcher/url_launcher.dart';

class SelectSpecialButton extends StatelessWidget {
  const SelectSpecialButton({Key key, this.onPressed}) : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        var repo = "mailto:adetoba53@gmail.com";
        if (await canLaunch(repo)) {
          launch(repo);
        }
      },
      child: Text(
        'Lets make something special',
        style: TextStyle(
            fontSize: Config.xMargin(context, 2.3),
            color: AppColors.lightGreen),
      ),
    );
  }
}
