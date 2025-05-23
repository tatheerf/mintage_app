import 'package:flutter/material.dart';
import 'package:mintage_app/utils/style.dart';
import 'package:mintage_app/view/widgets/extention/int_extension.dart';

extension StringExtension on String {
  Widget toText(
          {Color? color,
          double? fontSize,
          int? maxLine,
          TextAlign? textAlign,
          TextOverflow? overflow,
          String? fontFamily,
          FontWeight? fontWeight,
          Color? backgroundColor,
          double? lineHeight,
          bool? isBold,
          bool? isMedium,
          bool? softWrap,
          List<Shadow>? shadows}) =>
      Text(
        this,
        maxLines: maxLine ?? maxLine,
        textAlign: textAlign ?? textAlign,
        softWrap: softWrap ?? false,
        style: TextStyle(
          height: lineHeight,
          backgroundColor: backgroundColor ?? backgroundColor,
          color: color ?? Colors.black,
          fontSize: (fontSize ?? 12).toInt().h,
          fontFamily: fontFamily ?? AppStyle.poppinsRegular,
          fontStyle: FontStyle.normal,
          overflow: overflow ?? TextOverflow.ellipsis,
          fontWeight: fontWeight ??
              (isBold == true
                  ? FontWeight.bold
                  : (isMedium == true ? AppStyle.w500 : AppStyle.w400)),
          shadows: shadows,
        ),
      );
}
