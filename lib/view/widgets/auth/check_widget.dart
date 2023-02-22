import 'package:e_commerce/logic/controller/auth_controller.dart';
import 'package:e_commerce/utils/theme.dart';
import 'package:e_commerce/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({super.key});

  final controller = Get.find<AuthCotroller>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthCotroller>(
      builder: (_) {
        return Row(
          children: [
            InkWell(
              onTap: () {
                controller.chackBox();
              },
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: controller.isCheckBox
                    ? Get.isDarkMode
                        ? Image.asset('assets/images/check.png')
                        : const Icon(
                            Icons.done,
                            size: 30,
                            color: pinkClr,
                          )
                    : Container(),
              ),
            ),
            const SizedBox(width: 10),
            TextUtils(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? Colors.black : Colors.white,
                text: 'I accept '),
            TextUtils(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? Colors.black : Colors.white,
                underLine: TextDecoration.underline,
                text: 'terms & conditions'),
          ],
        );
      },
    );
  }
}
