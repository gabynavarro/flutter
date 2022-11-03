import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HeroeInfo with ChangeNotifier {
  String _heroe = "HEROES";
  Color color = Colors.black;

  get getHeroe {
    return _heroe;
  }

  set setHeroe(String nombre) {
    this._heroe = nombre;
    //notificar a todos los widget involucrados
    this.color = (nombre == "SUPERMAN") ? Colors.blue : Colors.red;
    notifyListeners();
  }
}
