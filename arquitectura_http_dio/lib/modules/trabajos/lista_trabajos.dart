import 'package:arquitectura_http_dio/modules/trabajos/trabajo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global_widgets/loading_widget.dart';
import '../../routes/app_routes.dart';
import 'local_widgets/ListTrabajoHeader.dart';

class ListaTrabajos extends GetView<TrabajoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Trabajos"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Get.offAllNamed(AppRoutes.HOME);
            },
            tooltip: 'Ir a Home',
            icon: const Icon(Icons.home),
            //child: Icon(Icons.home),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTrabajoHeader(),
          ),
          Expanded(child: listaTrabajos()),
        ],
      ),
    );
  }

  Container listaTrabajos() {
    return Container(
      child: Obx(
        () => controller.status.value == Status.loading
            ? LoadingWidget()
            : ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(controller.trabajoList[index].nombre),
                    subtitle: Text("Precio por Hora: " +
                        controller.trabajoList[index].valor.toString() +
                        ' Remoto :${controller.trabajoList[index].remoto ? "Si" : "No"} '),
                    //  condition ? expr1 : expr2
                    leading: CircleAvatar(
                      child: Text(controller.trabajoList[index].nombre[0]
                          .toUpperCase()),
                    ),
                    trailing: TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 91, 18, 104)),
                      ),
                      onPressed: () async {
                        controller.IrItemTrabajo(index);
                      },
                      child: Icon(Icons.edit, color: Colors.white),
                    ),

                    // trailing: RaisedButton.icon(
                    //   label: Text(''),
                    //   color: Colors.deepPurple,
                    //   textColor: Colors.white,
                    //   icon: Icon(Icons.edit),
                    //   onPressed: () async {
                    //     controller.IrItemTrabajo(index);
                    //   }

                    //onTap: () => controller.IrItemTrabajo(index)
                  );
                },
                itemCount: controller.trabajoList.length,
              ),
      ),
    );
  }
}
