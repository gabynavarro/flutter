import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../trabajo_controller.dart';

class ListTrabajoHeader extends GetView<TrabajoController> {
  TextEditingController editingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextFormField(
                controller: editingController,
                validator: (value) {
                  if (value!.length < 3) {
                    return 'Ingrese el nombre del trabajo';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
          ],
        ),
      ),
    );
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) return;

    _formKey.currentState!.save();

    controller.getFiltroTrabajos(editingController.value.text.trim());
  }
}
