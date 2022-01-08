import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/theme.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/form");
      },
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppTheme.colors.buttonBackground,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.add,
            color: AppTheme.colors.white,
          )),
    );
  }
}
