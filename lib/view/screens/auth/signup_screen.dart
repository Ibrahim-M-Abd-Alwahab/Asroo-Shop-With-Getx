import 'package:e_commerce/logic/controller/auth_controller.dart';
import 'package:e_commerce/utils/my_string.dart';
import 'package:e_commerce/utils/theme.dart';
import 'package:e_commerce/view/widgets/auth/auth_button.dart';
import 'package:e_commerce/view/widgets/auth/auth_text_from_field.dart';
import 'package:e_commerce/view/widgets/auth/bottom_container.dart';
import 'package:e_commerce/view/widgets/auth/check_widget.dart';
import 'package:e_commerce/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final GlobalKey formKey = GlobalKey();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final controller = Get.find<AuthCotroller>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 40, right: 25),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextUtils(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Get.isDarkMode ? mainColor : pinkClr,
                              text: 'SIGN',
                            ),
                            const SizedBox(width: 3),
                            TextUtils(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color:
                                  Get.isDarkMode ? Colors.black : Colors.white,
                              text: 'UP',
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        AuthTextFromField(
                          controller: nameController,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().length <= 2 ||
                                !RegExp(validationName).hasMatch(value)) {
                              return 'Enter valid name';
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: Get.isDarkMode
                              ? Image.asset('assets/images/user.png')
                              : const Icon(
                                  Icons.person,
                                  color: pinkClr,
                                  size: 30,
                                ),
                          suffixIcon: const Text(''),
                          hintText: 'User Name',
                        ),
                        const SizedBox(height: 20),
                        AuthTextFromField(
                          controller: emailController,
                          obscureText: false,
                          validator: (value) {
                            if (!RegExp(validationEmail).hasMatch(value)) {
                              return 'Invalid email';
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: Get.isDarkMode
                              ? Image.asset('assets/images/email.png')
                              : const Icon(
                                  Icons.email,
                                  color: pinkClr,
                                  size: 30,
                                ),
                          suffixIcon: const Text(''),
                          hintText: 'Email',
                        ),
                        const SizedBox(height: 20),
                        GetBuilder<AuthCotroller>(
                          builder: (_) {
                            return AuthTextFromField(
                              controller: passwordController,
                              obscureText:
                                  controller.isVisability ? false : true,
                              validator: (value) {
                                if (value.toString().length < 6) {
                                  return 'Password must be more than 5 characters';
                                } else {
                                  return null;
                                }
                              },
                              prefixIcon: Get.isDarkMode
                                  ? Image.asset('assets/images/lock.png')
                                  : const Icon(
                                      Icons.lock,
                                      color: pinkClr,
                                      size: 30,
                                    ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  controller.visability();
                                },
                                icon: controller.isVisability
                                    ? const Icon(
                                        Icons.visibility_off,
                                        color: Colors.black,
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                        color: Colors.black,
                                      ),
                              ),
                              hintText: 'Password',
                            );
                          },
                        ),
                        const SizedBox(height: 50),
                        CheckWidget(),
                        const SizedBox(height: 50),
                        AuthButton(
                          text: 'SIGN UP',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              BottomContainer(
                text: 'Already have an Account?',
                textType: 'Log in',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
