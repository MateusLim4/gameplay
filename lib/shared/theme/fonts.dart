import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme.dart';

abstract class IAppFonts{
  get title;
  get subtitle;
  get buttonText;
  get text;
  get textWhite;
  get textHeading;
  get textHint;
  get titleHome;
  get subtitleHome;
  get titleBox;
  get heading;
}

class AppFonts implements IAppFonts{
  @override
  TextStyle get title => GoogleFonts.rajdhani(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: AppTheme.colors.textColor
  );
  @override
  TextStyle get subtitle => GoogleFonts.rajdhani(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppTheme.colors.textColor
  );
  @override
  TextStyle get heading => GoogleFonts.rajdhani(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppTheme.colors.textColor
  );
  @override
  TextStyle get titleBox => GoogleFonts.rajdhani(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: AppTheme.colors.textColor
  );
  @override
  TextStyle get titleHome => GoogleFonts.rajdhani(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppTheme.colors.textColor
  );
  @override
  TextStyle get subtitleHome => GoogleFonts.inter(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    color: AppTheme.colors.thinTextColor
  );
  @override
  TextStyle get buttonText => GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: AppTheme.colors.textColor
  );
  @override
  TextStyle get text => GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    color: AppTheme.colors.thinTextColor
  );
  @override
  TextStyle get textWhite => GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    color: AppTheme.colors.white
  );
  @override
  TextStyle get textHeading => GoogleFonts.rajdhani(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppTheme.colors.textColor
  );
  @override
  TextStyle get textHint => GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    color: AppTheme.colors.hintText
  );
}