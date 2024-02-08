import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/common/utils/Styles.dart';
import 'package:goldstarllc/common/utils/color_constants.dart';
import 'package:goldstarllc/common/utils/utility.dart';
import 'package:goldstarllc/controller/dashboard_controller.dart';
import 'package:goldstarllc/routes/app_pages.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/utils/dimensions.dart';
import '../../common/utils/image_paths.dart';

class SearchStyleEntryScreen extends StatefulWidget {
  SearchStyleEntryScreen({Key? key}) : super(key: key);

  @override
  State<SearchStyleEntryScreen> createState() => _SearchStyleEntryScreenState();
}

class _SearchStyleEntryScreenState extends State<SearchStyleEntryScreen> {
/*  final DashboardController dashboardController =
  Get.put(DashboardController());*/
  bool found = false;
  String selectedImage = AppIcons.image2;
  bool isExpanded = false;
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  List<String> imageList = [
    AppIcons.image1,
    AppIcons.image2,
    AppIcons.image3,
    AppIcons.image4,
    AppIcons.image5
  ];

  @override
  void initState() {
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
        backgroundColor: Colors.white,
        elevation: 1.sp,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
            )),
        centerTitle: true,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: width,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.black53.withOpacity(0.1),
                          offset: Offset(0, 0),
                          spreadRadius: 2.sp,
                          blurRadius: 5.0.sp)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: AppColors.gray1C,
                    ),
                    Utils.addhGap(10),
                    Expanded(
                      child: TextFormField(
                        //                          controller: completedTaskController.searchController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type Style Query ..."),
                        onFieldSubmitted: (value) {
                          //       completedTaskController.apiCallForCompletedTask();
                        },
                      ),
                    ),
                    /*    Visibility(
                      visible: completedTaskController.searchController.text.length > 0,
                      child: GestureDetector(
                        onTap: () {
                          completedTaskController.apiCallForCompletedTask();
                          completedTaskController.searchController.text = "";
                        },
                        child: Icon(
                          Icons.close,
                          color: primaryColor,
                        ),
                      ),
                    ),*/
                  ],
                )),
            Row(
              children: List.generate(
                  700 ~/ 10,
                  (index) => Expanded(
                        child: Container(
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
            Utils.addGap(10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.sp,vertical: 10.sp),
              child: Text(
                "Product Images",
                textAlign: TextAlign.center,
                style:
                Styles.textFontRegular(size: 16, weight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.sp),
                  child: Image.asset(
                    selectedImage,
                    height: 180.sp,
                    width: width,
                    fit: BoxFit.cover,
                  )),
            ),
            Utils.addGap(10),
            Container(
              height: 80.sp,
              child: ListView.builder(
                  itemCount: imageList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        selectedImage = imageList[index];
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10.sp),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: selectedImage == imageList[index]
                                  ? Colors.black
                                  : Colors.white60,
                              width: 2.sp),
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.sp),
                          child: Image.asset(
                            imageList[index],
                            height: 50.sp,
                            width: 80.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))),
            ),
            Utils.addGap(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                width: width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.sp),
                    /*   boxShadow: [
                      BoxShadow(
                          color: AppColors.black53.withOpacity(0.1),
                          offset: Offset(0, 0),
                          spreadRadius: 2.sp,
                          blurRadius: 5.0.sp)
                    ],*/
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(16.0.sp),
                  child: Text(
                    "Add Note",
                    textAlign: TextAlign.center,
                    style: Styles.textFontRegular(
                        size: 14, weight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            Utils.addGap(10),

            Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Text(
                "Details",
                textAlign: TextAlign.center,
                style:
                    Styles.textFontRegular(size: 16, weight: FontWeight.w500),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Container(
                  padding: EdgeInsets.all(16.sp),
                  width: width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.sp),
                      /*   boxShadow: [
                      BoxShadow(
                          color: AppColors.black53.withOpacity(0.1),
                          offset: Offset(0, 0),
                          spreadRadius: 2.sp,
                          blurRadius: 5.0.sp)
                    ],*/
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "FROCXXXXXX/QSJLAOM",
                            textAlign: TextAlign.center,
                            style: Styles.textFontRegular(
                                size: 16, weight: FontWeight.w500),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              isExpanded=!isExpanded;
                              setState(() {

                              });
                            },
                            child: Icon(
                              Icons.arrow_drop_down_circle_rounded,
                              color: AppColors.yellowApp,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                      Visibility(
                        visible: isExpanded,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "14 KT Yellow Gold Ring (Sub category)",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                            Text(
                              "Ring size - XXXX",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                            Text(
                              "Cross wt - XXXX",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Utils.addGap(10),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Container(
                  padding: EdgeInsets.all(16.sp),
                  width: width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.sp),
                      /*   boxShadow: [
                      BoxShadow(
                          color: AppColors.black53.withOpacity(0.1),
                          offset: Offset(0, 0),
                          spreadRadius: 2.sp,
                          blurRadius: 5.0.sp)
                    ],*/
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "FROCXXXXXX/QSJLAOM",
                            textAlign: TextAlign.center,
                            style: Styles.textFontRegular(
                                size: 16, weight: FontWeight.w500),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              isExpanded1=!isExpanded1;
                              setState(() {

                              });
                            },
                            child: Icon(
                              Icons.arrow_drop_down_circle_rounded,
                              color: AppColors.yellowApp,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                      Visibility(
                        visible: isExpanded1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "14 KT Yellow Gold Ring (Sub category)",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                            Text(
                              "Ring size - XXXX",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                            Text(
                              "Cross wt - XXXX",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Utils.addGap(10),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Container(
                  padding: EdgeInsets.all(16.sp),
                  width: width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.sp),
                      /*   boxShadow: [
                      BoxShadow(
                          color: AppColors.black53.withOpacity(0.1),
                          offset: Offset(0, 0),
                          spreadRadius: 2.sp,
                          blurRadius: 5.0.sp)
                    ],*/
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "FROCXXXXXX/QSJLAOM",
                            textAlign: TextAlign.center,
                            style: Styles.textFontRegular(
                                size: 16, weight: FontWeight.w500),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              isExpanded2=!isExpanded2;
                              setState(() {

                              });
                            },
                            child: Icon(
                              Icons.arrow_drop_down_circle_rounded,
                              color: AppColors.yellowApp,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                      Visibility(
                        visible: isExpanded2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "14 KT Yellow Gold Ring (Sub category)",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                            Text(
                              "Ring size - XXXX",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                            Text(
                              "Cross wt - XXXX",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Utils.addGap(10),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Container(
                  padding: EdgeInsets.all(16.sp),
                  width: width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.sp),
                      /*   boxShadow: [
                      BoxShadow(
                          color: AppColors.black53.withOpacity(0.1),
                          offset: Offset(0, 0),
                          spreadRadius: 2.sp,
                          blurRadius: 5.0.sp)
                    ],*/
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "FROCXXXXXX/QSJLAOM",
                            textAlign: TextAlign.center,
                            style: Styles.textFontRegular(
                                size: 16, weight: FontWeight.w500),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              isExpanded3=!isExpanded3;
                              setState(() {

                              });
                            },
                            child: Icon(
                              Icons.arrow_drop_down_circle_rounded,
                              color: AppColors.yellowApp,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                      Visibility(
                        visible: isExpanded3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "14 KT Yellow Gold Ring (Sub category)",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                            Text(
                              "Ring size - XXXX",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                            Text(
                              "Cross wt - XXXX",
                              textAlign: TextAlign.center,
                              style: Styles.textFontRegular(
                                  size: 14, weight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Utils.addGap(90),
          ],
        ),
      ),
    );
  }
}
