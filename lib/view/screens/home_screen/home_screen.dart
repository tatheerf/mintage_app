import 'package:mintage_app/model/SellerItemModel.dart';
import 'package:mintage_app/model/coin_item_model.dart';
import 'package:mintage_app/utils/app_assets.dart';
import 'package:mintage_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mintage_app/view/widgets/custom_snackbar.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';
import 'package:mintage_app/view/widgets/extention/widget_extension.dart';
import 'package:mintage_app/view/widgets/coin_item_widget.dart';
import 'package:mintage_app/view/widgets/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mintage_app/view/widgets/seller_widget.dart';

import '../../widgets/extention/svg_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;

  final List<CoinItemModel> _featuredCoins = [
    CoinItemModel(
      name: 'Queen Coin',
      sellerName: 'AliHamza',
      price: 100.00,
      imageUrl: 'https://example.com/coin1.jpg',
    ),
    CoinItemModel(
      name: 'King Coin',
      sellerName: 'JohnDoe',
      price: 150.00,
      imageUrl: 'https://example.com/coin2.jpg',
    ),
    CoinItemModel(
      name: 'Ancient Coin',
      sellerName: 'JaneSmith',
      price: 200.00,
      imageUrl: 'https://example.com/coin3.jpg',
    ),
  ];

  final List<SellerItemModel> _topSellers = [
    SellerItemModel(
      name: 'Queen Coin', followers: 11
    ),
    SellerItemModel(
      name: 'King Coin', followers: 11
    ),
    SellerItemModel(
      name: 'Ancient Coin', followers: 11
    ),
  ];

  @override
  void initState() {
    callingAPIs();
    super.initState();
  }

  callingAPIs() {
    // Call APIs
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppColors.whiteStatusBar,
      child: Scaffold(
        backgroundColor: AppColors.backDark,
        drawer: Padding(
          padding: const EdgeInsets.only(right: 33,top: 40),
          child: Drawer(
            backgroundColor: Colors.black, // Dark background
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Logo and App Name
                      Image.asset(
                            AppIcons.iconLogo, // Replace with your logo asset
                            height: 40,
                      ),
                      const SizedBox(height: 36),
                      // Welcome and User Info
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          svgAssetImage(AppIcons.iconUser, height: 30,width: 30),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Welcome',
                                style: TextStyle(color: Colors.white70, fontSize: 14),
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'Test User',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(Icons.edit, color: Colors.white70, size: 16),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          // Login Button
                          OutlinedButton(
                            onPressed: () {
                              // Handle login
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: AppColors.greenLight),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(color: AppColors.greenLight),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const Divider(color: AppColors.coolGreyBlue, height: 2,),
                SizedBox(height: 22,),
                // Menu Item: Privacy Policy
                ListTile(
                  leading: const Icon(Icons.privacy_tip_outlined, color: Colors.white),
                  title: const Text('Privacy Policy', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Navigate to privacy policy
                  },
                ),
              ],
            ),
          )

        ),
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 18, left: 30, right: 30),
            child: Column(
              children: [
                "Discover, collect, and sell"
                    .toText(
                      color: AppColors.whiteVariant2,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    )
                    .center,
                "Your Treasure"
                    .toText(
                      color: AppColors.whiteVariant2,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )
                    .center,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        // Your action
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: AppColors.greyVariant3,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(83),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        'New Coin, New Story',
                        style: TextStyle(
                          color: AppColors.greenDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(width: 9),
                    OutlinedButton(
                      onPressed: () {
                        // Your action
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: AppColors.greyVariant3,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(83),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        'Start your search',
                        style: TextStyle(
                          color: AppColors.greenDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Featured Coins".toText(
                      color: AppColors.whiteVariant1Dark,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    "View all".toText(
                      color: AppColors.whiteVariant1Dark,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                CarouselSlider.builder(
                  itemCount: _featuredCoins.length,
                  options: CarouselOptions(
                    height: 387,
                    viewportFraction: 0.85,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                    enableInfiniteScroll: false,
                    autoPlay: false,
                    padEnds: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                  ),
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CoinItemWidget(coin: _featuredCoins[index]),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _featuredCoins.length,
                    (index) => Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _currentPage == index
                                ? AppColors.greenDark
                                : AppColors.whiteVariant2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Top Sellers".toText(
                      color: AppColors.whiteVariant1Dark,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    "View all".toText(
                      color: AppColors.whiteVariant1Dark,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ListView.separated(
                  itemCount: _topSellers.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return SellerWidget(topSellers: _topSellers[index]);
                  }, separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height: 10);
                },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
