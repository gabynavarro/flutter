import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navegacion_rutas/pages/home_page.dart';
import 'package:getx_navegacion_rutas/routes/app_pages.dart';
import 'package:getx_navegacion_rutas/routes/app_routes.dart';
import 'package:getx_navegacion_rutas/theme/app_theme.dart';

import 'bindings.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.INITIAL,
    theme: appThemeData,
    defaultTransition: Transition.rightToLeftWithFade,
    getPages: AppPages.pages,
    home: HomePage(),
    initialBinding: PageBinding(),
  ));
}
