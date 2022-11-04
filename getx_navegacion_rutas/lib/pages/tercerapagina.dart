import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class TerceraPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera Página'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: Get.width * 0.40, //mide el acho de la pantalla al 40%
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  child: Text("Snackbar"),
                  onPressed: _showSnackBar,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  child: Text("Dialogo"),
                  onPressed: _showDialog,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 117, 113, 107)),
                  ),
                  child: Text("Bottom Sheet"),
                  onPressed: _showBottomSheet,
                ),
              ),
            ],
          ),
        ),
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

  _showSnackBar() {
    Get.snackbar(
      "Ver acá",
      "Snackbar es facil",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  _showDialog() {
    Get.defaultDialog(
      title:
          'Usted quiere realmente enviar los datos? Presionar OK para enviar.',
      content: const Text(
        'Al enviar los datos se van almacenar.',
        textAlign: TextAlign.center,
      ),
      onCancel: () => print("cancelar"),
      textCancel: 'Cancelar',
      textConfirm: 'Enviar',
      //buttonColor: Colors.blue,
      onConfirm: () => print("Ok"),
      confirmTextColor: Colors.black,
      //backgroundColor: Colors.orange[50],
      radius: 10.0,
      //middleTextStyle: TextStyle(fontSize: 5.0, fontWeight: FontWeight.bold),
    );
  }

  _showBottomSheet() {
    Get.bottomSheet(
      Container(
        child: Wrap(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.music_note),
                title: Text('Music'),
                onTap: () => {}),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
              onTap: () => {},
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
