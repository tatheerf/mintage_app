import 'package:flutter/material.dart';
import 'package:mintage_app/view/widgets/extention/int_extension.dart';
import 'package:mintage_app/view/widgets/prrimary_button.dart';
import '../../../utils/constant.dart';
import '../../../utils/style.dart';
import '../../main.dart';
import '../../utils/colors.dart';

void messagePopUp({
  required bool isError,
  required String message,
  required VoidCallback onTap,
}) {
  showDialog(
    barrierDismissible: false,
    context: navigatorKey.currentContext!,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: contentBox(context, isError, message, onTap),
      );
    },
  );
}

Widget contentBox(
    BuildContext context, bool isError, String message, VoidCallback onTap) {
  return Container(
    padding: EdgeInsets.all(20.h),
    margin: EdgeInsets.only(top: 20.h),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.white,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          isError ? Icons.error : Icons.done,
          size: 50.h,
        ),
        10.height,
        Flexible(
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.blackPrimary,
              fontSize: 16,
              fontWeight: AppStyle.w600,
              fontFamily: AppStyle.poppinsRegular,
            ),
          ),
        ),
        20.height,
        PrimaryButton(
          height: 42.h,
          width: 100.w,
          buttonName: AppConstant.okText,
          onPressed: onTap,
        ),
      ],
    ),
  );
}
