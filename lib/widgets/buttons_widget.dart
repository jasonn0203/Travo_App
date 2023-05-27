import 'package:flutter/material.dart';
import 'package:travo_app/core/color.dart';
import 'package:travo_app/core/dimension.dart';
import 'package:travo_app/core/styles.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;

  // "?" before variable means it is allowed to be NULL
  final Function()? onTap;
  const ButtonWidget({super.key, required this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: buttonRadius,
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          gradient: AppGradient.mainGradient,
          borderRadius: buttonRadius,
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 44),
        child: Text(
          buttonText,
          style: AppStyles.buttonText,
        ),
      ),
    );
  }
}
