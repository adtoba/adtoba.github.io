import 'package:flutter/material.dart';
import 'package:portfolio/components/app/contact_widget.dart';
import 'package:portfolio/components/app/logo.dart';
import 'package:portfolio/components/app/text.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar({this.onPageChanged, this.index});

  final Function(int) onPageChanged;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Config.xMargin(context, 15),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(
              vertical: Config.yMargin(context, 4),
            ),
            alignment: Alignment.center,
            child: NameLogo(),
          ),
          PText(
            text: '',
          ),
          Divider(),
          PText(
            text: 'Home',
            onPressed: () => onPageChanged(0),
            indicatorColor: index == 0 ? AppColors.lightGreen : null,
          ),
          Divider(),
          PText(
            text: 'About',
            onPressed: () => onPageChanged(1),
            indicatorColor: index == 1 ? AppColors.lightGreen : null,
          ),
          Divider(),
          PText(
            text: 'My Skills',
            onPressed: () => onPageChanged(2),
            indicatorColor: index == 2 ? AppColors.lightGreen : null,
          ),
          Divider(),
          PText(
            text: 'Work',
            onPressed: () => onPageChanged(3),
            indicatorColor: index == 3 ? AppColors.lightGreen : null,
          ),
          Divider(),
          PText(
            text: 'Contact',
            onPressed: () => onPageChanged(4),
            indicatorColor: index == 4 ? AppColors.lightGreen : null,
          ),
          Divider(),
          SizedBox(height: Config.yMargin(context, 2)),
          ContactWidget()
        ],
      ),
      color: AppColors.navColor,
    );
  }
}
