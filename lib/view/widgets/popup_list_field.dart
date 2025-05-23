import 'package:flutter/material.dart';
import 'package:mintage_app/utils/colors.dart';
import 'package:mintage_app/utils/app_assets.dart';
import 'package:mintage_app/utils/style.dart';
import 'package:mintage_app/view/widgets/extention/int_extension.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';
import 'package:mintage_app/view/widgets/extention/svg_image.dart';
import 'package:mintage_app/view/widgets/extention/widget_extension.dart';

class PopupListField extends StatelessWidget {
  const PopupListField({
    super.key,
    required this.label,
    required this.hintText,
    required this.fieldText,
    required this.onPressed,
  });
  final String label;
  final String hintText;
  final String fieldText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label.toText(
          fontSize: 14,
          color: AppColors.blackSecondary,
          fontFamily: AppStyle.poppinsMedium,
        ),
        5.height,
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.blackLight),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: fieldText.toText(
                        fontSize: 16,
                        color: AppColors.blackSecondary,
                        fontFamily: AppStyle.poppinsRegular,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  svgAssetImage(AppIcons.iconDropdown),
                  8.width,
                ],
              ),
            ],
          )
              .paddingSymmetric(horizontal: 12.h, vertical: 16.h)
              .onPress(onPressed),
        ),
      ],
    );
  }
}
