import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/theme.dart';
import 'package:gameplay/shared/widgets/box/box_scroll.dart';
import 'package:gameplay/shared/widgets/buttons/select_game.dart';
import 'package:gameplay/shared/widgets/text_input/text_input.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: AppTheme.colors.background,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Container(
                height: 120,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const BackButton(color: Colors.white),
                      SizedBox(
                          width: size.width * 0.65,
                          child: Text(
                            'Agendar Partida',
                            style: AppTheme.fonts.heading,
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppTheme.colors.boxBackground,
                      AppTheme.colors.boxBackgroundGradient,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ))),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.02),
              child: Text('Categoria', style: AppTheme.fonts.textHeading),
            ),
            const BoxScrollWidget(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.02),
              child: Column(
                children: [
                  GameSelectionButton(size: size),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.42,
                        child: TextInputWidget(size: size, text: 'Data'),
                      ),
                      SizedBox(
                        width: size.width * 0.42,
                        
                        child: TextInputWidget(size: size, text: 'Horário'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
