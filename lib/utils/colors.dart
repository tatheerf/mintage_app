import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
//primary swatch
  static const Map<int, Color> primaryColor = {
    50: Color.fromRGBO(48, 106, 153, 0.1),
    100: Color.fromRGBO(48, 106, 153, 0.2),
    200: Color.fromRGBO(48, 106, 153, 0.3),
    300: Color.fromRGBO(48, 106, 153, 0.4),
    400: Color.fromRGBO(48, 106, 153, 0.5),
    500: Color.fromRGBO(48, 106, 153, 0.6),
    600: Color.fromRGBO(48, 106, 153, 0.7),
    700: Color.fromRGBO(48, 106, 153, 0.8),
    800: Color.fromRGBO(48, 106, 153, 0.9),
    900: Color.fromRGBO(48, 106, 153, 1),
  };

  static const transparentColor = Colors.transparent;
  static const redPrimary = Color.fromRGBO(255, 0, 0, 1);
  static const redSecondary = Color.fromRGBO(222, 0, 0, 1);
  static const redTertiary = Color.fromRGBO(255, 66, 41, 1);
  static const blackDark = Color.fromRGBO(0, 0, 0, 1);
  static const blackPrimary = Color.fromRGBO(48, 44, 43, 1);
  static const blackSecondary = Color.fromRGBO(35, 35, 35, 1);
  static const blackLight = Color.fromRGBO(18, 18, 18, 1);
  static const whitePrimary = Color.fromRGBO(255, 255, 255, 1);
  static const whiteSecondary = Color.fromRGBO(245, 245, 245, 1);
  static const whiteShadow = Color.fromRGBO(238, 238, 238, 1);
  static const greenPrimary = Color.fromRGBO(87, 173, 87, 1);
  static const greyLight = Color.fromRGBO(153, 153, 153, 1);
  static const preLudeLight = Color.fromRGBO(202, 186, 232, 1);
  static const azurePrimary = Color.fromRGBO(48, 106, 153, 1);
  static const shimmerBaseColor = Color.fromRGBO(200, 200, 200, 0.6);
  static const shimmerHighlightColor = Color.fromRGBO(243, 243, 243, 0.66);

  static const blueColor = Color.fromRGBO(34, 157, 209, 1);
  static const pink = Color.fromRGBO(239, 70, 111, 1);
  static const greenLight = Color.fromRGBO(1, 195, 69, 1);
  static const greenDark = Color.fromRGBO(98, 248, 151, 1);
  static const greenVariant1 = Color.fromRGBO(69, 178, 107, 1);
  static const viewBackLight = Color.fromRGBO(237, 237, 237, 1);
  static const viewBackDark = Color.fromRGBO(53, 57, 69, 1);
  static const backDark = Color.fromRGBO(17, 17, 17, 1);
  static const backLight = Color.fromRGBO(251, 250, 254, 1);
  static const metaLight = Color.fromRGBO(132, 132, 132, 1);
  static const metaDark = Color.fromRGBO(244, 245, 246, 1);
  static const whiteVariant1Dark = Color.fromRGBO(255, 255, 255, 1);
  static const greyVariant1Dark = Color.fromRGBO(190, 190, 190, 1);
  static const greyVariant2Dark = Color.fromRGBO(232, 232, 232, 1);
  static const greyVariant3 = Color.fromRGBO(119, 126, 144, 1);
  static const greyVariant4 = Color.fromRGBO(255, 255, 255, 1);
  static const greyVariant5 = Color.fromRGBO(61, 61, 61, 1);
  static const greyVariant7 = Color.fromRGBO(233, 234, 235, 1);
  static const whiteVariant2 = Color.fromRGBO(252, 252, 252, 1);
  static const pinkNegative = Color.fromRGBO(255, 84, 84, 1);
  static const coolGreyBlue = Color.fromRGBO(157, 178, 206, 1);
  static const bottomNavColorVariant = Color.fromRGBO(23, 28, 43, 1);
  static const whiteChatVariant = Color.fromRGBO(242, 242, 247, 1);
  static const grayVariantOp54 = Color.fromRGBO(0, 0, 0, 0.54);
  static const gray = Color.fromRGBO(240, 240, 240, 1);



// Splash radial gradient
  static const radialGradientColor = [
    Color.fromRGBO(88, 79, 204, 1),
    Color.fromRGBO(10, 1, 24, 1),
  ];

  static const buttonLinearGradiantColor = [
    Color.fromRGBO(88, 79, 204, 1),
    Color.fromRGBO(2, 219, 245, 1),
  ];

// statusBar
  static const whiteStatusBar = SystemUiOverlayStyle(
      statusBarColor: whitePrimary,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: whitePrimary,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: whitePrimary);

  static const transparentStatusBar = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.transparent);
}
