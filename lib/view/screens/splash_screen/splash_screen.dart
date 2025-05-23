import 'dart:async';
import 'package:mintage_app/helper/router_navigator.dart';
import 'package:mintage_app/helper/routes_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mintage_app/utils/app_assets.dart';
import 'package:mintage_app/utils/colors.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';
import 'package:mintage_app/view/widgets/extention/svg_image.dart';
import 'package:mintage_app/view/widgets/extention/widget_extension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    routes();
  }

  void routes() async {
    Timer(const Duration(seconds: 3), () async {
      //   bool? isLogin = await LocalDb.getLogin;
      //   if (isLogin == true) {
      //   } else {
      goReplacementNamed(RouterHelper.onBoardingScreen);
      //   }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backDark,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Image.asset(
            AppIcons.iconSplashLogo,
          ),
        ),
      ),
    );
  }
}
