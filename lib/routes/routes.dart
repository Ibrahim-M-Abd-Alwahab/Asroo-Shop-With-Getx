import 'package:e_commerce/logic/bindings/auth_binding.dart';
import 'package:e_commerce/view/screens/auth/login_screen.dart';
import 'package:e_commerce/view/screens/auth/signup_screen.dart';
import 'package:get/get.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes {
  //initialRoute
  static const String welcome = Routes.welcomeScreen;

  //getPages
  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    )
  ];
}

class Routes {
  static const String welcomeScreen = '/welcomeScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String loginScreen = '/loginScreen';
}
