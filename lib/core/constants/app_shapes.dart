import 'package:flutter/widgets.dart';

class AppShapes {
  static RoundedRectangleBorder get bottom20 => RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
    ),
  );
}
