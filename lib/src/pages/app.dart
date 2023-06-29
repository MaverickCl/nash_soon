import 'package:flutter/material.dart';
import 'package:nash_soon/src/pages/home/PeliculaWidget.dart';
import 'package:nash_soon/src/pages/routes.dart';
import 'package:nash_soon/src/pages/home/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      routes: getRoutes(),
      initialRoute: '/nash_soon/src/pages/home/PeliculaWidget.dart'
    );
  }
}
