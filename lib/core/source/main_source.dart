import 'package:flutter/widgets.dart';

abstract class MainSources {
  static ValueNotifier<int> currentPage = ValueNotifier(0);
  static ScrollController scrollController = ScrollController();
  static ValueNotifier<bool> isScrolled = ValueNotifier(false);
}
