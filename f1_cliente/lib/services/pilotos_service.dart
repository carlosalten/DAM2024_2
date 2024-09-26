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
}
