import 'dart:math' as math;

(int, int) calcScale({
  required double srcWidth,
  required double srcHeight,
  required double minWidth,
  required double minHeight,
}) {
  var scaleW = srcWidth / minWidth;
  var scaleH = srcHeight / minHeight;
  var scale = math.max(1.0, math.min(scaleW, scaleH));

  final width = srcWidth ~/ scale;
  final height = srcHeight ~/ scale;
  return (width, height);
}
