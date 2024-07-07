import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonLabel,
    this.backgroundColor,
    required this.onButtonPressed,
  });

  final String buttonLabel;
  final Color? backgroundColor;
  final void Function() onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onButtonPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: CustomText(
          text: buttonLabel,
          textColor: Colors.black,
          isBoldFont: true,
        ),
      ),
    );
  }
}

