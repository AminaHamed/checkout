import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app_screen/core/config/text_styles.dart';
import 'package:payment_app_screen/core/utils/app_images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: InkWell(
            onTap: () {
              //todo pop
            },
            child: Center(child: SvgPicture.asset(AppImages.arrow))),
        title: Text(
          text,
          style: Styles.textStyle25,
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
