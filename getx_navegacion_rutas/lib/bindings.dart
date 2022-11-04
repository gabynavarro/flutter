import 'package:get/get.dart';
import 'controller/controller.dart';

class PageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() => Controller());
  }
}
