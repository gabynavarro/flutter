import 'package:arquitectura_http_dio/routes/app_pages.dart';
import 'package:arquitectura_http_dio/routes/app_routes.dart';
import 'package:arquitectura_http_dio/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'modules/trabajos/home.dart';
import 'modules/trabajos/trabajo_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: TrabajoBinding(),
      initialRoute: AppRoutes.INITIAL,
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      home: Home(),
    );
  }
}
