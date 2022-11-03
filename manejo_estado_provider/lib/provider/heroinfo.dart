import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HeroeInfo with ChangeNotifier, DiagnosticableTreeMixin {
  String _heroe = "Capitan America";

  get getHeroe {
    return _heroe;
  }

  set setHeroe(String nombre) {
    this._heroe = nombre;
    //notificar a todos los widget involucrados
    notifyListeners();
  }
}
