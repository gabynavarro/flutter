import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../routes/app_routes.dart';

class PrimerPagina extends GetView<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primer Página'),
      ),
      body: Center(
        child: Container(
          width: Get.width * 0.40,
          height: Get.height * 0.20,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: TextButton(
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 117, 150, 243)),
            ),
            child: Text("Ir a Seguna Página"),
            onPressed: () {
              controller.parametro.value = "Valor enviado de primerpagina";
              Get.toNamed(AppRoutes.SEGUNDAPAGINA,
                  arguments: "Argumento Primer Pag");
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        isExtended: true,
        onPressed: () {
          Get.offAllNamed(AppRoutes.HOMEPAGE);
        },
      ),
    );
  }
}
