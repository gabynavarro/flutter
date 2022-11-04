import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_manejadorestado/pages/other.dart';

import 'model/controller.dart';

void main() => runApp(GetMaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(context) {
    // Cree una instancia de su clase usando Get.put() para que esté disponible para todas las rutas "secundarias" allí.
    final Controller c = Get.put(Controller());

    return Scaffold(
        // Utilice Obx(()=> para actualizar Text() siempre que se cambie el recuento.
        appBar: AppBar(title: Obx(() => Text("Clicks: " + c.count.string))),

        // Reemplace el Navigator.push de 8 líneas por un simple Get.to(). No necesitas contexto
        body: Center(
            child: ElevatedButton(
                child: Text("Go to Other"), onPressed: () => Get.to(Other()))),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: c.increment));
  }
}
