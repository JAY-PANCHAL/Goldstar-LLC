import 'dart:async';

import 'package:get/get.dart';

import '../common/service_locator.dart';
import '../common/utils/app_constants.dart';
import '../common/utils/dimensions.dart';
import '../common/utils/storage_service.dart';
import '../network/api/getx_repository.dart';
import '../routes/app_pages.dart';
import 'base_controller.dart';

class SplashController extends BaseController {
  final repo = getIt.get<GetxRepository>();
  final StorageService storageService = StorageService();

  @override
  void onInit() {
    splashTimer();
    super.onInit();
  }

  void splashTimer() async {
    var _duration = Duration(
      seconds: Dimensions.screenLoadTime,
    );
    Timer(_duration, () async {
      checkToken();
      // Get.offNamedUntil(Routes.login, (route) => false);
    });
  }

  Future checkToken() async {
    String token = await storageService.getString(AppConstants.tokenPr);
    if (token == "" || token == "tokenPr") {
      print("This is token:$token");
      Get.offAllNamed(Routes.login);
    } else {
      print("This is token:$token");
      Get.offAllNamed(Routes.dashboard);
    }
  }

/*  Future getTokenApi(context) async {
    var params = {
      AppConstants.loginK: AppConstants.loginValue,
      AppConstants.passwordK: AppConstants.passWordValue,
      AppConstants.dbK: AppConstants.dbValue,
    };

    await repo.getToken(params).then((value) async {
      if (value != null) {
        var data = value;
        if (data.success == 1) {
          await storageService.setString(
              AppConstants.tokenPr, data.data?.token);
          print("user id  =======> ${ data.data?.uid}");
          await storageService.setInt(AppConstants.userIDPr, data.data?.uid);

          print(data.data?.token);
        }
      }
    });
  }*/
}
