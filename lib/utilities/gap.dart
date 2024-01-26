import 'package:flutter/cupertino.dart';

abstract class GapH {
  static const tiny = SizedBox(height: 4);
  static const small = SizedBox(height: 8);
  static const mediumSmall = SizedBox(height: 12);
  static const medium = SizedBox(height: 16);
  static const mediumLarge = SizedBox(height: 20);
  static const large = SizedBox(height: 24);
  static const extraLarge = SizedBox(height: 32);
}

abstract class GapW {
  static const tiny = SizedBox(width: 4);
  static const small = SizedBox(width: 8);
  static const mediumSmall = SizedBox(width: 10);
  static const medium = SizedBox(width: 16);
  static const mediumLarge = SizedBox(width: 20);
  static const large = SizedBox(width: 24);
  static const extraLarge = SizedBox(width: 32);
}
