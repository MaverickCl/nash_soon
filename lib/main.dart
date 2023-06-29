
import 'package:flutter/material.dart';
import 'package:nash_soon/src/pages/app.dart';
import 'package:nash_soon/src/pages/Pelicula.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nash_soon/src/pages/home/PeliculaWidget.dart';

void main() {
  runApp(App());
}
class App extends StatefulWidget {
  @override
  _App createState() => _App();
}
  class _App extends State<App> {

    List<Pelicula> _peliculas  = new List<Pelicula>.empty();

    @override
    void initState() {
      super.initState();
      _populateAllMovies();
    }

    void _populateAllMovies() async {
      final peliculas = await _fetchAllMovies();
      setState(() {
        _peliculas = peliculas;
      });
    }

    Future<List<Pelicula>> _fetchAllMovies() async {
      final response = await http.get(
          "https://api.themoviedb.org/3/movie/upcoming?api_key=79b4a229c1132e2940d5cfd6cf51e46a&language=en-US&page=1");

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        Iterable list = result["results"];
        return list.map((pelicula) => Pelicula.fromJson(pelicula)).toList();
      } else {
        throw Exception("Failed to load movies!");
      }
    }
    @override
    Widget build(BuildContext context) {

      return MaterialApp(
          title: "Movies App",
          home: Scaffold(
              appBar: AppBar(
                  title: Text("Movies")
              ),
              body: PeliculaWidget(peliculas: _peliculas)
          )
      );

    }
  }

