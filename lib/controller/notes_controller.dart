import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/network/model/add_notes_model.dart';
import 'package:goldstarllc/network/model/loginmodel.dart';
import 'package:goldstarllc/network/model/notesmodel.dart';
import 'package:goldstarllc/routes/app_pages.dart';

import '../common/service_locator.dart';
import '../common/utils/app_constants.dart';
import '../common/utils/storage_service.dart';
import '../common/utils/utility.dart';
import '../network/api/getx_repository.dart';
import 'base_controller.dart';

class NotesController extends BaseController {
  final StorageService storageService = StorageService();
  final repo = getIt.get<GetxRepository>();
  var formKey = GlobalKey<FormState>();
  var isObscureText = false.obs;
  var model = NotesModel().obs;
  var notesList = <NotesDetails>[].obs;

  Future notesApi(context) async {
    var token = await storageService.getString(AppConstants.tokenPr);
    print(token);

    var params = {};
    isLoading.value = true;
    await repo.notes(params, token).then((value) async {
      if (value != null) {
        model.value = value;
        if (model.value.statusCode == 200) {
          isLoading.value = false;
          NotesDataModel dataModel = model.value.data!;
          notesList.value = dataModel.data ?? [];
          // notesList.value = model.value.data!.data ?? [];

          if (model.value.message != null) {
            Utils.showToast(model.value.message);
          }
        } else {
          isLoading.value = false;
        }
      }
    }, onError: (e) {
      isLoading.value = false;
      Utils.showSnackBar(e.toString(), context, () {
        notesApi(context);
      });
    });
  }

  Future deleteNotesApi(context, notecode) async {
    var token = await storageService.getString(AppConstants.tokenPr);
    print(token);

    var params = {AppConstants.noteCodeK: notecode};

    isLoading.value = true;
    await repo.deleteNotes(params, token).then((value) async {
      if (value != null) {
        AddNotesModel model = value;
        if (model.statusCode == 200) {
         // isLoading.value = false;
          notesApi(context);
          if (model.message != null) {
            Utils.showToast(model.message);
          }
        } else {
          isLoading.value = false;
        }
      }
    }, onError: (e) {
      isLoading.value = false;
      Utils.showSnackBar(e.toString(), context, () {
        notesApi(context);
      });
    });
  }
}
