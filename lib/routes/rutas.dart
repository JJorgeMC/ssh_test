import 'package:flutter/material.dart';

import 'package:foraneos/pages/HomePage.dart';
import 'package:foraneos/pages/ConstruccionPage.dart';
import 'package:foraneos/pages/MapPageTemp.dart';

Map<String, WidgetBuilder> cargarRutas() {
  return <String, WidgetBuilder>{
    '/': (context) => HomePage(),
    'construccion': (context) => ConstruccionPage(),
    'mapa': (context) => MapPageTemp(),
  };
}
