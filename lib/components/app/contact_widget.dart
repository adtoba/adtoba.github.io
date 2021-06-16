import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/config.dart';

class ContactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisSize: MainAxisSize.max,
        children: [
          SvgPicture.asset(
            'assets/icons/twitter.svg',
            height: Config.yMargin(context, 2),
            width: Config.xMargin(context, 2),
            color: Colors.white,
          ),
          SizedBox(
            width: Config.xMargin(context, 1.5),
          ),
          SvgPicture.asset(
            'assets/icons/github.svg',
            height: Config.yMargin(context, 2),
            width: Config.xMargin(context, 2),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
