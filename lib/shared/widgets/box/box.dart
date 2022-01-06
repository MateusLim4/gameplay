import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/theme.dart';

class BoxWidget extends StatelessWidget {
  final String text;
  final String image;
  const BoxWidget({Key? key,required this.text,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 3.5, right: 3.5),
      child: Container(
        height: size.height * 0.15,
        width: size.width * 0.3,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.colors.boxBackground,
              AppTheme.colors.boxBackgroundGradient,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppTheme.colors.boxStroke)
        ),
        child: Column(children: [
          Image.asset('assets/images/$image.png', height: size.height * 0.1,
            width: size.width * 0.1,),
          Text(text,style: AppTheme.fonts.titleBox)
        ],),
      ),
    );
  }
}
