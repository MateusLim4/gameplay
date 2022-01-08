import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/theme.dart';

class GameCard extends StatelessWidget {
  final String gameImage;
  final String game;
  final String type;
  final String date;
  final int players;
  const GameCard({Key? key, required this.gameImage, required this.game, required this.type, required this.players, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              width: size.width * 0.18,
              child:
                  Image.asset('assets/images/$gameImage.png', fit: BoxFit.cover)),
          SizedBox(width: size.width * 0.06),
          Container(
            width: size.width * 0.66,
            height: size.height * 0.12,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: AppTheme.colors.boxStroke))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Gameplay Elevada', style: AppTheme.fonts.textHeading),
                    SizedBox(
                        width: size.width * 0.33,
                        child: Text(game,
                            style: AppTheme.fonts.text,
                            textAlign: TextAlign.start)),
                    SizedBox(
                      width: size.width * 0.33,
                      child: Row(children: [
                        SizedBox(
                            width: size.width * 0.05,
                            child: Image.asset('assets/images/calendar.png')),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(date,
                              style: AppTheme.fonts.textWhite),
                        )
                      ]),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(type, style: AppTheme.fonts.text),
                    const SizedBox(),
                    Row(children: [
                      SizedBox(
                          width: size.width * 0.05,
                          child: Icon(Icons.person,
                              color: AppTheme.colors.buttonBackground)),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('$players', style: AppTheme.fonts.textWhite),
                      )
                    ])
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
