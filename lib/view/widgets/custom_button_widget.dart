import 'package:flutter/material.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';

import '../../utils/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key,  required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:onPressed,
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue, // Button background color
      minimumSize: const Size.fromHeight(64), // Button height
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Optional rounded corners
      ),
    ),
      child:
      text.toText(color: AppColors.whiteVariant2, fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
