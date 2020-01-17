import 'package:flutter/material.dart';

class MapPageTemp extends StatefulWidget {
  MapPageTemp({Key key}) : super(key: key);

  @override
  _MapPageTempState createState() => _MapPageTempState();
}

class _MapPageTempState extends State<MapPageTemp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba del mapa'),
      ),
    );
  }
}
