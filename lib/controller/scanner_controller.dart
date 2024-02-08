import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/common/service_locator.dart';
import 'package:goldstarllc/common/utils/storage_service.dart';
import '../network/api/getx_repository.dart';
import 'base_controller.dart';

class ScannerController extends BaseController {

  final StorageService storageService = StorageService();
  final repo = getIt.get<GetxRepository>();
  var isObscure = false.obs;
    TextEditingController bagNo = TextEditingController();

}
