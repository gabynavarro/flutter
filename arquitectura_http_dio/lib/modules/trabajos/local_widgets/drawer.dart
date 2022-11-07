import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class DrawerRt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.orange),
            child: Center(
              child: Text(
                "Menú Trabajos",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
          ListTile(
            title: const Text("Formulario"),
            leading: const Icon(Icons.home),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Get.offAllNamed(AppRoutes.FORMULARIO);
            },
          ),
          ListTile(
            title: const Text("Lista"),
            leading: const Icon(Icons.dashboard),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Get.offAllNamed(AppRoutes.LISTA_TRABAJO);
            },
          ),
        ],
      ),
    );
  }
}
