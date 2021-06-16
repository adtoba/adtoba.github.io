import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';

class ContactButton extends StatefulWidget {
  ContactButton({this.text = 'Contact Me !'});

  final String text;
  @override
  _ContactButtonState createState() => _ContactButtonState();
}

class _ContactButtonState extends State<ContactButton>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  Color color = AppColors.lightGreen;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 350))
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.forward ||
                status == AnimationStatus.reverse ||
                status == AnimationStatus.completed) {
              setState(() {
                color = Colors.black;
              });
            } else {
              setState(() {
                color = AppColors.lightGreen;
              });
            }
          });
    animation = Tween<double>(begin: 0, end: 100).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MouseRegion(
        onEnter: (event) {
          controller.forward();
        },
        onExit: (event) {
          controller.reverse();
        },
        child: SizedBox(
          height: Config.yMargin(context, 5),
          width: Config.xMargin(context, 30),
          child: CustomPaint(
            painter: ButtonPainter(progress: animation.value),
            child: Center(
                child: Text(
              widget.text,
              style: TextStyle(
                  color: color, fontFamily: 'Coolvetica', letterSpacing: 3),
            )),
          ),
        ),
      ),
    );
  }
}

class ButtonPainter extends CustomPainter {
  ButtonPainter({this.progress});

  double progress;
  @override
  void paint(Canvas canvas, Size size) {
    Paint rectPaint = Paint()
      ..color = AppColors.lightGreen
      ..strokeCap = StrokeCap.square
      ..style = PaintingStyle.stroke;

    Paint progressPaint = Paint()
      ..color = AppColors.lightGreen
      ..strokeCap = StrokeCap.square
      ..style = PaintingStyle.fill;

    canvas.drawRect(Offset(0, 0) & Size(size.width, size.height), rectPaint);
    canvas.drawRect(
        Offset(0, 0) & Size(size.width * (progress / 100), size.height),
        progressPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
