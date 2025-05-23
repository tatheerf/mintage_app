import 'package:flutter/material.dart';
import 'package:mintage_app/model/SellerItemModel.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';

import '../../utils/app_assets.dart';
import '../../utils/colors.dart';

class SellerWidget extends StatelessWidget {
  const SellerWidget({super.key, required this.topSellers});

  final SellerItemModel topSellers;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 75,
        width: double.infinity,
        color: AppColors.viewBackDark,
        child: Row(
          children: [
            ClipRRect(
              child: Image.asset(AppIcons.image),
              borderRadius: BorderRadius.circular(15),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 18,right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        topSellers.name.toText(
                          color: AppColors.greenDark,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        "${topSellers.followers} Followers".toText(
                          color: AppColors.greyVariant1Dark,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    "Follow".toText(
                      color: AppColors.pink,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
