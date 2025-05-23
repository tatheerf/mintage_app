import 'package:flutter/material.dart';
import 'package:mintage_app/view/screens/authentication_screens/login_screen.dart';
import 'package:mintage_app/view/screens/main_screen/main_screen.dart';
import 'package:mintage_app/view/screens/onboarding_screen/onboarding_screen.dart';
import 'package:mintage_app/view/screens/profile_screen/profile_screen.dart';
import 'package:mintage_app/view/screens/splash_screen/splash_screen.dart';

class RouterHelper {
  static const initial = "/";
  static const logInScreen = "/logInScreen";
  static const mainScreen = "/mainScreen";
  static const onBoardingScreen = "/onboarding";
  static const onProfileScreen = "/profileScreen";

  static Map<String, Widget Function(BuildContext context)> routes = {
    initial: (context) => const SplashScreen(),
    logInScreen: (context) => const LoginScreen(),
    mainScreen: (context) => const MainScreen(),
    onBoardingScreen: (context) => const OnboardingScreen(),
    onProfileScreen: (context) => const ProfileScreen(),
  };
}
