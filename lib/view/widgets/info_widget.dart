
import 'package:flutter/material.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';

import '../../utils/app_assets.dart';
import '../../utils/colors.dart';
import 'extention/svg_image.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key,required this.title, required this.description});

  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 16.0, left: 35.0),
            color: AppColors.greenLight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title.toText(
                  color: AppColors.whiteVariant1Dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                const SizedBox(height: 1),
                description.toText(
                  color: AppColors.whiteVariant1Dark,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.clip,
                  softWrap: true,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: -20,
          top: 20,
          child: svgAssetImage(
            AppIcons.iconInfo,
            width: 50, // optional, depending on your SVG size
            height: 50,
          ),
        ),
      ],
    );
  }
}
