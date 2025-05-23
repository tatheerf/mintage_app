import 'package:flutter/material.dart';
import 'package:mintage_app/model/coin_item_model.dart';
import 'package:mintage_app/utils/colors.dart';
import 'package:mintage_app/utils/app_assets.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';

class CoinItemWidget extends StatelessWidget {
  final CoinItemModel coin;

  const CoinItemWidget({
    super.key,
    required this.coin,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 290,
          height: 360,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.viewBackDark,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Image.asset(
                        AppIcons.image,
                        width: 259,
                        height: 257,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Offered \$${coin.price.toStringAsFixed(0)}',
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'By ${coin.sellerName}',
                      style: const TextStyle(color: AppColors.whiteVariant2, fontSize: 13),
                    ),
                    const Text(
                      'Price',
                      style: TextStyle(color: AppColors.whiteVariant2, fontSize: 13),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      coin.name,
                      style: const TextStyle(
                        color: AppColors.whiteVariant2,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${coin.price.toStringAsFixed(0)} ',
                            style: const TextStyle(
                              color: AppColors.greenDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const TextSpan(
                            text: 'USD',
                            style: TextStyle(
                              color: AppColors.whiteVariant2,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 44),
                  height: 53,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: 'Make Offer'.toText(fontSize: 14, fontWeight: FontWeight.bold,color: AppColors.whiteVariant2),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 53,
                margin: const EdgeInsets.only(right: 44),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(12),
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
