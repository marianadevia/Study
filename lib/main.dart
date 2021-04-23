import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/alert_page.dart';
//import 'package:flutter_application_1/src/pages/avatar_page.dart';

//import 'package:flutter_application_1/src/pages/home_page.dart';
import 'package:flutter_application_1/src/routes/routes.dart';
//import 'package:flutter_application_1/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
          print('Ruta Llamada: ${settings.name}');
          return MaterialPageRoute(builder: (BuildContext context)=> AlertPage());
      } ,
    );
  }
}