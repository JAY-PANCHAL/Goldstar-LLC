import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/common/service_locator.dart';
import 'package:goldstarllc/common/utils/app_constants.dart';
import 'package:goldstarllc/common/utils/storage_service.dart';
import 'package:goldstarllc/common/utils/utility.dart';
import 'package:goldstarllc/network/model/style_details.dart';
import 'package:goldstarllc/routes/app_pages.dart';
import '../network/api/getx_repository.dart';
import 'base_controller.dart';

class ScannerController extends BaseController {
  final StorageService storageService = StorageService();
  final repo = getIt.get<GetxRepository>();
  var isObscure = false.obs;
  TextEditingController bagNo = TextEditingController();
  var model = StyelDetailsModel().obs;
  var styleNo = "".obs;

  Future styleDetailsAPI(context) async {
    var token = await storageService.getString(AppConstants.tokenPr);
    print(token);

    var params = {
      AppConstants.customerNoK: styleNo.value,
    };
    isLoading.value = true;
    await repo.styleDetails(params, token).then((value) async {
      if (value != null) {
        model.value = value;
        if (model.value.statusCode == 200) {
          isLoading.value = false;
          if (model.value.message != null) {
            Utils.showToast(model.value.message);
          } else if (model.value.data!.styleDetails!.isEmpty) {
            Utils.showToast(model.value.message.toString());
          }
        } else {
          isLoading.value = false;
        }
      }
    }, onError: (e) {
      isLoading.value = false;

      Utils.showSnackBar(e.toString(), context, () {
        styleDetailsAPI(context);
      });
    });
  }
}

  // Future styleDetailsAPI(context, String data) async {
  //   var token = await storageService.getString(AppConstants.tokenPr);
  //   print(token);

  //   var params = {
  //     AppConstants.customerNoK: data,
  //   };
  //   isLoading.value = true;
  //   await repo.styleDetails(params, token).then((value) async {
  //     if (value != null) {
  //       model.value = value;
  //       if (model.value.statusCode == 200) {
  //         isLoading.value = false;
  //         Get.offAllNamed(Routes.searchStyleEntry);
  //         if (model.value.message != null) {
  //           Utils.showToast(model.value.message);
  //         } else if (model.value.data!.styleDetails!.isEmpty) {
  //           Utils.showToast(model.value.message.toString());
  //         }
  //       } else {
  //         isLoading.value = false;
  //       }
  //     }
  //   }, onError: (e) {
  //     isLoading.value = false;

  //     Utils.showSnackBar(e.toString(), context, () {
  //       styleDetailsAPI(context, data);
  //     });
  //   });
  // }


// class StyleDetailsController extends BaseController {
//   String deviceType = "";

//   final StorageService storageService = StorageService();
//   final repo = getIt.get<GetxRepository>();
//   TextEditingController searchController = TextEditingController();
//   var model = StyelDetailsModel().obs;

//   Future styleDetailsAPI(context) async {
//     var token = await storageService.getString(AppConstants.tokenPr);
//     print(token);

//     var params = {
//       AppConstants.customerNoK: searchController.text,
//     };
//     isLoading.value = true;
//     await repo.styleDetails(params, token).then((value) async {
//       if (value != null) {
//         model.value = value;
//         if (model.value.statusCode == 200) {
//           isLoading.value = false;
//           if (model.value.message != null) {
//             Utils.showToast(model.value.message);
//           } else if (model.value.data!.styleDetails!.isEmpty) {
//             Utils.showToast(model.value.message.toString());
//           }
//         } else {
//           isLoading.value = false;
//         }
//       }
//     }, onError: (e) {
//       isLoading.value = false;

//       Utils.showSnackBar(e.toString(), context, () {
//         styleDetailsAPI(context);
//       });
//     });
//   }
// }
