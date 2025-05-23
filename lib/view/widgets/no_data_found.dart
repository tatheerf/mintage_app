import 'package:flutter/material.dart';
import 'package:mintage_app/utils/colors.dart';
import 'package:mintage_app/utils/style.dart';
import 'package:mintage_app/view/widgets/extention/int_extension.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';
import 'package:mintage_app/view/widgets/extention/svg_image.dart';
import 'package:mintage_app/view/widgets/extention/widget_extension.dart';

class NoDataFound extends StatelessWidget {
  const NoDataFound({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.iconHeight,
    this.iconWidth,
    this.widgetHeight,
  });

  final String icon;
  final String title;
  final String? subtitle;
  final double? iconHeight;
  final double? iconWidth;
  final double? widgetHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widgetHeight ?? double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo of the Error that no data found
          svgAssetImage(
            icon,
            height: iconHeight ?? 140.h,
            width: iconWidth ?? 128.w,
          ).paddingOnly(bottom: 32.h),
          title
              .toText(
                maxLine: 2,
                textAlign: TextAlign.center,
                fontSize: 16,
                fontFamily: AppStyle.poppinsMedium,
                fontWeight: AppStyle.w500,
                color: AppColors.blackSecondary,
              )
              .paddingOnly(bottom: 5.h),
          subtitle == null
              ? const SizedBox()
              : (subtitle ?? "").toText(
                  maxLine: 2,
                  textAlign: TextAlign.center,
                  fontSize: 14,
                  fontFamily: AppStyle.poppinsMedium,
                  fontWeight: AppStyle.w500,
                  color: AppColors.greyLight,
                ),
        ],
      ).paddingSymmetric(
        horizontal: 65.w,
      ),
    );
  }
}
