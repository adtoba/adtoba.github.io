import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';

class PText extends StatefulWidget {
  PText({this.text, this.onPressed, this.indicatorColor});

  final String text;
  final Function onPressed;
  final Color indicatorColor;

  @override
  _PTextState createState() => _PTextState();
}

class _PTextState extends State<PText> {
  Color color = AppColors.darkGreyText;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          color = AppColors.lightGreen;
        });
      },
      onExit: (event) {
        setState(() {
          color = AppColors.darkGreyText;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: widget.onPressed,
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: Config.xMargin(context, 2),
                color: widget.indicatorColor ?? color,
                fontWeight: FontWeight.w100),
          ),
        ),
      ),
    );
  }
}
