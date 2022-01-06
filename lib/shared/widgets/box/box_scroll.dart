import 'package:flutter/material.dart';

import 'box.dart';

class BoxScrollWidget extends StatelessWidget {
  const BoxScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: const [
                  SizedBox(width: 18),
                  BoxWidget(
                    image: 'ranked',
                    text: 'Ranqueada',
                  ),
                  BoxWidget(
                    image: 'duel',
                    text: 'Duelo 1x1',
                  ),
                  BoxWidget(
                    image: 'fun',
                    text: 'Diversão',
                  ),
                  BoxWidget(
                    image: 'training',
                    text: 'Treinamento',
                  ),
                  SizedBox(width: 18),
                ],),);
  }
}