import 'package:flutter/material.dart';
import 'package:mintage_app/main.dart';
import 'package:mintage_app/view/widgets/extention/int_extension.dart';
import 'package:intl/intl.dart';

import '../utils/colors.dart';

Future<String?> selectDatePicker({DateTime? preSelectedDate}) async {
  DateTime selectedDate = preSelectedDate ?? DateTime.now();
  DateTime? picked = await showDatePicker(
      context: navigatorKey.currentContext!,
      builder: (BuildContext context, Widget? child) {
        return StatefulBuilder(builder: (context, state) {
          return Theme(
            data: ThemeData(
              useMaterial3: false,
              primarySwatch:
                  const MaterialColor(0x219942, AppColors.primaryColor),
              splashColor: AppColors.blackPrimary,
              textTheme: TextTheme(
                titleMedium: const TextStyle(color: AppColors.blackPrimary),
                headlineMedium:
                    TextStyle(fontSize: 24.h, fontWeight: FontWeight.bold),
                labelLarge: const TextStyle(color: AppColors.blackPrimary),
              ),
              colorScheme: const ColorScheme.light(
                  primary: AppColors.greenPrimary,
                  onSecondary: AppColors.blackPrimary,
                  onPrimary: AppColors.whitePrimary,
                  surface: AppColors.blackPrimary,
                  onSurface: AppColors.blackPrimary,
                  secondary: AppColors.blackPrimary),
              dialogBackgroundColor: AppColors.whitePrimary,
            ),
            child: child ?? const Text(""),
          );
        });
      },
      keyboardType: TextInputType.text,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now());
  if (picked != null) {
    selectedDate = picked;
    selectedDate;
    String date = DateFormat('yyyy-MM-dd').format(selectedDate);
    return date;
  } else {
    return null;
  }
}
