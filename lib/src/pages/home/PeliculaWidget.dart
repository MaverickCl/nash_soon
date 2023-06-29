import 'package:flutter/material.dart';
import 'package:nash_soon/src/pages/Pelicula.dart';
import 'package:nash_soon/src/pages/routes.dart';

class PeliculaWidget extends StatelessWidget {
  final List<Pelicula> peliculas;

  PeliculaWidget({required this.peliculas});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: peliculas.length,
        itemBuilder: (context, index) {
          final pelicula = peliculas[index];

          return ListTile(
              title: Row(
            children: [
              SizedBox(
                  width: 120,
                  child: ClipRRect(
                    child: Image.network('http://image.tmdb.org/t/p/w500' +
                        pelicula.poster_path),
                    borderRadius: BorderRadius.circular(10),
                  )),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(pelicula.titulo),
                      Text(pelicula.lanzamiento),
                      //Text(pelicula.popularidad)
                    ],
                  ),
                ),
              )
            ],
          ));
        });
  }
}
