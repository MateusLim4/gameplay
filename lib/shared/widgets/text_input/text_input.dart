import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/theme.dart';

class TextInputWidget extends StatelessWidget {
  final Size size;
  final String text;
  const TextInputWidget({Key? key, required this.size,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: AppTheme.fonts.textHeading),
        Container(
            width: size.width * 1,
            height: size.height * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: [
                  AppTheme.colors.boxBackground,
                  AppTheme.colors.boxBackgroundGradient,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'dd/mm',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  style: AppTheme.fonts.textWhite),
            )),
      ],
    );
  }
}
