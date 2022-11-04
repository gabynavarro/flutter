import 'package:get/get.dart';
import '../bindings.dart';
import '../pages/cuartapagina.dart';
import '../pages/home_page.dart';
import '../pages/primerpagina.dart';
import '../pages/segundapagina.dart';
import '../pages/tercerapagina.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => HomePage(),
      binding: PageBinding(),
    ),
    GetPage(
      name: AppRoutes.HOMEPAGE,
      page: () => HomePage(),
      binding: PageBinding(),
    ),
    GetPage(
      name: AppRoutes.PRIMERPAGINA,
      page: () => PrimerPagina(),
      binding: PageBinding(),
    ),
    GetPage(
      name: AppRoutes.SEGUNDAPAGINA,
      page: () => SegundaPagina(),
      binding: PageBinding(),
    ),
    GetPage(
      name: AppRoutes.TERCERPAGINA,
      page: () => TerceraPagina(),
      binding: PageBinding(),
    ),
    GetPage(
      name: AppRoutes.CUARTAPAGINA,
      page: () => CuartaPagina(),
      binding: PageBinding(),
    ),
  ];
}
