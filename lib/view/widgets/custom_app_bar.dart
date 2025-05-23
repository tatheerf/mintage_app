import 'package:flutter/material.dart';
import 'package:mintage_app/utils/app_assets.dart';
import 'package:mintage_app/view/widgets/extention/svg_image.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onLeftPressed;
  final VoidCallback? onRightPressed;

  const CustomAppBar({
    super.key,
    this.onLeftPressed,
    this.onRightPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: preferredSize.height,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (context) => IconButton(
                    icon: svgAssetImage(AppIcons.iconMenu),
                    onPressed: onLeftPressed ??
                            () {
                          Scaffold.of(context).openDrawer(); // ✅ This will now work
                        },
                  ),
                ),
                IconButton(
                  icon: svgAssetImage(AppIcons.iconNotifications),
                  onPressed: onRightPressed ?? () {},
                ),
              ],
            ),
            Center(
              child: Image.asset(
                AppIcons.iconLogo,
                height: 45,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
