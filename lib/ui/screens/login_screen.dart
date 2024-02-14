import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/routes/app_pages.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../common/CommanTextField.dart';
import '../../common/rounded_button.dart';
import '../../common/utils/Styles.dart';
import '../../common/utils/app_constants.dart';
import '../../common/utils/color_constants.dart';
import '../../common/utils/image_paths.dart';
import '../../common/utils/utility.dart';
import '../../controller/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final LoginController loginScreenController = Get.put((LoginController()));

  @override
  Widget build(BuildContext context) {
    var width = Utils.getScreenWidth(context);
    var height = Utils.getScreenHeight(context);

    return Obx(() {
      return ModalProgressHUD(
          color: Colors.black.withOpacity(0.6),
          dismissible: false,
          progressIndicator: Utils.loader(context),
          inAsyncCall: loginScreenController.isLoading.value,
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: AppColors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              automaticallyImplyLeading: false,
              /*   title: Text(
                  AppConstants.login,
                  style: Styles.textFontRegular(
                      color: AppColors.appRed,
                      weight: FontWeight.w400,
                      size: 16.0),
                  textAlign: TextAlign.center,
                )),*/
            ),
            body: SingleChildScrollView(
              child: Container(
                color: AppColors.white,
                width: width,
                child: Form(
                  key: loginScreenController.formKey,
                  child: Padding(
                    padding: EdgeInsets.all(16.0.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppIcons.splashLogo,
                              height: 150.sp,
                              width: 150.sp,
                            ),
                            /*   Image.asset(AppIcons.goldstar,
                              height: 150.sp,width:150.sp,),*/
                          ],
                        ),
                        Utils.addGap(25),
                        Text(
                          "Login",
                          style: Styles.textFontRegular(
                              size: 40,
                              weight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Utils.addGap(25),
                        getTextFormField(
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return AppConstants.errorLoginName;
                            }

                            return null;
                          },
                          /*    passwordButton: Icon(Icons.email,
                          color: AppColors.black,
                        ),*/
                          controller: loginScreenController.nameController,
                          isObscureText: false,
                          onChanged: (String value) {},
                          hintText: "Enter Login name",
                          labelText: "Login name",

                          /*   passwordButton: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              AppIcons.email,
                              height: 10.sp,
                              width: 10.sp,
                            ),
                          ),*/
                        ),
                        Utils.addGap(20),
                        getTextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return AppConstants.errorPassword;
                            }
                            return null;
                          },
                          isObscureText:
                              loginScreenController.isObscureText.value,
                          passwordButton: IconButton(
                            icon: Icon(
                              loginScreenController.isObscureText.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.black,
                            ),
                            onPressed: () {
                              print(loginScreenController.isObscureText.value);
                              setState(() {
                                loginScreenController.isObscureText.value =
                                    !loginScreenController.isObscureText.value;
                              });
                            },
                          ),
                          controller: loginScreenController.passwordController,
                          onChanged: (String value) {},
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        Utils.addGap(40),
                        GestureDetector(
                            child: Text(
                          "Terms & Conditions",
                          style: Styles.textFontRegular(
                              size: 10.sp,
                              weight: FontWeight.w400,
                              color: Colors.blue),
                        )),
                        RoundedButton(
                            buttonText: AppConstants.login.toUpperCase(),
                            height: 44,
                            width: width,
                            onpressed: () {
                             // Get.offAllNamed(Routes.dashboard);
                            loginScreenController.validate(context);
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
      );
    });
  }
}
