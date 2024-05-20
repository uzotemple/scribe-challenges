import 'package:flutter/material.dart';

class CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(this);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;

  _CustomPainter(this.decoration);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = Offset(
      offset.dx,
      offset.dy + configuration.size!.height - 5, // Adjust vertical position
    ) &
    Size(
      configuration.size!.width,
      4, // Adjust the thickness of the indicator
    );

    final Paint paint = Paint();
    paint.color = Color(0xFFFBD13B); // Adjust color as needed
    paint.style = PaintingStyle.fill;
    canvas.drawRect(rect, paint); // Adjust borderRadius as needed
  }
}
