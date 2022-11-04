import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';
import 'home_page.dart';

class CuartaPagina extends GetView<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuarta Página'),
      ),
      body: const Center(
        child: Text("Cuarta Página"),
      ),
      //body: Center(
      //  child: (Get.arguments != null)
      //      ? Text('Arguments: ${Get.arguments}')
      //      : Text("No obtengo argumentos"),
      //),
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
