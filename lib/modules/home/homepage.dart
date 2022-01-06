import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/theme.dart';
import 'package:gameplay/shared/widgets/box/box_scroll.dart';
import 'package:gameplay/shared/widgets/buttons/add_button.dart';
import 'package:gameplay/shared/widgets/card/game_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: AppTheme.colors.background,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(152),
          child: SizedBox(
            height: 150,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppTheme.colors.buttonBackground,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Olá, Mateus",
                                  style: AppTheme.fonts.titleHome),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text("Hoje é dia de vitória!!!",
                                    style: AppTheme.fonts.text),
                              )
                            ]),
                      ),
                    ],
                  ),
                  const AddButton(),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: BoxScrollWidget(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Partidas agendadas',
                        style: AppTheme.fonts.textHeading),
                    Text('Total: 0', style: AppTheme.fonts.text)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Column(
                  children: const [
                    GameCard(
                      date: '07/01/2022',
                      game: 'Valorant',
                      gameImage: 'valorant',
                      players: 3,
                      type: 'Diversão',
                    ),
                    GameCard(
                      date: '08/01/2022',
                      game: 'Overwatch',
                      gameImage: 'overwatch',
                      players: 5,
                      type: 'Ranqueada',
                    ),
                    GameCard(
                      date: '18/01/2022',
                      game: 'Fortnite',
                      gameImage: 'fortnite',
                      players: 4,
                      type: 'fortnite',
                    ),
                    GameCard(
                      date: '10/01/2022',
                      game: 'League of Legends',
                      gameImage: 'lol',
                      players: 5,
                      type: 'Treinamento',
                    ),
                    GameCard(
                      date: '10/01/2022',
                      game: 'Dead by day light',
                      gameImage: 'dead',
                      players: 6,
                      type: 'Diversão',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
