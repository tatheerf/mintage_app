import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mintage_app/utils/colors.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';
import 'package:mintage_app/view/widgets/extention/widget_extension.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppColors.whiteStatusBar,
      child: Scaffold(
          backgroundColor: AppColors.greenPrimary,
          body: Container(
            child: 'Menu Screen'.toText(),
          ).center),
    );
  }
}
