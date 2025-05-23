

import 'package:flutter/material.dart';
import 'package:mintage_app/helper/router_navigator.dart';
import 'package:mintage_app/helper/routes_helper.dart';
import 'package:mintage_app/utils/app_assets.dart';
import 'package:mintage_app/utils/colors.dart';
import 'package:mintage_app/utils/style.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';
import 'package:mintage_app/view/widgets/extention/svg_image.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backDark,
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0,left: 33.0,right: 33.0),
        child: Column(
          children: [
            Image.asset(AppIcons.iconLogo),
            SizedBox(height: 58.0),
            Stack(
              children: [
                "WELCOME TO COINS MARKETPLACE".toText(
                    fontFamily: AppStyle.sfProDisplayBlack,
                    fontSize: 36.0,
                    color: AppColors.whiteVariant2,
                    maxLine: 3
                ),
                Image.asset(AppIcons.iconOnBoarding),
                Positioned(
                  bottom: 16,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        goReplacementNamed(RouterHelper.onProfileScreen);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: double.infinity,
                          height: 54.0,
                          color: AppColors.whiteVariant2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             svgAssetImage(AppIcons.iconGoogle),
                             SizedBox(width: 15,),
                             "Continue with Google".toText(
                              color: AppColors.grayVariantOp54,
                               fontFamily: AppStyle.poppinsRegular,
                               fontSize: 20


                             )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
