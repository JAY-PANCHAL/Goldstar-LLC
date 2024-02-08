import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/common/utils/Styles.dart';
import 'package:goldstarllc/common/utils/color_constants.dart';
import 'package:goldstarllc/common/utils/utility.dart';
import 'package:goldstarllc/controller/dashboard_controller.dart';
import 'package:goldstarllc/routes/app_pages.dart';

import '../../common/utils/dimensions.dart';
import '../../common/utils/image_paths.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final DashboardController dashboardController =
      Get.put(DashboardController());

  @override
  void initState() {
/*
    _splashController.getTokenApi(context);
*/

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = Utils.getScreenWidth(context);
    var height = Utils.getScreenHeight(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1.sp,
        title: Image.asset(
          AppIcons.goldstar,
          height: kToolbarHeight - 10, /*width: 150.sp*/
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 1,
        onPressed: () {
          Get.toNamed(Routes.scanner)?.then((value) {});
        },
        icon: Icon(
          Icons.qr_code_scanner_sharp,
          color: Colors.white,
        ),
        backgroundColor: AppColors.black44,
        label: Text("QR Scan",
            style: Styles.textFontRegular(
                size: 14, weight: FontWeight.w400, color: Colors.white)),
        /* child: SvgPicture.asset(
          AppIcons.scanIcon,
          color: AppColors.white,
        ),*/
      ),

      body: Container(
          height: Dimensions.screenHeight,
          width: Dimensions.screenWidth,
          color: Colors.white,
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Utils.addGap(30),
              Text("Hello User",
                  style: Styles.textFontRegular(
                      size: 16, weight: FontWeight.w400)),
              Utils.addGap(10),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.searchStyleEntry);
                },
                child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.cyan,
                          Colors.blueAccent.shade100,
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.grayE6.withOpacity(0.15),
                            offset: Offset(0, 0),
                            spreadRadius: 10,
                            blurRadius: 10.0)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent.shade100,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            AppIcons.Designer,
                            fit: BoxFit.cover,
                            width: 150.sp,
                            height: 120.sp,
                          ),
                        ),
                        Utils.addhGap(10),
                        Container(
                          color: AppColors.gray1C,
                          width: 1.sp,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Search Style entry",
                                style: Styles.textFontRegular(
                                    size: 16,
                                    weight: FontWeight.w500,
                                    color: Colors.white)),
                            Text("Search Query",
                                style: Styles.textFontRegular(
                                    size: 14,
                                    weight: FontWeight.w400,
                                    color: Colors.white))
                          ],
                        )
                      ],
                    )),
              ),
              Utils.addGap(40),
              Container(
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                      colors: [
                        AppColors.notesColor,
                        Colors.yellow.shade100,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.grayE6.withOpacity(0.15),
                          offset: Offset(0, 0),
                          spreadRadius: 10,
                          blurRadius: 10.0)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.notesColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          AppIcons.notes,
                          fit: BoxFit.fill,
                          width: 150.sp,
                          height: 120.sp,
                        ),
                      ),
                      Utils.addhGap(10),
                      Container(
                        color: AppColors.gray1C,
                        width: 1.sp,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Notes",
                              style: Styles.textFontRegular(
                                  size: 16,
                                  weight: FontWeight.w500,
                                  color: Colors.black45)),
                          Text("Create notes",
                              style: Styles.textFontRegular(
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: Colors.black45))
                        ],
                      )
                    ],
                  )),
              Spacer(),
/*
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.grayE6.withOpacity(0.15),
                            offset: Offset(0, 0),
                            spreadRadius: 10,
                            blurRadius: 10.0)
                      ],
                      borderRadius: BorderRadius.circular(40),
                      color: AppColors.black44,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 30.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.qr_code_scanner_sharp,
                            color: Colors.white,
                            size: 30.sp,
                          ),
                          Utils.addhGap(10),
                          Text(
                            "QR Scan",
                            style: Styles.textFontRegular(
                              size: 14,
                              weight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
*/
            ],
          )),
    );
  }
}
