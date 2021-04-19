  import 'package:flutter/material.dart';

  class HomePageTemp extends StatelessWidget {
    final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Componentes Temp'),
        ),
        body: ListView(
          children: _crearItems()
          //este no funciona children: _crearItemsCorta()
        ),
      );
    }

    List<Widget> _crearItems(){

      List<Widget> lista = new List<Widget>();
      for (String opt in opciones){
          final tempWidget =ListTile(
            title: Text(opt),
            subtitle: Text('Hola'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          );
          lista.add(tempWidget);
          lista.add(Divider());
      }
      return lista;
    }

    List<Widget> _crearItemsCorta(){
      var widgets = opciones.map((item){
        ListTile(title: Text(item +'!'),
        );
      }).toList();
      return widgets;
    }
  }