import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider();

  Future<List<dynamic>> cargarOpciones() async {
    final respuesta = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(respuesta);

    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = _MenuProvider();
