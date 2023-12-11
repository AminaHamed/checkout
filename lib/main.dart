import 'package:flutter/material.dart';
import 'package:payment_app_screen/core/config/theme.dart';

import 'features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme(),
      home: const MyCartView(),
    );
  }
}
