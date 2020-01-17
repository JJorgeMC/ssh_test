import 'package:flutter/material.dart';
import 'package:foraneos/providers/menu_provider.dart';
import 'package:foraneos/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foraneos"),
      ),
      body: _lista(),
    );
  }
}

//contuyo mi propio Widget
Widget _lista() {
  return FutureBuilder(
      future: menuProvider.cargarOpciones(),
      initialData: [],
      builder: (context, snapshot) {
        return ListView(
          children: _items(snapshot.data, context),
        );
      });
}

List<Widget> _items(List<dynamic> opts, BuildContext context) {
  List<Widget> listaOpciones = [];

  opts.forEach((opt) {
    final item = ListTile(
      leading: cargarIcono(opt['icon']),
      trailing: Icon(Icons.arrow_forward_ios),
      title: Text(opt['texto']),
      onTap: () => Navigator.pushNamed(context, opt['ruta']),
    );

    listaOpciones..add(item)..add(Divider());
  });

  return listaOpciones;
}
