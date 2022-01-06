import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/theme.dart';
import 'package:gameplay/shared/widgets/buttons/discord_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.colors.background,
              AppTheme.colors.backgroundGradient,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              width: size.width, height: size.height * 0.025),
          SizedBox(
              width: size.width,
              child: Image.asset(
                'assets/src/illustration.png',
                fit: BoxFit.fill,  
              ),
              ),
          Text(
            'Conecte-se \ne organize suas jogatinas',
            style: AppTheme.fonts.title,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
            child: Text(
              'Crie grupos para jogar seus games\nfavoritos com seus amigos',
              style: AppTheme.fonts.subtitle,
              textAlign: TextAlign.center,
            ),
          ),
          const DiscordLoginButton(),
           SizedBox(
              width: size.width, height: size.height * 0.05)
        ]),
      ),
    );
  }
}
