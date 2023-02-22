import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/utils/theme.dart';
import 'package:e_commerce/view/screens/auth/login_screen.dart';
import 'package:e_commerce/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child:
                Image.asset('assets/images/background.png', fit: BoxFit.cover),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Container(
                  height: 60,
                  width: 190,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: TextUtils(
                        text: "Welcome",
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 60,
                  width: 230,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextUtils(
                          text: "Asroo",
                          color: mainColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                      SizedBox(width: 7),
                      TextUtils(
                          text: "Shop",
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                ),
                const SizedBox(height: 250),
                ElevatedButton(
                  onPressed: () {
                    Get.offNamed(Routes.loginScreen);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 12)),
                  child: const TextUtils(
                      color: Colors.white,
                      text: 'Get Start',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextUtils(
                        color: Colors.white,
                        text: 'Don\'t have an Account?',
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                    TextButton(
                      onPressed: () {
                        Get.offNamed(Routes.signUpScreen);
                      },
                      child: const TextUtils(
                        color: Colors.white,
                        text: 'Sign Up',
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        underLine: TextDecoration.underline,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
