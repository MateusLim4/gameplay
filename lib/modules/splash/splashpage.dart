import 'package:gameplay/shared/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget{
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacementNamed(context, '/login');
    });
    return  Container(color: AppTheme.colors.splashBackground,
      child: Image.asset('assets/logo/icon.png',),
    ); 
  }
}