import 'dart:convert';
import 'package:dio/src/dio_error.dart';
import 'package:goldstarllc/network/constant/endpoints.dart';
import 'package:goldstarllc/network/dio/dio_exception.dart';
import 'package:goldstarllc/network/model/loginmodel.dart';
import 'package:goldstarllc/network/model/style_details.dart';
import '../../common/utils/storage_service.dart';
import 'getx_api.dart';

class GetxRepository {
  final GetxApi getxApi;
  final storageService = StorageService();

  GetxRepository(this.getxApi);

  Future<LoginModel> loginAPi(params) async {
    try {
      final response = await getxApi.loadPostDataJsonType(Endpoints.login, params,"");
      //return ConfigModel.fromJson(response.data);
      return LoginModel.fromJson(response.data);
    } on DioExceptions catch (e) {
      final errorMessage = DioExceptions.fromDioError(e as DioError).toString();
      throw errorMessage;
    }
  }

  Future<StyelDetailsModel> styleDetails(params,token) async {
    try {
      final response = await getxApi.loadPostDataJsonType(Endpoints.styleDetails, params,token);
      //return ConfigModel.fromJson(response.data);
      return StyelDetailsModel.fromJson(response.data);
    } on DioExceptions catch (e) {
      final errorMessage = DioExceptions.fromDioError(e as DioError).toString();
      throw errorMessage;
    }
  }
}
