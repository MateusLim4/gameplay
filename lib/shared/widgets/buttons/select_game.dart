import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/theme.dart';
import 'package:gameplay/shared/widgets/modals/bottom_modal.dart';

class GameSelectionButton extends StatelessWidget {
  const GameSelectionButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(context: context,
         builder:(BuildContext context){
          return const BottomModal();
        });
      },
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppTheme.colors.boxStroke),
              borderRadius: BorderRadius.circular(8)),
          height: size.height * 0.1,
          width: size.width * 0.9,
          child: Row(
            children: [
              Container(
          height: double.infinity,
          width: size.width * 0.2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
      AppTheme.colors.boxBackground,
      AppTheme.colors.boxBackgroundGradient,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: null,
      ),
              SizedBox(width: size.height * 0.05),
              Text('Selecione um Jogo  >', style: AppTheme.fonts.textHeading)
            ],
          )),
    );
  }
}