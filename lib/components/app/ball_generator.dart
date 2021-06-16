import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolio/style/colors.dart';

const MaterialColor primaryAccent = MaterialColor(
  0xFF121212,
  <int, Color>{
    50: Color(0xFFf7f7f7),
    100: Color(0xFFeeeeee),
    200: Color(0xFFe2e2e2),
    300: Color(0xFFd0d0d0),
    400: Color(0xFFababab),
    500: Color(0xFF8a8a8a),
    600: Color(0xFF636363),
    700: Color(0xFF505050),
    800: Color(0xFF323232),
    900: Color(0xFF121212),
  },
);

class BallGenerator extends StatefulWidget {
  const BallGenerator({Key key}) : super(key: key);

  @override
  _BallGeneratorState createState() => _BallGeneratorState();
}

class _BallGeneratorState extends State<BallGenerator>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BallsWidget(vsync: this);
  }
}

class BallsWidget extends LeafRenderObjectWidget {
  const BallsWidget({
    Key key,
    @required this.vsync,
  }) : super(key: key);

  final TickerProvider vsync;

  @override
  RenderBalls createRenderObject(BuildContext context) {
    return RenderBalls(vsync: vsync);
  }
}

class RenderBalls extends RenderProxyBox {
  RenderBalls({
    @required this.vsync,
  });

  final TickerProvider vsync;

  int _elapsedTimeInMicroSeconds = 0;

  Ticker _ticker;

  final _colors = [
    AppColors.lightGreen,
    AppColors.white,
    Color(0xFF2266AA),
    Color(0xFFCC6666),
  ];

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    _ticker = vsync.createTicker((Duration elapsed) {
      _elapsedTimeInMicroSeconds = elapsed.inMicroseconds;
      markNeedsPaint();
    });
    _ticker.start();
  }

  @override
  void detach() {
    _ticker.stop();
    _ticker.dispose();
    super.detach();
  }

  void restartTicker() {
    if (_ticker.isActive) {
      _ticker.stop();
    }
    _ticker.start();
  }

  int maxTimeTaken;
  List<Ball> balls;

  @override
  void performLayout() {
    final _size = constraints.loosen().biggest;
    if (_size == (hasSize ? size : 0.0)) {
      return;
    }
    balls = [];
    size = _size;
    const minDelay = 0.0;
    const maxDelay = 5.0;
    const minVelocity = .25;
    const maxVelocity = 1.0;
    // const minPixelsPerSecond = minVelocity * 60;
    // maxTimeTaken = ((size.height * 2 / minPixelsPerSecond) + maxDelay).ceil();

    for (int i = 0; i < 500; i++) {
      final radius = random(5.0, 15.0);
      final x = random(radius, size.width - radius);
      final dy = random(minVelocity, maxVelocity);
      balls.add(Ball(
        origin: Offset(x, -radius * 2),
        end: Offset(size.width - radius, size.height - radius),
        velocity: Offset(0, dy),
        delay: random(minDelay, maxDelay),
        radius: radius,
        color: _colors[i % _colors.length],
      ));
    }
  }

  @override
  void paint(PaintingContext context, ui.Offset offset) {
    for (int i = 0; i < balls.length; i++) {
      final ball = balls[i]..tick(_elapsedTimeInMicroSeconds);
      drawBall(context.canvas, ball, offset);
    }
  }

  void drawBall(Canvas canvas, Ball ball, Offset offset) {
    canvas.drawCircle(
        offset + ball.position, ball.radius, Paint()..color = ball.color);
  }
}

class Ball {
  Ball({
    @required this.origin,
    @required this.end,
    @required this.velocity,
    @required this.radius,
    @required this.delay,
    @required this.color,
  })  : position = origin,
        acceleration = Offset.zero,
        gravity = Offset(0, .25),
        friction = .98;

  final Offset origin;
  final Offset end;
  final Offset velocity;
  final double radius;
  final double delay;
  final double friction;
  final Offset gravity;
  final Color color;

  Offset acceleration;
  Offset position;

  void drop() {
    if (position.dy >= end.dy) {
      acceleration = -acceleration * friction;
    }

    acceleration += velocity + gravity;
    position += acceleration;

    position = Offset(
      position.dx.between(origin.dx, end.dx),
      position.dy.between(origin.dy, end.dy),
    );
  }

  double startTimeInSeconds;

  void tick(int elapsedTimeInMicroSeconds) {
    final elapsedTimeInSeconds =
        elapsedTimeInMicroSeconds / Duration.microsecondsPerSecond;
    startTimeInSeconds ??= elapsedTimeInSeconds;
    if ((elapsedTimeInSeconds - startTimeInSeconds) >= delay) {
      drop();
    }
  }
}

extension on num {
  double between(double min, double max) {
    return math.max(math.min(max, this.toDouble()), min);
  }
}

double random(double min, double max) {
  return (math.Random().nextDouble() * max).between(min, max);
}
