import 'package:flutter/material.dart';
import 'package:portfolio/style/input_style.dart';

class RoundButton extends StatefulWidget {
  RoundButton({this.text, this.bgColor});

  final String text;
  final Color bgColor;

  @override
  _RoundButtonState createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (value) {
        setState(() {
          color = Colors.blue;
        });
      },
      onExit: (value) {
        setState(() {
          color = Colors.transparent;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.email, color: Colors.white),
            SizedBox(width: 20),
            Text(
              widget.text ?? '',
              style: AppInputStyles.headingStyle,
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: widget.bgColor ?? color,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white)),
      ),
    );
  }
}
