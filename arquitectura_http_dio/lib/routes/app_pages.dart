import 'package:get/route_manager.dart';

import '../modules/trabajos/form_trabajo.dart';
import '../modules/trabajos/home.dart';
import '../modules/trabajos/lista_trabajos.dart';
import '../modules/trabajos/trabajo_binding.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => Home(),
      binding: TrabajoBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => Home(),
      binding: TrabajoBinding(),
    ),
    GetPage(
      name: AppRoutes.LISTA_TRABAJO,
      page: () => ListaTrabajos(),
      binding: TrabajoBinding(),
    ),
    GetPage(
      name: AppRoutes.FORMULARIO,
      page: () => FormTrabajo(),
      binding: TrabajoBinding(),
    )
  ];
}
