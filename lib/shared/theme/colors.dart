import 'package:flutter/widgets.dart';

abstract class IAppColors{
  get buttonBackground;
  get buttonStroke;
  get textColor;
  get boxBackground;
  get boxStroke;
  get splashBackground;
  get white;
  get thinTextColor;
  get background;
  get backgroundGradient;
  get boxBackgroundGradient;
}

class AppColors implements IAppColors{
  @override
  Color get buttonBackground => const Color(0xFFE51C44);
  @override
  Color get buttonStroke => const Color(0xFF991F36);
  @override
  Color get textColor => const Color(0xFFDDE3F0);
  @override
  Color get boxBackground => const Color(0xFF1D2766);
  @override
  Color get boxStroke => const Color(0xFF243189);
  @override
  Color get splashBackground => const Color(0xFF070B24);
  @override
  Color get white => const Color(0xFFFFFFFF);
  @override
  Color get thinTextColor => const Color(0xFF7C89A3);
  @override
  Color get background => const Color(0xFF0E1545);
  @override
  Color get backgroundGradient => const Color(0xFF0B1034);
  @override
  Color get boxBackgroundGradient => const Color(0xFF171F52);
}