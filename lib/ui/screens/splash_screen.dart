import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/utils/dimensions.dart';
import '../../common/utils/image_paths.dart';
import '../../controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  final SplashController _splashController = Get.put(SplashController());

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
    Dimensions.screenWidth = MediaQuery.of(context).size.width;
    Dimensions.screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
          height: Dimensions.screenHeight,
          width: Dimensions.screenWidth,
          color: Colors.white,
          /*   height: Dimensions.screenHeight,
          width: Dimensions.screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AppIcons.splashLogo),fit: BoxFit.fill,),
          ),*/
          child: Center(
        child: Image.asset(AppIcons.splashLogo),
      )),
    );
  }
}
