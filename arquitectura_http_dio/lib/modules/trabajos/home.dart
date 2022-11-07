import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import 'local_widgets/drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var medida = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: DrawerRt(),
      body: Center(
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: medida.size.width * 0.40,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 91, 18, 104)),
                  ),
                  onPressed: () async {
                    Get.offAllNamed(AppRoutes.FORMULARIO);
                  },
                  child: const Text("Formulario"),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: medida.size.width * 0.40,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 91, 18, 104)),
                  ),
                  onPressed: () async {
                    Get.offAllNamed(AppRoutes.LISTA_TRABAJO);
                  },
                  child: const Text("Lista productos"),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
