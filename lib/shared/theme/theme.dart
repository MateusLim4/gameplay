import 'colors.dart';
import 'fonts.dart';

class AppTheme{
  static AppTheme instance = AppTheme();

  final _colors = AppColors();
  static get colors => instance._colors; 

  final _fonts = AppFonts();
  static get fonts => instance._fonts;
}