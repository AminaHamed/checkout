import 'package:flutter/material.dart';

import '../../../../core/config/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color(0xFF34A853),
          elevation: 5,
          padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 23)),
      child: Text(
        text,
        style: Styles.textStyle22,
      ),
    );
  }
}
