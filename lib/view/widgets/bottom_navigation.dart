import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mintage_app/provider/bottom_navigation_provider.dart';
import 'package:mintage_app/utils/colors.dart';
import 'package:mintage_app/utils/constant.dart';
import 'package:mintage_app/utils/app_assets.dart';
import 'package:mintage_app/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:mintage_app/view/widgets/extention/int_extension.dart';
import 'package:mintage_app/view/widgets/extention/svg_image.dart';
import 'package:mintage_app/view/widgets/extention/widget_extension.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key, required this.currentIndex});
  final int currentIndex;
  // Bottom navigation the the bottom navigation bar of the app

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(
        builder: (context, controller, child) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
        child: Container(
          padding: EdgeInsets.all(15),
          height: 82,
          decoration: BoxDecoration(
              color: AppColors.bottomNavColorVariant,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25), bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
             ),
          child: Material(
            elevation: 0.0,
            color: AppColors.bottomNavColorVariant,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
            ),
            child: GNav(
                textSize: 15,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteVariant2
                ),
                rippleColor: AppColors.gray, // tab button ripple color when pressed
                tabBorderRadius: 17,
                curve: Curves.linear, // tab animation curves
                duration: Duration(milliseconds: 100), // tab animation duration
                gap: 4, // the tab button gap between icon and text
                color: AppColors.coolGreyBlue, // unselected icon color
                activeColor: AppColors.whiteVariant2, // selected icon and text color
                tabBackgroundColor: AppColors.blueColor, // selected tab background color
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10), // navigation bar padding
                onTabChange: (index){
                        // set the current index of the bottom navigation bar
                        // the function is declared inside BottomNavigationProvider
                        controller.setCurrentIndex(index);
                        if (currentIndex != index) {
                          switch (index) {
                            case 0:
                              controller.setCurrentIndex(0);
                              break;
                            case 1:
                              controller.setCurrentIndex(1);
                              break;
                            default:
                              break;
                          }
                        }
                },
                tabs: [
                GButton(
                    icon: Icons.circle,
                    leading: svgAssetImage(
                            AppIcons.iconHome,
                            height: 25.h,
                            width: 25.h,
                          color: controller.currentIndex == 0
                          ? AppColors.whiteVariant2
                          : AppColors.coolGreyBlue,
                          ).paddingOnly(bottom: 5.h),
                    text: AppConstant.homeText),
              GButton(
                  icon: Icons.circle,
                  leading: svgAssetImage(
                          AppIcons.iconCoins,
                          height: 25.h,
                          width: 25.h,
                         color: controller.currentIndex == 1
                        ? AppColors.whiteVariant2
                        : AppColors.coolGreyBlue,
                        ).paddingOnly(bottom: 5.h),
                  text: AppConstant.myCoinsText),
              GButton(
                  icon: Icons.circle,
                  leading: svgAssetImage(
                          AppIcons.iconOffers,
                          height: 25.h,
                          width: 25.h,
                        color: controller.currentIndex == 2
                        ? AppColors.whiteVariant2
                        : AppColors.coolGreyBlue,
                        ).paddingOnly(bottom: 5.h),
                  text: AppConstant.myOffersText),
            GButton(
                icon: Icons.circle,
                leading: svgAssetImage(
                        AppIcons.iconFavorite,
                          height: 25.h,
                          width: 25.h,
                      color: controller.currentIndex == 3
                      ? AppColors.whiteVariant2
                      : AppColors.coolGreyBlue,
                        ).paddingOnly(bottom: 5.h),
                text: AppConstant.favouritesText),
            ]),

          ),
        ),
      );
    });
  }
}
