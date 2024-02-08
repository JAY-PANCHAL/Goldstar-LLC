import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:goldstarllc/routes/app_pages.dart';

import 'common/dependency_injection.dart';
import 'common/service_locator.dart';
import 'common/utils/storage_service.dart';
import 'common/utils/strings.dart';

final GlobalKey<NavigatorState> navigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "navigator");

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  setup();
  Get.put(StorageService());
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //HttpOverrides.global = MyHttpOverrides();

  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: BusybeeApp()));
}

class BusybeeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BusybeeAppState();
  }
}

class BusybeeAppState extends State<BusybeeApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: false
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.root,
      getPages: AppPages.routes,
      title: Strings.appName,
    );

    /*return AppTheme(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.baseRoutes,
      builder: (context, widget) {
        final _appTheme = AppTheme.of(context);
        globalAppTheme = _appTheme;
        ScreenUtil.init(context,
            width: _appTheme.expectedDeviceWidth,
            height: _appTheme.expectedDeviceHeight,
            allowFontScaling: false);
        return Stack(
          children: <Widget>[
            StreamBuilder<bool>(
                initialData: true,
                stream: AppComponentBase.getInstance()
                    .getNetworkManager()
                    .internetConnectionStream,
                builder: (context, snapshot) {
                  return SafeArea(
                    child: AnimatedContainer(
                        height: !snapshot.data
                            ? _appTheme.getResponsiveHeight(100)
                            : 0,
                        duration: Utils.animationDuration,
                        color: _appTheme.redColor,
                        child: Material(
                          type: MaterialType.transparency,
                          child: Center(
                              child: Text("No Internet",
                                  style: _appTheme.noInternetTextStyle)),
                        )),
                  );
                }),
            StreamBuilder<Object>(
                initialData: false,
                stream: AppComponentBase.getInstance().progressDialogStream,
                builder: (context, snapshot) {
                  return IgnorePointer(ignoring: snapshot.data, child: widget);
                }),
          ],
        );
      },
    ));*/
  }
}
/*

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
*/
