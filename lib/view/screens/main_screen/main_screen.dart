import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mintage_app/provider/bottom_navigation_provider.dart';
import 'package:mintage_app/utils/colors.dart';
import 'package:mintage_app/view/widgets/bottom_navigation.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppColors.whiteStatusBar,
      child: Consumer<BottomNavigationProvider>(
        builder: (context, controller, child) {
          return Scaffold(
            backgroundColor: AppColors.backDark,
            body: controller.bottomNavigationIndex[controller.currentIndex],
            bottomNavigationBar: const BottomNavigation(currentIndex: 0),
          );
        },
      ),
    );
  }
}
