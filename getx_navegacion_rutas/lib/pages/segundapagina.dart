import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import 'home_page.dart';

class SegundaPagina extends GetView<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Página'),
      ),
      // body: Center(
      //   child: Obx(() => Text(
      //         "${controller.parametro}",
      //         style: TextStyle(fontSize: 50),
      //       )),
      // ),
      body: Center(
        child: (Get.arguments != null)
            ? Text('Arguments: ${Get.arguments}')
            : Text("No obtengo argumentos"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        isExtended: true,
        onPressed: () {
          Get.to(HomePage());
        },
      ),
    );
  }
}
