import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/theme.dart';

class DiscordLoginButton extends StatelessWidget {
  const DiscordLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/homepage');
      },
      child: Container(
        height: size.height * 0.075,
        width: size.width * 0.75,
        decoration: BoxDecoration(
          color: AppTheme.colors.buttonBackground,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppTheme.colors.buttonStroke),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
            height: size.height,
            width: size.width * 0.08,
            child: Image.asset('assets/images/discord.png'),
          ),
          Container(
              height: size.height,
              width: 1.5,
              color: AppTheme.colors.buttonStroke),
          Text('Entrar com o Discord', style: AppTheme.fonts.buttonText),
        ]),
      ),
    );
  }
}
