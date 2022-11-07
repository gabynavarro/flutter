import 'package:get/get.dart';

import '../model/trabajo_model.dart';
import '../provider/trabajo_provider.dart';

class TrabajoRepository {
  final TrabajoProvider _trabajosDataSource = Get.find<TrabajoProvider>();

  @override
  Future<Future<List>> getTrabajos() async {
    return _trabajosDataSource.getTrabajos();
  }

  Future<Future<List>> getFiltroTrabajos(String nombre) async {
    return _trabajosDataSource.getFiltroTrabajos(nombre);
  }

  Future<bool> crearTrabajo(Trabajo trabajo) async {
    return _trabajosDataSource.crearTrabajo(trabajo);
  }

  Future<bool> modificarTrabajo(Trabajo trabajo) async {
    return _trabajosDataSource.modificarTrabajo(trabajo);
  }
}
