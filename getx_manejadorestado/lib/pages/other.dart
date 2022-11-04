import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/controller.dart';

class Other extends StatelessWidget {
  // Puede pedirle a Get que busque un controlador que está siendo utilizado por otra página y le redirija a él.
  final Controller c = Get.find();

  @override
  Widget build(context) {
    // Acceder a la variable de recuento actualizada
    return Scaffold(
        appBar: AppBar(
            title: Text(
          c.count.string,
        )),
        body: Center(child: Text(c.count.string)));
  }
}
