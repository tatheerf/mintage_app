import 'package:flutter/material.dart';
import 'package:mintage_app/helper/router_navigator.dart';
import 'package:mintage_app/utils/constant.dart';
import 'package:mintage_app/view/widgets/extention/int_extension.dart';
import 'package:mintage_app/view/widgets/extention/svg_image.dart';
import 'package:mintage_app/view/widgets/prrimary_button.dart';
import '../../../utils/style.dart';
import '../../main.dart';
import '../../utils/colors.dart';
import '../../utils/app_assets.dart';

void showMessageDialog({
  required bool isError,
  required String message,
  VoidCallback? onTap,
}) {
  showDialog(
    barrierDismissible: false,
    context: navigatorKey.currentContext!,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 0.0,
        backgroundColor: AppColors.whitePrimary,
        child: contentBox(context, isError, message, onTap),
      );
    },
  );
}

Widget contentBox(
    BuildContext context, bool isError, String message, VoidCallback? onTap) {
  return Container(
    width: 300.w,
    margin: EdgeInsets.all(20.h),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // 20.height,
        svgAssetImage(
          isError ? AppIcons.iconError : AppIcons.iconSuccess,
          height: 90.h,
          width: 90.h,
        ),
        20.height,
        Flexible(
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.blackPrimary,
              fontSize: 16,
              fontWeight: AppStyle.w600,
              fontFamily: AppStyle.poppinsRegular,
            ),
          ),
        ),
        20.height,
        PrimaryButton(
            width: 171.w,
            height: 55.h,
            buttonName: AppConstant.okText,
            onPressed: onTap ?? () => goBack())
      ],
    ),
  );
}
