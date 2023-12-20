import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';
import 'payment_method_widget.dart';

class PaymentMethodsRow extends StatefulWidget {
  const PaymentMethodsRow({Key? key}) : super(key: key);

  @override
  State<PaymentMethodsRow> createState() => _PaymentMethodsRowState();
}

class _PaymentMethodsRowState extends State<PaymentMethodsRow> {
  bool is1Active = true;
  bool is2Active = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PaymentMethodWidget(
              img: AppImages.card,
              isActive: is1Active,
              onTap: () {
                if (is1Active) return;
                setState(() {
                  is2Active = false;
                  is1Active = !is1Active;
                });
              }),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: PaymentMethodWidget(
            img: AppImages.payPal,
            isActive: is2Active,
            onTap: () {
              if (is2Active) return;
              setState(() {
                is1Active = false;
                is2Active = !is2Active;
              });
            },
          ),
        ),
      ],
    );
  }
}
