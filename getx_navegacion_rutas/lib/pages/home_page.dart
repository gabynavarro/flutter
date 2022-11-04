import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../routes/app_routes.dart';

class HomePage extends GetView<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.40,
              //width: Get.width * 0.30,
              child: TextButton(
                style: ButtonStyle(
                  //remplaza RizeButton The FlatButton, RaisedButton and OutlineButton
                  foregroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 64, 131, 58)),
                ),
                child: Text("Ir a Primera Página"),
                onPressed: () {
                  Get.toNamed(AppRoutes.PRIMERPAGINA);
                  //Get.toNamed(AppRoutes.TERCERPAGINA,
                  //  arguments: 'Parametro de Home Page');
                  //Get.toNamed(AppRoutes.PRIMERPAGINA);
                  // Get.offAllNamed(AppRoutes.PRIMERPAGINA);
                  //Get.to(PrimerPagina());
                  //navigator.push(
                  //  MaterialPageRoute(
                  //    builder: (_) {
                  //      return PrimerPagina();
                  //    },
                  //  ),
                  //);
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: Get.width * 0.40,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: const Text(
                  "Ir a Tercer Página",
                  //style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Get.offAllNamed(AppRoutes.TERCERPAGINA);
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: Get.width * 0.40,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 85, 161, 233)),
                ),
                child: const Text(
                  "Ir a Cuarta Página",
                  //style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Get.offAllNamed(AppRoutes.CUARTAPAGINA);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
