import 'package:flutter/material.dart';
import 'package:payment_app_screen/core/config/text_styles.dart';

class OrderInfoRow extends StatelessWidget {
  const OrderInfoRow({Key? key, required this.price, required this.text})
      : super(key: key);
  final String price;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.textStyle18,
          ),
          Text(
            price,
            style: Styles.textStyle18,
          ),
        ],
      ),
    );
  }
}
