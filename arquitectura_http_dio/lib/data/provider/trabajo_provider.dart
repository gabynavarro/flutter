import 'package:dio/dio.dart';
import 'package:get/get.dart' as getr;

import '../model/trabajo_model.dart';

class TrabajoProvider {
  final String _url = 'https://proyecto-flutter-v2-default-rtdb.firebaseio.com';

  final Dio _dio = getr.Get.find<Dio>();

  Future<List<Trabajo>> getTrabajos() async {
    final url = '$_url/trabajos.json';

    final Response response = await _dio.get(
      url,
    );

    if (response.statusCode == 200) {
      Map data = response.data;

      if (data.isEmpty) return [];
      final List<Trabajo> listaTrabajos = [];

      data.forEach((id, trbjo) {
        final trabajoTemp = Trabajo.fromJson(trbjo);
        trabajoTemp.id = id;
        listaTrabajos.add(trabajoTemp);
      });

      return listaTrabajos;
    } else {
      throw Exception();
    }
  }

  Future<List<Trabajo>> getFiltroTrabajos(String nombre1) async {
    var param1 = '"$nombre1"';
    var param2 = '"$nombre1\uf8ff"';
    final url1 =
        '$_url/trabajos.json?orderBy="nombre"&startAt=$param1&endAt=$param2';

    final Response response = await _dio.get(
      url1,
    );
    //response = await dio.get("/test", queryParameters: {"id": 12, "name": "wendu"});

    if (response.statusCode == 200) {
      Map data = response.data;

      if (data.isEmpty) return [];
      final List<Trabajo> listaTrabajos = [];

      data.forEach((id, trbjo) {
        final trabajoTemp = Trabajo.fromJson(trbjo);
        trabajoTemp.id = id;
        listaTrabajos.add(trabajoTemp);
      });

      return listaTrabajos;
    } else {
      throw Exception();
    }
  }

  Future<bool> crearTrabajo(Trabajo trabajo) async {
    final url = '$_url/trabajos.json';

    //final resp = await http.post(url, body: turnoToJson(turno));
    final resp = await _dio.post(url, data: trabajoToJson(trabajo));
    //.post(url, data: {"nombre": trabajo.nombre, "valor": trabajo.valor});

    Map data = resp.data;

    return true;
  }

  Future<bool> modificarTrabajo(Trabajo trabajo) async {
    final url = '$_url/trabajos/${trabajo.id}.json';

    final resp = await _dio.put(url, data: trabajoToJson(trabajo));
    //print(resp.statusCode);

    Map data = resp.data;

    return true;
  }
}
