import 'package:get/get.dart';

import '../../data/model/trabajo_model.dart';
import '../../data/repository/trabajo_repository.dart';
import '../../routes/app_routes.dart';

enum Status { loading, success, error }

class TrabajoController extends GetxController {
  final TrabajoRepository trabajoRepository;

  TrabajoController({required this.trabajoRepository});

  var remoto1 = true.obs;
  var activo1 = true.obs;

  final _trabajoList = [].obs;

  get trabajoList => this._trabajoList.value;
  set trabajoList(value) => this._trabajoList.value = value;

  final status = Status.loading.obs;

  final _trabajo = Trabajo().obs;

  get trabajo => _trabajo.value;
  set trabajo(value) => _trabajo.value = value;

  /// When the controller is initialized, make the http request
  @override
  void onInit() {
    getTrabajosAll();
    super.onInit();
  }

  IrItemTrabajo(index) {
    trabajo = trabajoList[index];
    remoto1 = RxBool(trabajo.remoto);
    activo1 = RxBool(trabajo.activo);

    Get.toNamed(AppRoutes.FORMULARIO);
  }

  Future<void> getTrabajosAll() async {
    return trabajoRepository.getTrabajos().then(
      (data) {
        this.trabajoList = data;
        status(Status.success);
      },

      /// In case of error, print the error and change the status
      /// to Status.error
      onError: (err) {
        print("$err");
        return status(Status.error);
      },
    );
  }

  Future<void> getFiltroTrabajos(String nombre) async {
    return trabajoRepository.getFiltroTrabajos(nombre).then(
      (data) {
        this.trabajoList = data;
        status(Status.success);
      },

      /// In case of error, print the error and change the status
      /// to Status.error
      onError: (err) {
        print("$err");
        return status(Status.error);
      },
    );
  }

  Future<void> crearTrabajo(Trabajo trabajo) async {
    try {
      await trabajoRepository.crearTrabajo(trabajo);

      getTrabajosAll();
    } catch (e) {
      print(e);
    }
  }

  Future<void> modificarTrabajo(Trabajo trabajo) async {
    try {
      await trabajoRepository.modificarTrabajo(trabajo);
      getTrabajosAll();
    } catch (e) {
      print(e);
    }
  }
}
