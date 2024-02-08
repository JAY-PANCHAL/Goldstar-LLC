import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/common/CommanTextField.dart';
import 'package:goldstarllc/common/utils/color_constants.dart';
import 'package:goldstarllc/common/utils/utility.dart';
import 'package:goldstarllc/controller/scanner_controller.dart';
import 'package:scan/scan.dart';


class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  ScannerController scannerController = Get.put(ScannerController());
  ScanController controller = ScanController();
  String qrcode = 'Unknown';

  @override
  Widget build(BuildContext context) {
    var height = Utils.getScreenHeight(context);
    var width = Utils.getScreenWidth(context);

    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 0, backgroundColor: Colors.transparent),
        body: Container(
          width: width, // custom wrap size
          height: height,
          child: Stack(
            children: [
              ScanView(
                controller: controller,
                // custom scan area, if set to 1.0, will scan full area
                scanAreaScale: .7,
                scanLineColor: AppColors.white,
                onCapture: (data) {
                  Utils.showToast(data);
                  // do something
                },
              ),
              Positioned(
                top: 14,
                left: 10,
                right: 0,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.sp),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.appYellow,
                        ),
                        child: Icon(Icons.arrow_back, color: AppColors.white),
                      ),
                    ),
/*
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp), // Adjust padding as needed
                        child: getTextFormField(
                          isObscureText: false,
                          validator: (String? str) {},
                          controller: scannerController.bagNo,
                          onChanged: (String value) {},
                          ontap: () {
                            // scannerController.bagInsert(
                            //     scannerController.bagNo.text, "BSIN");
                          },
                          hintText: "Enter ",
                          passwordButton: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                            },
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
*/
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
