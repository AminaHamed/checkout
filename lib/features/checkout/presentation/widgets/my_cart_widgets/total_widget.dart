import 'package:flutter/material.dart';
import 'package:payment_app_screen/core/config/text_styles.dart';
import 'package:payment_app_screen/core/utils/app_strings.dart';

class TotalWidget extends StatelessWidget {
  const TotalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.total,
          style: Styles.textStyle24,
        ),
        Text(
          r'50$',
          style: Styles.textStyle24,
        ),
      ],
    );
  }
}
