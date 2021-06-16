import 'package:flutter/material.dart';

class TabButton extends StatefulWidget {
  TabButton({this.text, this.bgColor});

  final String text;
  final Color bgColor;

  @override
  _TabButtonState createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
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
        child: Text(
          widget.text ?? '',
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: widget.bgColor ?? color,
        ),
      ),
    );
  }
}
