import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/network/model/add_notes_model.dart';

import '../common/service_locator.dart';
import '../common/utils/app_constants.dart';
import '../common/utils/storage_service.dart';
import '../common/utils/utility.dart';
import '../network/api/getx_repository.dart';
import 'base_controller.dart';

class AddNotesController extends BaseController {
  final StorageService storageService = StorageService();
  final repo = getIt.get<GetxRepository>();

  // var notesformKey = GlobalKey<FormState>();
  var isObscureText = false.obs;
  TextEditingController styleCodeController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  var noteCode = "".obs;

  // void validate(BuildContext context) {
  //   final isValid = notesformKey.currentState?.validate();
  //   Get.focusScope?.unfocus();
  //   if (isValid != null) {
  //     if (isValid) {
  //       addNotesApi(context);
  //     }
  //   }
  // }

  validateLoginControllers(BuildContext context, String styleCode) {
    Get.focusScope?.unfocus();

    if (titleController.text.isEmpty) {
      Utils.showToast(AppConstants.errorTitle);
    } else if (descriptionController.text.isEmpty) {
      Utils.showToast(AppConstants.errorDescription);
    } else {
      addNotesApi(context, styleCode);
    }
  }

  Future addNotesApi(context, styleCode) async {
    var token = await storageService.getString(AppConstants.tokenPr);
    print(token);

    var params = {
      AppConstants.noteCodeK: noteCode.value,
      AppConstants.styleCodeK: styleCode, //styleCodeController.text,
      AppConstants.titleK: titleController.text,
      AppConstants.descriptionK: descriptionController.text,
    };

    isLoading.value = true;
    await repo.addnotes(params, token).then((value) async {
      if (value != null) {
        AddNotesModel model = value;
        if (model.statusCode == 200) {
          isLoading.value = false;
          // notesList.value = model.value.data!.data ?? [];
          //     Utils.showToast("Note Added Successfully");
          titleController.text = "";
          descriptionController.text = "";
          if (noteCode.value != "") {
            noteCode.value = "";
          }
          Get.back();
          if (model.message != null) {
            Utils.showToast(model.message);
          }
        } else {
          isLoading.value = false;
          if (model.message != null) {
            Utils.showToast(model.message);
          }
        }
      }
    }, onError: (e) {
      isLoading.value = false;
      Utils.showSnackBar(e.toString(), context, () {
        addNotesApi(context, styleCode);
      });
    });
  }
}
