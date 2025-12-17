import 'dart:ui';

class Breakpoints {
  static const double mobile = 600;
  static const double tablet = 1024;
  static const double desktop = 1440;

  static Size get _size {
    final view = PlatformDispatcher.instance.views.first;
    return view.physicalSize / view.devicePixelRatio;
  }

  static double get width => _size.width;
  static double get height => _size.height;

  static bool get isMobile => width < mobile;
  static bool get isTablet => width >= mobile && width < tablet;
  static bool get isDesktop => width >= desktop;
}
