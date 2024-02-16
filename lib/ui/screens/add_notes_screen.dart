import 'package:flutter/material.dart';
import 'package:goldstarllc/common/utils/Styles.dart';
import 'package:goldstarllc/common/utils/app_constants.dart';
import 'package:goldstarllc/common/utils/color_constants.dart';
import 'package:goldstarllc/common/utils/dimensions.dart';
import 'package:goldstarllc/common/utils/image_paths.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/controller/add_notes_controller.dart';
import 'package:goldstarllc/routes/app_pages.dart';

class AddNotesScreen extends StatefulWidget {
  final int? notesCode;
  const AddNotesScreen({super.key, this.notesCode});

  @override
  State<AddNotesScreen> createState() => _AddNotesScreenState();
}

class _AddNotesScreenState extends State<AddNotesScreen> {
  final AddNotesController addNotesController = Get.put(AddNotesController());
  @override
  Widget build(BuildContext context) {
    Dimensions.screenWidth = MediaQuery.of(context).size.width;
    Dimensions.screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  maxLines: 1,
                  textInputAction: TextInputAction.newline,
                  decoration: InputDecoration(
                      // hintText: "Enter Description",
                      // hintStyle: Styles.TextBoxHintStyle(14.0),
                      filled: true,
                      fillColor: AppColors.usableGray,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 212, 210, 210)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 212, 210, 210)),
                      ),
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey),
                  cursorColor: Colors.grey,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: TextFormField(
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
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 212, 210, 210)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 212, 210, 210)),
                      ),
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey),
                  cursorColor: Colors.grey,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return AppConstants.errorDescription;
                    }
                    return null;
                  },
                  controller: addNotesController.descriptionController,
                  keyboardType: TextInputType.streetAddress,
                  maxLines: 10,
                  textInputAction: TextInputAction.newline,
                  decoration: InputDecoration(
                      hintText: "Enter Description",
                      hintStyle: Styles.TextBoxHintStyle(14.0),
                      filled: true,
                      fillColor: AppColors.usableGray,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 212, 210, 210)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 212, 210, 210)),
                      ),
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey),
                  cursorColor: Colors.grey,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
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
                        if (widget.notesCode != null) {
                          addNotesController.noteCode.value =
                              widget.notesCode.toString();
                          addNotesController.validateLoginControllers(context);
                        }
                        addNotesController.validateLoginControllers(context);
                      },
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.sp))),
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.usableOrange)),
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
        ));
  }
}
