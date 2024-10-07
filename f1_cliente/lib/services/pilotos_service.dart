import 'dart:collection';
import 'dart:convert';

import 'package:http/http.dart' as http;

class PilotosService {
  final String apiUrl = 'http://10.0.2.2:8000/api';

  //método para obtener lista de pilotos con su equipo
  Future<List<dynamic>> pilotosConEquipo() async {
    var respuesta = await http.get(Uri.parse('${this.apiUrl}/pilotos/con-equipo'));

    //inducir una pausa para poder ver mensaje de cargando.
    //no ponga esto en una app real!
    //await Future.delayed(Duration(seconds: 3));

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    }
    return [];
  }

  Future<LinkedHashMap<String, dynamic>> pilotosAgregar(String nombre, String apellido, int numero, int puntos, int equipo_id) async {
    var respuesta = await http.post(
      Uri.parse(this.apiUrl + '/pilotos'),
      headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8', 'Accept': 'application/json'},
      body: json.encode(
        <String, dynamic>{
          'nombre': nombre,
          'apellido': apellido,
          'numero': numero,
          'puntos': puntos,
          'equipo_id': equipo_id,
        },
      ),
    );

    return json.decode(respuesta.body);
  }

  Future<bool> borrarPiloto(int pilotoId) async {
    var respuesta = await http.delete(Uri.parse(this.apiUrl + '/pilotos/' + pilotoId.toString()));
    return respuesta.statusCode == 200;
  }

  Future<LinkedHashMap> getPiloto(int pilotoId) async {
    var respuesta = await http.get(Uri.parse(this.apiUrl + '/pilotos/' + pilotoId.toString()));
    return json.decode(respuesta.body);
  }
}
