import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

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

class BalloonGenerator extends StatefulWidget {
  const BalloonGenerator({
    Key key,
    @required this.width,
    @required this.count,
    @required this.colors,
  }) : super(key: key);

  final double width;
  final double count;
  final List<Color> colors;

  @override
  _BalloonGeneratorState createState() => _BalloonGeneratorState();
}

class _BalloonGeneratorState extends State<BalloonGenerator>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BalloonsWidget(
        width: widget.width,
        vsync: this,
        count: widget.count,
        colors: widget.colors);
  }
}

class BalloonsWidget extends LeafRenderObjectWidget {
  const BalloonsWidget({
    Key key,
    @required this.width,
    @required this.count,
    @required this.colors,
    @required this.vsync,
  }) : super(key: key);

  final double width;
  final double count;
  final List<Color> colors;
  final TickerProvider vsync;

  @override
  RenderBalloons createRenderObject(BuildContext context) {
    return RenderBalloons(
        width: width, count: count, colors: colors, vsync: vsync);
  }

  @override
  void updateRenderObject(BuildContext context, RenderBalloons renderObject) {
    renderObject
      ..balloonWidth = width
      ..count = count
      ..colors = colors;
  }
}

class RenderBalloons extends RenderProxyBox {
  RenderBalloons({
    @required this.vsync,
    double width,
    double count,
    List<Color> colors,
  })  : _balloonWidth = width,
        _count = count,
        _colors = colors;

  static const _travelTimeInSeconds = 5.0;

  final TickerProvider vsync;

  final List<BalloonData> _balloons = [];

  double _balloonWidth;

  double get balloonWidth => _balloonWidth;

  set balloonWidth(double width) {
    if (width == _balloonWidth) {
      return;
    }
    _balloonWidth = width;
    markNeedsPaint();
  }

  double get balloonHeight => balloonWidth * 1.333333;

  double _count;

  double get count => _count;

  set count(double count) {
    if (count == _count) {
      return;
    }
    _count = count;
    markNeedsLayout();
    markNeedsPaint();
  }

  List<Color> _colors;

  List<Color> get colors => _colors;

  set colors(List<Color> colors) {
    if (colors == _colors) {
      return;
    }
    _colors = colors;
    markNeedsLayout();
    markNeedsPaint();
  }

  double _maxVerticalOffset = 0;

  int _elapsedTimeInMicroSeconds = 0;

  int _maxDurationInSeconds = 0;

  Ticker _ticker;

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    _ticker = vsync.createTicker((Duration elapsed) {
      if (elapsed.inSeconds >= _maxDurationInSeconds) {
        _ticker.stop(canceled: true);
        return;
      }
      _elapsedTimeInMicroSeconds = elapsed.inMicroseconds;
      markNeedsPaint();
    });
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

  @override
  void performLayout() {
    size = constraints.loosen().biggest;

    final speed = size.height / _travelTimeInSeconds;

    Offset off = Offset(randomDouble(size.width - balloonWidth), size.height);
    for (int i = 0; i < count; i++) {
      _balloons.add(BalloonData(
        offset: off,
        color: colors[i % colors.length],
        travelTimeInSeconds: off.dy / speed,
      ));

      final newOffset = Offset(randomDouble(size.width - balloonWidth),
          off.dy + randomDouble(size.height / 8));

      _maxVerticalOffset = math.max(off.dy, newOffset.dy);

      off = newOffset;
    }

    _maxDurationInSeconds = (_maxVerticalOffset / speed).ceil();
    restartTicker();
  }

  @override
  void paint(PaintingContext context, ui.Offset offset) {
    final interpolator = interpolate(
      inputMax:
          _maxDurationInSeconds.toDouble() * Duration.microsecondsPerSecond,
      outputMax: _maxVerticalOffset + balloonHeight,
    );
    for (int i = 0; i < count; i++) {
      final balloon = _balloons[i];
      final diffInTime = _elapsedTimeInMicroSeconds
          .toDouble()
          // Variant: Fixes balloons to the top
          .clamp(0.0,
              balloon.travelTimeInSeconds * Duration.microsecondsPerSecond);
      drawBalloon(
        context.canvas,
        balloon.offset - Offset(0, interpolator(diffInTime)),
        balloon.color,
      );
    }
  }

  void drawBalloon(Canvas canvas, Offset offset, Color color) {
    final size = Size(balloonWidth, balloonHeight);
    const ropeRadius = .5;
    const divisions = [6, 9];
    final seg = Offset(size.width / divisions[0], size.height / divisions[1]);
    final midX = seg.dx * divisions[0] / 2;
    final path = Path()
      ..moveTo(midX, 0)
      ..cubicTo(seg.dx * 2, 0, seg.dx, seg.dy, seg.dx, seg.dy * 3)
      ..cubicTo(seg.dx, seg.dy * 5.5, midX, seg.dy * 5.15, midX - ropeRadius,
          seg.dy * 6)
      ..lineTo(midX - ropeRadius, seg.dy * divisions[1])
      ..lineTo(midX + ropeRadius, seg.dy * divisions[1])
      ..lineTo(midX + ropeRadius, seg.dy * 6)
      ..cubicTo(
          midX, seg.dy * 5.15, seg.dx * 5, seg.dy * 5.5, seg.dx * 5, seg.dy * 3)
      ..cubicTo(seg.dx * 5, seg.dy, seg.dx * 4, 0, midX, 0)
      ..close();
    canvas.drawPath(Path()..addPath(path, offset), Paint()..color = color);

    canvas.drawOval(
      (offset + Offset(seg.dx * 3.75, seg.dy)) & size / 14,
      Paint()..color = Color(0x66FFFFFF),
    );
  }
}

class BalloonData {
  const BalloonData({
    @required this.offset,
    @required this.color,
    @required this.travelTimeInSeconds,
  });

  final Offset offset;
  final Color color;
  final double travelTimeInSeconds;

  @override
  String toString() {
    return 'BalloonData{offset: $offset, color: $color, travelTimeInSeconds: $travelTimeInSeconds}';
  }
}

double randomDouble(double max) => math.Random().nextDouble() * max;

// https://stackoverflow.com/a/55088673/8236404
double Function(double input) interpolate({
  double inputMin = 0,
  double inputMax = 1,
  double outputMin = 0,
  double outputMax = 1,
}) {
  //range check
  if (inputMin == inputMax) {
    print("Warning: Zero input range");
    return null;
  }

  if (outputMin == outputMax) {
    print("Warning: Zero output range");
    return null;
  }

  //check reversed input range
  var reverseInput = false;
  final oldMin = math.min(inputMin, inputMax);
  final oldMax = math.max(inputMin, inputMax);
  if (oldMin != inputMin) {
    reverseInput = true;
  }

  //check reversed output range
  var reverseOutput = false;
  final newMin = math.min(outputMin, outputMax);
  final newMax = math.max(outputMin, outputMax);
  if (newMin != outputMin) {
    reverseOutput = true;
  }

  // Hot-rod the most common case.
  if (!reverseInput && !reverseOutput) {
    final dNew = newMax - newMin;
    final dOld = oldMax - oldMin;
    return (double x) {
      return ((x - oldMin) * dNew / dOld) + newMin;
    };
  }

  return (double x) {
    double portion;
    if (reverseInput) {
      portion = (oldMax - x) * (newMax - newMin) / (oldMax - oldMin);
    } else {
      portion = (x - oldMin) * (newMax - newMin) / (oldMax - oldMin);
    }
    double result;
    if (reverseOutput) {
      result = newMax - portion;
    } else {
      result = portion + newMin;
    }

    return result;
  };
}
