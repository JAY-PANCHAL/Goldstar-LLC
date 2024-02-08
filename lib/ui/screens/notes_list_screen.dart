import 'package:flutter/material.dart';
import 'package:goldstarllc/common/utils/color_constants.dart';
import 'package:goldstarllc/common/utils/dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goldstarllc/common/utils/utility.dart';
import 'package:url_launcher/url_launcher.dart';

class NotesListScreen extends StatefulWidget {
  const NotesListScreen({super.key});

  @override
  State<NotesListScreen> createState() => _NotesListScreenState();
}

class _NotesListScreenState extends State<NotesListScreen> {
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

  @override
  Widget build(BuildContext context) {
    Dimensions.screenWidth = MediaQuery.of(context).size.width;
    Dimensions.screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_sharp)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.usableOrange,
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            SizedBox(height: 10.sp),
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
            SizedBox(
              height: 20.sp,
            ),
            Row(
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
            ),
            SizedBox(
              height: 25.sp,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(20.sp, 0, 20.sp, 0),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.sp),
                      color: AppColors.usableGray),
                  margin: EdgeInsets.only(bottom: 40.sp),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12.sp),
                            child: Text(
                              "FROCXXXXXXXX / ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(
                            "QSJDD484843",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          IconButton(
                              alignment: Alignment.topRight,
                              onPressed: () {
                                Utils.getDeleteDialog(context);
                              },
                              icon: Icon(
                                Icons.delete_outline,
                                color: Colors.red,
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(5.sp, 0.sp, 5.sp, 0.sp),
                              child: Text(
                                "-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -   -   -   ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(12.sp, 0.sp, 10.sp, 0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's ",
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
                              "Date 22/09/2023, 10:00 AM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
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
            ))
          ],
        ));
  }
}
