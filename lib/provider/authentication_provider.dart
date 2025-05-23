import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mintage_app/data/repository/api_repo.dart';
import 'package:mintage_app/helper/router_navigator.dart';
import 'package:mintage_app/utils/api_url.dart';
import 'package:mintage_app/view/widgets/loading_dialog.dart';

import '../data/db/shared-preferences.dart';
import '../data/model/auth_model/auth_model.dart';
import '../helper/routes_helper.dart';
import '../view/widgets/custom_snackbar.dart';

class AuthProvider extends ChangeNotifier {
  // Login controller
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  // Variables
  bool? isLoading;

  // Clear TextFields
  clearSignInFields() {
    loginEmailController.clear();
    loginPasswordController.clear();
    notifyListeners();
  }

  // Clear Authentication Screen
  clearAuthenticationScreen() {
    clearSignInFields();
    notifyListeners();
  }

  // Set Loading
  setLoading(bool value) {
    isLoading = value;
    if (value == true) {
      loaderDialog();
    } else {
      goBack();
    }
    notifyListeners();
  }
/*=================================================================================
  APIs calling
 ==================================================================================*/

  ApiRepo apiRepo = ApiRepo();

  // LOGIN ===================================================

  // Login
  LoginModel loginModel = LoginModel();

  Future<void> login() async {
    loginModel = LoginModel();
    setLoading(true);
    debugPrint("isLoading: $isLoading");
    debugPrint("Register ==========================>>>");

    try {
      Response response = await apiRepo.postRequest(
          url: ApiUrl.logInUrl,
          data: {
            "email": loginEmailController.text,
            "password": loginPasswordController.text
          });
      final responseBody = response.data;
      debugPrint("Login body ===============>>> $responseBody");
      loginModel = LoginModel.fromJson(responseBody);
      if (response.statusCode == 200 || response.statusCode == 201) {
        setLoading(false);
        Future.wait([
          LocalDb.storeUserData(loginModel),
          LocalDb.storeBearerToken(loginModel.token!),
          LocalDb.storeUserId(loginModel.data!.id!),
          LocalDb.storeLogin(true),
        ]);
        clearSignInFields();
        goToNamed(RouterHelper.mainScreen);
      } else {
        setLoading(false);
        showToast(
            message: loginModel.error ??
                "${response.statusCode} ${response.statusMessage}",
            isError: true);
      }
    } catch (e) {
      setLoading(false);
      debugPrint("isLoading: $isLoading");
    }
  }
}
