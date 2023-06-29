class Pelicula {
  final String poster_path;
  final String titulo;
  final String lanzamiento;
  //final double valoracion;
  final String sinopsis;
  final bool isAdult;
  final String idioma;
 // final double popularidad;


  Pelicula({required this.titulo,
    required this.poster_path,
    required this.lanzamiento,
   // required this.valoracion,
    required this.sinopsis,
    required this.isAdult,
    required this.idioma,
    //required this.popularidad
  });

  factory Pelicula.fromJson(Map<String, dynamic> json) {
    return Pelicula(
        poster_path: json["poster_path"],
        titulo: json["title"],
        lanzamiento: json["release_date"],
        //valoracion: json["vote_average"],
        sinopsis: json["overview"],
        isAdult: json["adult"],
        idioma: json["original_language"],
        //popularidad: json["popularity"]
    );
  }

}