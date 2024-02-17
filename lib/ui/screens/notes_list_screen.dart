import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:goldstarllc/common/utils/Styles.dart';
import 'package:goldstarllc/common/utils/color_constants.dart';
import 'package:goldstarllc/common/utils/utility.dart';
import 'package:goldstarllc/controller/notes_controller.dart';
import 'package:goldstarllc/routes/app_pages.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:url_launcher/url_launcher.dart';

import 'add_notes_screen.dart';

class NotesListScreen extends StatefulWidget {
  const NotesListScreen({super.key});

  @override
  State<NotesListScreen> createState() => _NotesListScreenState();
}

class _NotesListScreenState extends State<NotesListScreen> {
  final NotesController notesController = Get.put(NotesController());

  void launchGmail() async {
    const url =
        'https://myaccount.google.com/?utm_source=sign_in_no_continue&pli=1';
    if (await canLaunch(url)) {
      await launch(url, enableJavaScript: true);
    } else {
      Utils.showToast('Could not launch $url');
      throw 'Could not launch $url';
    }
    // final url = Uri(
    //   path:
    //       'https://gemini.google.com/app/39338e2e6215b19b', // Replace with recipient email
    //   // query:
    //   //     'subject=Your Subject&body=Your Message', // Add subject and body (optional)
    // );

    // if (await canLaunchUrl(url)) {
    //   await launchUrl(url);
    // } else {
    //   throw 'Could not launch Gmail';
    // }
  }

  void getData() async {
    await notesController.notesApi(context);
  }

  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = Utils.getScreenWidth(context);
    var height = Utils.getScreenHeight(context);

    return Obx(() {
      return ModalProgressHUD(
        inAsyncCall: notesController.isLoading.value,
        progressIndicator: Utils.loader(context),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: AppColors.white,
              title: Text(
                "Notes",
                style:
                    Styles.textFontRegular(size: 16, weight: FontWeight.w400),
              ),
              /* Image.asset(
                AppIcons.goldstar,
                height: kToolbarHeight - 10, */ /*width: 150.sp*/ /*
              ),*/
              leading: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Get.toNamed(Routes.addNotes);
              },
              backgroundColor: AppColors.usableOrange,
              child: Icon(Icons.add),
            ),
            body: Column(
              children: [
                SizedBox(height: 10.sp),
                /*       Container(
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
                                hintText: "Search in notes ..."),
                            onFieldSubmitted: (value) {
                              //       completedTaskController.apiCallForCompletedTask();
                            },
                          ),
                        ),
                        */ /*    Visibility(
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
                        ),*/ /*
                      ],
                    )),*/

                /*
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20.sp, 0.sp, 20.sp, 0.sp),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2.sp),
                                  blurRadius: 10.0.sp,
                                  spreadRadius: 1.0.sp,
                                  offset: Offset(4.0, 4.0.sp),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 4.0.sp),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Padding(
                                    padding: EdgeInsets.all(12.0.sp),
                                    child: Icon(Icons.search_rounded)),
                                hintText: "Search in Note...",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        */
                /*  SizedBox(
                  height: 20.sp,
                ),*/
                /*        Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.sp, 0.sp, 0.sp, 0.sp),
                      child: Text(
                        "Related Search",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),*/
                /* SizedBox(
                  height: 25.sp,
                ),*/
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
                  child: ListView.builder(
                    itemCount: notesController.notesList.length,
                    itemBuilder: (context, index) => Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10.sp),
                      child: Container(
                        decoration: BoxDecoration(
                            /*   boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],*/
                            borderRadius: BorderRadius.circular(12.sp),
                            color: AppColors.usableGray),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 12.sp),
                                  child: Text(
                                    "${notesController.notesList[index].title}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                    alignment: Alignment.topRight,
                                    onPressed: () {
                                      Utils.getDeleteDialog(context, () {
                                        notesController.deleteNotesApi(
                                            context,
                                            notesController
                                                .notesList[index].noteCode);
                                        Navigator.of(Get.overlayContext!,
                                                rootNavigator: true)
                                            .pop();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.delete_outline,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                            Utils.addGap(10),
                            Row(
                              children: List.generate(
                                  700 ~/ 10,
                                  (index) => Expanded(
                                        child: Container(
                                          color: index % 2 == 0
                                              ? Colors.transparent
                                              : Colors.grey,
                                          height: 2,
                                        ),
                                      )),
                            ),
                            Utils.addGap(20),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        12.sp, 0.sp, 10.sp, 0),
                                    child: Text(
                                      notesController
                                              .notesList[index].description ??
                                          "",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 10,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 12.sp),
                                  child: Text(
                                    "Date ${notesController.notesList[index].entryDate?.substring(0, 10)}, ${notesController.notesList[index].entryDate?.substring(11, 16)}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed: () {
                                      Get.to(AddNotesScreen(
                                        notesDetails:
                                            notesController.notesList[index],
                                      ))?.then((value) {
                                        getData();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      // color: Colors.black,
                                    )),
                                IconButton(
                                    onPressed: () {
                                      launchGmail();
                                    },
                                    icon: Icon(
                                      Icons.mail,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.sms,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            )),
      );
    });
  }
}
