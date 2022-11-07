import 'dart:convert';

Trabajo trabajoModelFromJson(String str) => Trabajo.fromJson(json.decode(str));

String trabajoToJson(Trabajo data) => json.encode(data.toJson());

class Trabajo {
  Trabajo({
    this.id = "",
    this.nombre = "",
    this.valor = 0.00,
    this.remoto = true,
    this.activo = true,
  });

  String id;
  String nombre;
  double valor;
  bool remoto;
  bool activo;

  factory Trabajo.fromJson(Map<String, dynamic> json) => Trabajo(
        //id: json["id"],
        nombre: json["nombre"],
        valor: json["valor"],
        remoto: json["remoto"],
        activo: json["activo"],
      );

  Map<String, dynamic> toJson() => {
        //"id": id,
        "nombre": nombre,
        "valor": valor,
        "remoto": remoto,
        "activo": activo,
      };
}
