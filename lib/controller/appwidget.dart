import 'package:gameplay/modules/login/login_page.dart';
import 'package:gameplay/modules/splash/splashpage.dart';
import 'package:gameplay/modules/home/homepage.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget{
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GamePlay",
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/login": (context) => const LoginPage(),
        "/homepage": (context) => const Homepage(),
      }
    );
  }

}