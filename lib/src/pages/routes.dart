import 'package:flutter/material.dart';
import 'package:nash_soon/src/pages/Pelicula.dart';
import 'package:nash_soon/src/pages/home/PeliculaWidget.dart';
import 'package:nash_soon/src/pages/home/home.dart';
import 'package:nash_soon/src/pages/home/vista_general.dart';
import 'package:nash_soon/src/pages/home/vista_previa.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    HomePage.route: (context) => HomePage(),
    Vista.route: (context) => Vista(),
    VistaEspecifica.route: (context) => VistaEspecifica(),
    //.route : (context) => PeliculaWidget(pelicula: Pelicula)
  };
}
