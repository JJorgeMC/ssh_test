import 'package:flutter/material.dart';

final _iconos = <String, IconData>{
  'accessibility': Icons.accessibility,
  'person_pin_circle': Icons.person_pin_circle
};

Icon cargarIcono(String nombre) {
  return Icon(
    _iconos[nombre],
    color: Colors.blueGrey,
  );
}
