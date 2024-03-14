import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/network/model/loginmodel.dart';
import 'package:goldstarllc/routes/app_pages.dart';

import '../common/service_locator.dart';
import '../common/utils/app_constants.dart';
import '../common/utils/storage_service.dart';
import '../common/utils/utility.dart';
import '../network/api/getx_repository.dart';
import 'base_controller.dart';

class LoginController extends BaseController {
  String deviceType = "";

  final StorageService storageService = StorageService();
  final repo = getIt.get<GetxRepository>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var isObscureText = true.obs;

  Future<void> validate(BuildContext context) async {
    final isValid = formKey.currentState?.validate();
    Get.focusScope?.unfocus();
    if (isValid != null) {
      if (isValid) {
      bool isconnected=await Utils.isConnected();
        if(isconnected) {
          loginAPI(context);
    }   else{
          Utils.showToast("No Internet");
        }

      }
    }
  }

  Future loginAPI(context) async {
    /* var token = await storageService.getString(AppConstants.tokenPr);
    print(token);*/
/*
    deviceType = Utils.getDeviceType();
*/
    var params = {
      AppConstants.passwordK: passwordController.text,
      AppConstants.userNameK: nameController.text,
    };

    isLoading.value = true;


    await repo.loginAPi(params).then((value) async {
      if (value != null) {
        isLoading.value = false;
        LoginModel model = value;
        if (model.statusCode == 200) {
          await storageService.setString(
              AppConstants.tokenPr, model.data?.token ?? "");
          await storageService.setString(
              AppConstants.loginPref, jsonEncode(model.toJson()));


          Get.offAllNamed(Routes.dashboard);
        }
        if (model.message != null) {
          Utils.showToast(model.message);
        }
      }
    }, onError: (e) {
      isLoading.value = false;
      Utils.showSnackBar(e.toString(), context, () {
        loginAPI(context);
      });
    });
  }
}
