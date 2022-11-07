import 'package:arquitectura_http_dio/modules/trabajos/trabajo_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../data/provider/trabajo_provider.dart';
import '../../data/repository/trabajo_repository.dart';

class TrabajoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio());
    Get.lazyPut(() => TrabajoProvider());

    Get.lazyPut(() => TrabajoRepository());

    Get.lazyPut<TrabajoController>(
        () => TrabajoController(trabajoRepository: Get.find()));
  }
}
