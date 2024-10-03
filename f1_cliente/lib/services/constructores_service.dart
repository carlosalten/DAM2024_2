import 'dart:convert';

import 'package:http/http.dart' as http;

class ConstructoresService {
  final String apiUrl = 'http://10.0.2.2:8000/api';

  //método para obtener lista de equipos con su puntaje y pilotos
  Future<List<dynamic>> equiposConPilotosPuntos() async {
    var respuesta = await http.get(Uri.parse('${this.apiUrl}/equipos/con-pilotos-puntos'));

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    }
    return [];
  }

  //método para obtener lista de equipos ordenados por nombre
  Future<List<dynamic>> equipos() async {
    var respuesta = await http.get(Uri.parse('${this.apiUrl}/equipos'));

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    }
    return [];
  }

  Future<bool> borrarEquipo(int equipoId) async {
    var respuesta = await http.delete(Uri.parse(this.apiUrl + '/equipos/' + equipoId.toString()));
    return respuesta.statusCode == 200;
  }
}
