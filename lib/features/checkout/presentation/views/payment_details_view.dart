import 'package:flutter/material.dart';
import 'package:payment_app_screen/core/utils/app_strings.dart';
import 'package:payment_app_screen/features/checkout/presentation/widgets/custom_app_bar.dart';

import '../widgets/payment_details_widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(text: AppStrings.paymentDetails),
      body: PaymentDetailsViewBody(),
    );
  }
}
