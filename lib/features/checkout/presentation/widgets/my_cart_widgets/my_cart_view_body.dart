import 'package:flutter/material.dart';
import 'package:payment_app_screen/core/utils/app_images.dart';
import 'package:payment_app_screen/core/utils/app_strings.dart';

import '../../views/payment_details_view.dart';
import '../custom_button.dart';
import 'order_info_row.dart';
import 'total_widget.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Column(
        children: [
          Expanded(child: Image.asset(AppImages.basket)),
          const SizedBox(
            height: 20,
          ),
          const OrderInfoRow(
            text: AppStrings.orderSubTotal,
            price: r"42.7$",
          ),
          const OrderInfoRow(
            text: AppStrings.disCount,
            price: r"0$",
          ),
          const OrderInfoRow(
            text: AppStrings.shipping,
            price: r"8$",
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 2,
              color: Color(0xFFC6C6C6),
              height: 35,
            ),
          ),
          const TotalWidget(),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            text: AppStrings.completePayment,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PaymentDetailsView()));
            },
          )
        ],
      ),
    );
  }
}
