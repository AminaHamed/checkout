import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget(
      {Key? key, required this.img, this.isActive = false, required this.onTap})
      : super(key: key);
  final String img;
  final bool isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 500),
        width: 103,
        height: 62,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.50,
                color: isActive ? const Color(0xFF34A853) : Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
              color: isActive ? const Color(0xFF34A853) : Colors.grey,
              blurRadius: 4,
              offset: const Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
            child: SvgPicture.asset(
          img,
          height: 40,
          fit: BoxFit.scaleDown,
        )),
      ),
    );
  }
}
