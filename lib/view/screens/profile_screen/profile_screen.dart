import 'package:flutter/material.dart';
import 'package:mintage_app/helper/router_navigator.dart';
import 'package:mintage_app/helper/routes_helper.dart';
import 'package:mintage_app/view/widgets/extention/string_extension.dart';
import 'package:mintage_app/view/widgets/extention/svg_image.dart';
import 'package:mintage_app/view/widgets/extention/widget_extension.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:mintage_app/view/widgets/info_widget.dart';
import 'package:mintage_app/view/screens/country_picker_screen/country_picker_screen.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/colors.dart';
import '../../widgets/custom_button_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;
  String? name;
  String? country;
  final TextEditingController _countryController = TextEditingController();


  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  Future<void> _selectCountry() async {
    final selected = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (context) => const CountryPickerScreen(),
      ),
    );
    
    if (selected != null) {
      setState(() {
        country = selected;
        _countryController.text = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backDark,
        body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(top: 100.0,left: 47.0,right: 47.0),
          child: Column(
          children: [
          Image.asset(AppIcons.iconLogo).center,
            SizedBox(height: 30,),
            InfoWidget(title: "Your Coin Legacy" ,description: "Showcase your collection, track your treasures, and connect with fellow collectors. This is your personal coin story!"),
            SizedBox(height: 24,),
            Stack(
              children:[ ClipRRect(
                borderRadius: BorderRadius.circular(44.0),
                child: Container(
                  color: AppColors.viewBackDark,
                  height: 130,
                  width: 130,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: _pickImage,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.bottomNavColorVariant,
                              width: 2.0,
                            ),
                          borderRadius: BorderRadiusDirectional.circular(40.0)
                        ),
                        child: _image != null 
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: Image.file(
                                _image!,
                                fit: BoxFit.cover,
                              ),
                            )
                          : svgAssetImage(AppIcons.iconProfilePlaceholder,
                        height: 20, width: 20),
                      ),
                    ),
                  ),
                ),
              ),
                 ]
             ),
            SizedBox(height: 15.0,),
            "Upload profile photo".toText(
              color: AppColors.blueColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w700
            ),
            SizedBox(height: 28,),
            Container(
              padding: const EdgeInsets.only(bottom: 16, top: 16, left: 24, right: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: AppColors.viewBackDark
              ),
              child: Column(
                children: [
                  TextField(
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: AppColors.metaDark
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      label: RichText(
                        text: TextSpan(
                          text: 'Name',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: AppColors.metaDark,
                          ),
                          children: [
                            TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: AppColors.redPrimary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  const SizedBox(height: 2),
                  Container(height: 1, color: AppColors.gray),
                  const SizedBox(height: 2),
                  InkWell(
                    onTap: _selectCountry,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _countryController,
                            enabled: false,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: AppColors.metaDark
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              label: RichText(
                                text: TextSpan(
                                  text: 'Country',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.metaDark,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                        color: AppColors.redPrimary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (country == null) 
                          "Not Set".toText(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            color: AppColors.metaDark,
                          ),
                        svgAssetImage(AppIcons.iconArrowRight)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 65,),
            CustomButtonWidget(text: "Update Account Details", onPressed: (){
              print("Button pressed!");
              goReplacementNamed(RouterHelper.mainScreen);
            },)
            ]
          ),
                ),
        ),
    );
  }
}
