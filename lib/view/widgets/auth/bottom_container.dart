import 'package:e_commerce/utils/theme.dart';
import 'package:e_commerce/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomContainer extends StatelessWidget {
  final String text;
  final String textType;
  final Function() onPressed;
  const BottomContainer({
    super.key,
    required this.text,
    required this.onPressed,
    required this.textType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: Get.isDarkMode ? mainColor : pinkClr,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            text: text,
          ),
          TextButton(
            onPressed: onPressed,
            child: TextUtils(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              text: textType,
            ),
          )
        ],
      ),
    );
  }
}
