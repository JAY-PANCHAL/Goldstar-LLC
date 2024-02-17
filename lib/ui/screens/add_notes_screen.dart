import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/common/utils/Styles.dart';
import 'package:goldstarllc/common/utils/app_constants.dart';
import 'package:goldstarllc/common/utils/color_constants.dart';
import 'package:goldstarllc/common/utils/dimensions.dart';
import 'package:goldstarllc/common/utils/utility.dart';
import 'package:goldstarllc/controller/add_notes_controller.dart';
import 'package:goldstarllc/network/model/notesmodel.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNotesScreen extends StatefulWidget {
  final int? styleCode;
  final NotesDetails? notesDetails;

  const AddNotesScreen({super.key, this.styleCode, this.notesDetails});

  @override
  State<AddNotesScreen> createState() => _AddNotesScreenState();
}

class _AddNotesScreenState extends State<AddNotesScreen> {
  final AddNotesController addNotesController = Get.put(AddNotesController());

  @override
  void initState() {
    if (widget.styleCode != null) {
      addNotesController.styleCodeController.text = "${widget.styleCode}";
    }

    if (widget.notesDetails != null) {
      addNotesController.titleController.text =
          widget.notesDetails?.title ?? "";
      addNotesController.descriptionController.text =
          widget.notesDetails?.description ?? "";
      addNotesController.styleCodeController.text =
          "${widget.notesDetails?.llcAppStyleCode}";
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Dimensions.screenWidth = MediaQuery.of(context).size.width;
    Dimensions.screenHeight = MediaQuery.of(context).size.height;

    return Obx(() {
      return ModalProgressHUD(
          color: Colors.black.withOpacity(0.6),
          dismissible: false,
          progressIndicator: Utils.loader(context),
          inAsyncCall: addNotesController.isLoading.value,
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                  backgroundColor: AppColors.white,
                  leading: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  centerTitle: true,
                  title: Text(
                    "Add Notes",
                    style: Styles.textFontRegular(
                        size: 16, weight: FontWeight.w400, color: Colors.black),
                  )),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(height: 20.sp),
                    SizedBox(
                      height: 25.sp,
                    ),
                    Visibility(
                      visible: widget.notesDetails?.llcAppStyleCode != null,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Style no ",
                                style: Styles.textFontRegular(
                                    size: 14,
                                    weight: FontWeight.w400,
                                    color: Colors.black)),
                            Utils.addGap(10),
                            TextFormField(
                              keyboardType: TextInputType.streetAddress,
                              maxLines: 1,
                              enabled: false,
                              controller:
                                  addNotesController.styleCodeController,
                              textInputAction: TextInputAction.newline,
                              decoration: InputDecoration(
                                  // hintText: "Enter Description",
                                  // hintStyle: Styles.TextBoxHintStyle(14.0),
                                  filled: true,
                                  fillColor: AppColors.usableGray,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 212, 210, 210)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 212, 210, 210)),
                                  ),
                                  focusColor: Colors.grey,
                                  hoverColor: Colors.grey),
                              cursorColor: Colors.grey,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: widget.styleCode != null,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Style no ",
                                style: Styles.textFontRegular(
                                    size: 14,
                                    weight: FontWeight.w400,
                                    color: Colors.black)),
                            Utils.addGap(10),
                            TextFormField(
                              keyboardType: TextInputType.streetAddress,
                              maxLines: 1,
                              enabled: false,
                              controller:
                                  addNotesController.styleCodeController,
                              textInputAction: TextInputAction.newline,
                              decoration: InputDecoration(
                                  // hintText: "Enter Description",
                                  // hintStyle: Styles.TextBoxHintStyle(14.0),
                                  filled: true,
                                  fillColor: AppColors.usableGray,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 212, 210, 210)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 212, 210, 210)),
                                  ),
                                  focusColor: Colors.grey,
                                  hoverColor: Colors.grey),
                              cursorColor: Colors.grey,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Title",
                              style: Styles.textFontRegular(
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: Colors.black)),
                          Utils.addGap(10),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppConstants.errorTitle;
                              }
                              return null;
                            },
                            controller: addNotesController.titleController,
                            keyboardType: TextInputType.streetAddress,
                            maxLines: 1,
                            textInputAction: TextInputAction.newline,
                            decoration: InputDecoration(
                                hintText: "Enter Title",
                                hintStyle: Styles.TextBoxHintStyle(14.0),
                                filled: true,
                                fillColor: AppColors.usableGray,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 212, 210, 210)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 212, 210, 210)),
                                ),
                                focusColor: Colors.grey,
                                hoverColor: Colors.grey),
                            cursorColor: Colors.grey,
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description",
                              style: Styles.textFontRegular(
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: Colors.black)),
                          Utils.addGap(10),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppConstants.errorDescription;
                              }
                              return null;
                            },
                            controller:
                                addNotesController.descriptionController,
                            keyboardType: TextInputType.streetAddress,
                            maxLines: 10,
                            textInputAction: TextInputAction.newline,
                            decoration: InputDecoration(
                                hintText: "Enter Description",
                                hintStyle: Styles.TextBoxHintStyle(14.0),
                                filled: true,
                                fillColor: AppColors.usableGray,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 212, 210, 210)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 212, 210, 210)),
                                ),
                                focusColor: Colors.grey,
                                hoverColor: Colors.grey),
                            cursorColor: Colors.grey,
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    SizedBox(
                        width: 280.sp,
                        height: 50.sp,
                        child: ElevatedButton(
                            onPressed: () {
                              if (widget.notesDetails?.noteCode != null) {
                                addNotesController.noteCode.value =
                                    "${widget.notesDetails?.noteCode}";
                              }
                              addNotesController
                                  .validateLoginControllers(context);
                            },
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.sp))),
                                backgroundColor: MaterialStatePropertyAll(
                                    AppColors.usableOrange)),
                            child: Text(
                              "Save Note",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ))),
                    SizedBox(
                      height: 30.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SizedBox(
                          width: 280.sp,
                          child: Text(
                            "Close",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.sp),
                          )),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                  ],
                ),
              )));
    });
  }
}
