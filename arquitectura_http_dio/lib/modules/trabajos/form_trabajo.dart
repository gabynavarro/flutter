import 'package:arquitectura_http_dio/modules/trabajos/trabajo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:arquitectura_http_dio/utils/utils.dart' as utils;

import '../../routes/app_routes.dart';

class FormTrabajo extends GetView<TrabajoController> {
  final _formKey = GlobalKey<FormState>();
  final bool _guardando = false;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (Scaffold(
        appBar: AppBar(
          title: const Text('Formulario Trabajo'),
          leading: IconButton(
            onPressed: () {
              Get.offAllNamed(AppRoutes.HOME);
            },
            tooltip: 'Ir a Home',
            icon: const Icon(Icons.home),
            //child: Icon(Icons.home),
          ),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _crearNombre(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _crearValor(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _crearCheckboxListTile(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _crearDisponible(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.00),
                child: _crearBoton(),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.offAllNamed(AppRoutes.HOME);
          },
          tooltip: 'Ir a Home',
          child: const Icon(Icons.home),
        ),
      )),
    );
  }

  Widget _crearNombre() {
    return TextFormField(
      initialValue: controller.trabajo.nombre,
      textCapitalization: TextCapitalization.sentences,
      //decoration: InputDecoration(labelText: 'Nombre'),
      decoration: InputDecoration(
        labelText: 'Nombre',
        fillColor: Colors.grey[200],
        //filled: true,
        hintText: 'Ingresar Texto',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            //color: Colors.transparent,
            width: 4,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      onSaved: (value) => controller.trabajo.nombre = value,
      validator: (value) {
        if (value!.length < 3) {
          return 'Ingrese el nombre del trabajo';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearValor() {
    return TextFormField(
      initialValue: controller.trabajo.valor.toString(),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: 'Precio',
        fillColor: Colors.grey[200],
        //filled: true,
        hintText: 'Ingresar Texto',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            //color: Colors.transparent,
            width: 4,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      onSaved: (value) => controller.trabajo.valor = double.parse(value!),
      validator: (value) {
        if (utils.isNumeric(value!)) {
          return null;
        } else {
          return 'Sólo números';
        }
      },
    );
  }

  Widget _crearCheckboxListTile() {
    return CheckboxListTile(
      value: controller.remoto1.value,
      onChanged: (v) {
        controller.remoto1.value = v!;
      },
      title: const Text("Remoto"),
      subtitle: const Text("Solo Trabajo Remoto"),
    );
  }

  Widget _crearDisponible() {
    return SwitchListTile(
      value: controller.activo1.value,
      title: const Text('Trabajo Activo/Inactivo'),
      activeColor: Colors.deepPurple,
      onChanged: (value) => {controller.activo1.value = value},
    );
  }

  Widget _crearBoton() {
    return ElevatedButton.icon(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
          textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14, color: Colors.white))),
      label: const Text('Guardar'),
      icon: const Icon(Icons.save),
      onPressed: (_guardando) ? null : _submit,
    );
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) return;

    _formKey.currentState!.save();

    if (controller.trabajo.id == "") {
      controller.trabajo.activo = controller.activo1.value;
      controller.trabajo.remoto = controller.remoto1.value;
      await controller.crearTrabajo(controller.trabajo);

      Get.snackbar(
        'PROCESANDO',
        'Datos guardado',
      );
    } else {
      controller.trabajo.activo = controller.activo1.value;
      controller.trabajo.remoto = controller.remoto1.value;
      await controller.modificarTrabajo(controller.trabajo);
      Get.snackbar(
        'Procesando',
        'Dato Modificado',
      );
    }
  }
}
