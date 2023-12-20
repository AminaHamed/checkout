import 'package:flutter/material.dart';
import 'package:payment_app_screen/core/utils/app_strings.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/my_cart_widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(text: AppStrings.myCard), body: MyCartViewBody());
  }
}
