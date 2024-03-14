import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/common/utils/Styles.dart';
import 'package:goldstarllc/common/utils/color_constants.dart';
import 'package:goldstarllc/common/utils/utility.dart';
import 'package:goldstarllc/controller/search_style_controller.dart';
import 'package:goldstarllc/routes/app_pages.dart';
import 'package:goldstarllc/ui/screens/add_notes_screen.dart';
import 'package:goldstarllc/ui/screens/scanner_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../common/utils/image_paths.dart';

class SearchDetailsScreen extends StatefulWidget {
  String? data;

  SearchDetailsScreen({Key? key, this.data = ""}) : super(key: key);

  @override
  State<SearchDetailsScreen> createState() => _SearchDetailsScreenState();
}

class _SearchDetailsScreenState extends State<SearchDetailsScreen> {
  final StyleDetailsController styleDetailsController =
  Get.put(StyleDetailsController());

  bool found = false;
  String selectedImage = AppIcons.image2;
  bool isExpanded = false;
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isExpanded5 = false;
  bool isExpanded6 = false;

//FRTH6132GS
// FRQT4914G
// FROF2453G
// BRQT7311S
// FRQT4914BG

  List<String> imageList = [
    AppIcons.image1,
    AppIcons.image2,
    AppIcons.image3,
    AppIcons.image4,
    AppIcons.image5
  ];

  @override
  void initState() {
    print("search screen created");
    getData();
    //Utils.showToast(widget.data);
    super.initState();
  }


  getData() async {

    bool isconnected=await Utils.isConnected();


    if(isconnected) {


      if (widget.data != "") {
        styleDetailsController.searchController.text=widget.data??"";
        styleDetailsController.styleDetailsScannerAPI(
            context, widget.data.toString());
        setState(() {});


      }




    }   else{
    Utils.showToast("No Internet");
    }






  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = Utils.getScreenWidth(context);
    var height = Utils.getScreenHeight(context);
    return Obx(() {
      return ModalProgressHUD(
          color: Colors.black.withOpacity(0.6),
          dismissible: false,
          progressIndicator: Utils.loader(context),
          inAsyncCall: styleDetailsController.isLoading.value,
          child: Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 1.sp,
              leading: GestureDetector(
                  onTap: () {
                    Get.back();
                    print("back clicked");
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.black,
                  )),
              centerTitle: true,
              title: Text(
                "Style Info",
                style:
                Styles.textFontRegular(size: 16, weight: FontWeight.w400),
              ), /* Image.asset(
          AppIcons.goldstar,
          height: kToolbarHeight - 10, */ /*width: 150.sp*/ /*
        ),*/
            ),
            floatingActionButton: FloatingActionButton.extended(
              elevation: 1,
              onPressed: () {
                Get.to(()=>ScannerScreen(isFrom: "main",))?.then((value) {
                  if(value!=null){
                    styleDetailsController.searchController.text = value;
                    styleDetailsController.styleDetailsAPI(context);
                  }});

//                Get.toNamed(Routes.scanner)?.then((value) {});
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
            body: RefreshIndicator(
              onRefresh: () async {

                bool isconnected=await Utils.isConnected();

      if(isconnected) {
        if (widget.data != "") {
          styleDetailsController.searchController.text = widget.data!;
          styleDetailsController.styleDetailsAPI(context);
        }
      }else{
        Utils.showToast("No Internet");

      }

              },
              color: AppColors.appYellow,
              child: SingleChildScrollView(
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
                                controller:
                                styleDetailsController.searchController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Type Style Query ..."),
                                onFieldSubmitted: (value) async {
                                  bool isconnected=await Utils.isConnected();

                                  if(isconnected) {
                                    if(styleDetailsController.searchController.text!=""){
                                      styleDetailsController.styleDetailsAPI(context);

                                    }else{
                                      Utils.showToast("Enter style query");
                                    }

                                  }else{
                                    Utils.showToast("No Internet");
                                  }
                                  // styleDetailsController
                                  //     .styleDetailsAPI(context);
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
                              (index) =>
                              Expanded(
                                child: Container(
                                  color: index % 2 == 0
                                      ? Colors.transparent
                                      : Colors.grey,
                                  height: 2,
                                ),
                              )),
                    ),
                    if ((styleDetailsController
                        .model.value.data?.styleDetails?.length ??
                        0) >
                        0)
                      DetailsWidget(width)
                    else
                      Container(),
                  ],
                ),
              ),
            ),
          ));
    });
  }

  Widget DetailsWidget(width) {
    return Column(
      children: [
        Utils.addGap(10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 10.sp),
          child: Text(
            "Product Images",
            textAlign: TextAlign.center,
            style: Styles.textFontRegular(size: 16, weight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.sp),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20.sp),
              child: Utils.loadNetworkImage1(
                  url:
                  "${styleDetailsController.model.value.data?.styleDetails?[0]
                      .imageDetails?[0].imageName ?? ""}",
                  mHeight: 320.sp,
                  mWidth: width,
                  fit: BoxFit.cover)
            /* Image.asset(
                selectedImage,
                height: 180.sp,
                width: width,
                fit: BoxFit.cover,
              )*/
          ),
        ),
        Utils.addGap(10),
        Container(
          height: 80.sp,
          child: ListView.builder(
              itemCount: styleDetailsController
                  .model.value.data?.styleDetails?[0].imageDetails?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  GestureDetector(
                      onTap: () {
                        selectedImage = styleDetailsController.model.value.data
                            ?.styleDetails?[0].imageDetails?[index].imageName ??
                            "";
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10.sp),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: selectedImage ==
                                  styleDetailsController.model.value.data
                                      ?.styleDetails?[0].imageDetails?[index]
                                  ? Colors.black
                                  : Color.fromARGB(153, 131, 118, 118),
                              // const Color.fromARGB(255, 252, 161, 25),

                              width: 1.sp),
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.sp),
                            child: Utils.loadNetworkImage(
                                url:
                                "${styleDetailsController.model.value.data
                                    ?.styleDetails?[0].imageDetails?[index]
                                    .imageName ?? ""}",
                                mHeight: 50.sp,
                                mWidth: 80.sp,
                                fit: BoxFit.contain)
                          /*Image.asset(

                        height: 50.sp,
                        width: 80.sp,
                        fit: BoxFit.cover,
                      ),*/
                        ),
                      ))),
        ),
        Utils.addGap(16),
        GestureDetector(
          onTap: () {
            Get.to(() =>
                AddNotesScreen(
                  styleNo: styleDetailsController
                      .model.value.data?.styleDetails?[0].custStyleNo,

                ));
          },
          child: Padding(
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
                  style:
                  Styles.textFontRegular(size: 14, weight: FontWeight.w400),
                ),
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
            style: Styles.textFontRegular(size: 16, weight: FontWeight.w500),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: GestureDetector(
              onTap: () {
                isExpanded = !isExpanded;
                setState(() {});
              },
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
                          "Style Details",
                          textAlign: TextAlign.center,
                          style: Styles.textFontRegular(
                              size: 16,
                              weight: FontWeight.w500,
                              color: AppColors.gray1C),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            isExpanded = !isExpanded;
                            setState(() {});
                          },
                          child: Icon(
                            Icons.arrow_drop_down_circle_rounded,
                            color: Colors.grey,
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
                          Utils.normalText(
                            "${styleDetailsController.model.value.data
                                ?.styleDetails?[0].gsStyleNo ??
                                ""} / ${styleDetailsController.model.value.data
                                ?.styleDetails?[0].custStyleNo ?? ""}",
                          ),
                          Utils.addGap(5),
                          Utils.normalText(
                            "${styleDetailsController.model.value.data
                                ?.styleDetails?[0].styleRemarks ??
                                ""}(${styleDetailsController.model.value.data
                                ?.styleDetails?[0].subCategory ?? ""})",
                          ),
                          Utils.addGap(5),
                          Utils.normalText(
                            "Gross weight - ${styleDetailsController.model.value
                                .data?.styleDetails?[0].grossWt ?? ""}",
                          ),
                          Utils.addGap(5),
                          Utils.normalText(
                            "Ring size - ${styleDetailsController.model.value
                                .data?.styleDetails?[0].ringSize ?? 0.0}",
                          ),
                          Utils.addGap(5),
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
              ),
            )),
        Utils.addGap(10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: GestureDetector(
              onTap: () {
                isExpanded1 = !isExpanded1;
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.all(16.sp),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 1.sp),
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
                          "Metal Details",
                          textAlign: TextAlign.center,
                          style: Styles.textFontRegular(
                              size: 16, weight: FontWeight.w500),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            isExpanded1 = !isExpanded1;
                            if (styleDetailsController.model.value.data
                                ?.styleDetails?[0].metalDetails?.length ==
                                0) {
                              Utils.showToast("Metal Details Not Found");
                            }
                            setState(() {});
                          },
                          child: Icon(
                            Icons.arrow_drop_down_circle_rounded,
                            color: Colors.brown,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                    Visibility(
                        visible: isExpanded1,
                        child: ListView.builder(
                            padding: EdgeInsets.all(0.sp),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: styleDetailsController.model.value.data
                                ?.styleDetails?[0].metalDetails?.length,
                            itemBuilder: (context, metalIndex) =>
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColors.grayF5,
                                  ),
                                  margin: EdgeInsets.symmetric(vertical: 12.sp),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12.sp, horizontal: 12.sp),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Utils.normalText(
                                        " ${metalIndex + 1} )",
                                      ),
                                      Utils.addGap(5),
                                      Utils.normalText(
                                        "Metal Type - ${styleDetailsController
                                            .model.value.data?.styleDetails?[0]
                                            .metalDetails?[metalIndex]
                                            .metalType ?? ""}",
                                      ),
                                      Utils.addGap(5),
                                      Utils.normalText(
                                        "Color - ${styleDetailsController.model
                                            .value.data?.styleDetails?[0]
                                            .metalDetails?[metalIndex].color ??
                                            ""}",
                                      ),
                                      Utils.addGap(5),
                                      Utils.normalText(
                                        "Purity - ${styleDetailsController.model
                                            .value.data?.styleDetails?[0]
                                            .metalDetails?[metalIndex]
                                            .fineness ?? ""}",
                                      ),
                                      Utils.addGap(5),
                                      Utils.normalText(
                                        "Finn Weight - ${styleDetailsController
                                            .model.value.data?.styleDetails?[0]
                                            .metalDetails?[metalIndex].finWt ??
                                            ""}",
                                      ),
                                      /* Utils.addGap(10),
                                          (styleDetailsController.model.value.data?.styleDetails?[0].metalDetails?[metalIndex].stoneDetails?.length??0)>0 ?   Text(
                                            "Stone Details",
                                            textAlign: TextAlign.center,
                                            style: Styles.textFontRegular(
                                                size: 16, weight: FontWeight.w500),
                                          ):Container(),*/
                                    ],
                                  ),
                                )))
                  ],
                ),
              ),
            )),
        Utils.addGap(10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: GestureDetector(
              onTap: () {
                isExpanded2 = !isExpanded2;
                if (styleDetailsController.model.value.data?.styleDetails?[0]
                    .stoneDetails?.length ==
                    0) {
                  Utils.showToast("Stone Details Not Found");
                }
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.all(16.sp),
                width: width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 1.sp),
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
                          "Stone Details",
                          textAlign: TextAlign.center,
                          style: Styles.textFontRegular(
                              size: 16, weight: FontWeight.w500),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            isExpanded2 = !isExpanded2;
                            setState(() {});
                          },
                          child: Icon(
                            Icons.arrow_drop_down_circle_rounded,
                            color: Colors.orange,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                    Visibility(
                      visible: isExpanded2,
                      child: ListView.builder(
                          padding: EdgeInsets.all(0.sp),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: styleDetailsController.model.value.data
                              ?.styleDetails?[0].stoneDetails?.length,
                          itemBuilder: (context, stoneDetailsIndex) =>
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.orangeAccent.withOpacity(0.3),
                                  ),
                                  margin: EdgeInsets.symmetric(vertical: 8.sp),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12.sp, horizontal: 12.sp),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Utils.normalText(
                                          " ${stoneDetailsIndex + 1} )",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Stone Type - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .stoneType ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Shape - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .shape ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Grade - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .grade ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Quality - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .quality ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Stone Quantity - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .stoneQty ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Dia wt - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .diaWt ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Metal Sr No - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .metalSrNo ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Size - ${styleDetailsController.model
                                              .value.data?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .size ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "MM Length - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .mmLength ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "MM Breadth - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .mmLength ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Quantity - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .stoneQty ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Setting Type - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .settingType ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Setting Mode - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .settingMode ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Prod. Setting Type - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .settingType ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Prod. Setting Mode - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .settingMode ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Is Center Stone - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .isCenterStone ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Min Dia wt - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .minDiaWt ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Min Dia Stones - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .minDiaStones ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Max Dia Stones - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .maxDiaStones ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Removable Stone - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .removableStone ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Exact Size - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .exactSize ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Stone Remarks - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .stoneDetails?[stoneDetailsIndex]
                                              .stoneRemarks ?? ""}",
                                        ),
                                      ]))),
                    ),
                  ],
                ),
              ),
            )),
        Utils.addGap(10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: GestureDetector(
              onTap: () {
                isExpanded4 = !isExpanded4;
                if (styleDetailsController.model.value.data?.styleDetails?[0]
                    .chargableDetails?.length ==
                    0) {
                  Utils.showToast("Chargeable Details Not Found");
                }
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.all(16.sp),
                width: width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1.sp),
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
                          "Chargeable Details",
                          textAlign: TextAlign.center,
                          style: Styles.textFontRegular(
                              size: 16, weight: FontWeight.w500),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            isExpanded4 = !isExpanded4;
                            setState(() {});
                            // print(styleDetailsController.model.value.data
                            //     ?.styleDetails?[0].findingDetails?.length);
                          },
                          child: Icon(
                            Icons.arrow_drop_down_circle_rounded,
                            color: AppColors.blue,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                    Visibility(
                      visible: isExpanded4,
                      child: ListView.builder(
                          padding: EdgeInsets.all(0.sp),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: styleDetailsController.model.value.data
                              ?.styleDetails?[0].chargableDetails?.length,
                          itemBuilder: (context, stoneDetailsIndex) =>
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.blue.withOpacity(0.3),
                                  ),
                                  margin: EdgeInsets.symmetric(vertical: 8.sp),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12.sp, horizontal: 12.sp),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Utils.normalText(
                                          " ${stoneDetailsIndex + 1} )",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Process Type - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .chargableDetails?[stoneDetailsIndex]
                                              .processType ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Process Name - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .chargableDetails?[stoneDetailsIndex]
                                              .processName ?? ""}",
                                        ),
                                      ]))),
                    ),
                  ],
                ),
              ),
            )),
        Utils.addGap(10),
        /* Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Container(
              padding: EdgeInsets.all(16.sp),
              width: width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 1.sp),
                  */ /*   boxShadow: [
                      BoxShadow(
                          color: AppColors.black53.withOpacity(0.1),
                          offset: Offset(0, 0),
                          spreadRadius: 2.sp,
                          blurRadius: 5.0.sp)
                    ],*/ /*
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
                        "Alloy Details",
                        textAlign: TextAlign.center,
                        style: Styles.textFontRegular(
                            size: 16, weight: FontWeight.w500),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          isExpanded5 = !isExpanded5;
                          setState(() {});
                        },
                        child: Icon(
                          Icons.arrow_drop_down_circle_rounded,
                          color: AppColors.purple,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                  Visibility(
                    visible: isExpanded5,
                    child: ListView.builder(
                        padding: EdgeInsets.all(0.sp),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: styleDetailsController.model.value.data
                            ?.styleDetails?[0].alloyDetails?.length,
                        itemBuilder: (context, stoneDetailsIndex) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.purple.withOpacity(0.3),
                            ),
                            margin: EdgeInsets.symmetric(vertical: 8.sp),
                            padding: EdgeInsets.symmetric(
                                vertical: 12.sp, horizontal: 12.sp),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Utils.normalText(
                                    " ${stoneDetailsIndex + 1} )",
                                  ),
                                  Utils.addGap(5),
                                  Utils.normalText(
                                    "Alloy - ${styleDetailsController.model.value.data?.styleDetails?[0].alloyDetails?[stoneDetailsIndex].alloy ?? ""}",
                                  ),
                                  Utils.addGap(5),
                                  Utils.normalText(
                                    "Sub-Alloy - ${styleDetailsController.model.value.data?.styleDetails?[0].alloyDetails?[stoneDetailsIndex].subAlloy ?? ""}",
                                  ),
                                  Utils.addGap(5),
                                  Utils.normalText(
                                    "Fineness - ${styleDetailsController.model.value.data?.styleDetails?[0].alloyDetails?[stoneDetailsIndex].fineness ?? ""}",
                                  ),
                                ]))),
                  ),
                ],
              ),
            )),
        Utils.addGap(10),*/
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: GestureDetector(
              onTap: () {
                isExpanded6 = !isExpanded6;
                if (styleDetailsController.model.value.data?.styleDetails?[0]
                    .findingDetails?.length ==
                    0) {
                  Utils.showToast("No Finding Details Found");
                }
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.all(16.sp),
                width: width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal, width: 1.sp),
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
                          "Finding Details",
                          textAlign: TextAlign.center,
                          style: Styles.textFontRegular(
                              size: 16, weight: FontWeight.w500),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            isExpanded6 = !isExpanded6;
                            // print(styleDetailsController.model.value.data
                            //     ?.styleDetails?[0].findingDetails?.length);
                            setState(() {});
                          },
                          child: Icon(
                            Icons.arrow_drop_down_circle_rounded,
                            color: Colors.teal,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                    Visibility(
                      visible: isExpanded6,
                      child: ListView.builder(
                          padding: EdgeInsets.all(0.sp),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: styleDetailsController.model.value.data
                              ?.styleDetails?[0].findingDetails?.length,
                          itemBuilder: (context, findingDetails) =>
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.teal.withOpacity(0.3),
                                  ),
                                  margin: EdgeInsets.symmetric(vertical: 8.sp),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12.sp, horizontal: 12.sp),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      children: [
                                        Utils.normalText(
                                          " ${findingDetails + 1} )",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Finding - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .findingDetails?[findingDetails]
                                              .finding ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "MetalKT - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .findingDetails?[findingDetails]
                                              .metalKt ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Weight - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .findingDetails?[findingDetails]
                                              .weight ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Quantity - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .findingDetails?[findingDetails]
                                              .qty ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Rate - ${styleDetailsController.model
                                              .value.data?.styleDetails?[0]
                                              .findingDetails?[findingDetails]
                                              .rate ?? ""}",
                                        ),
                                        Utils.addGap(5),
                                        Utils.normalText(
                                          "Finding Cost - ${styleDetailsController
                                              .model.value.data
                                              ?.styleDetails?[0]
                                              .findingDetails?[findingDetails]
                                              .findingcost ?? ""}",
                                        ),
                                      ]))),
                    ),
                  ],
                ),
              ),
            )),
        Utils.addGap(90),
      ],
    );
  }
}
