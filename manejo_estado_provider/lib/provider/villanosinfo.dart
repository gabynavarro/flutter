import 'package:flutter/material.dart';

class VillanoInfo with ChangeNotifier {
  String _villano = "VILLANOS";

  get getVillano {
    return _villano;
  }

  set setVillano(String nombre) {
    this._villano = nombre;
    //notificar a todos los widget involucrados

    notifyListeners();
  }
}
