// ignore: file_names
import 'package:flutter/material.dart';
import 'package:nash_soon/src/pages/home/vista_general.dart';
import 'package:nash_soon/src/pages/routes.dart';

class VistaEspecifica extends StatelessWidget {
  static String route = 'home/vistageneral/vistaespecifica';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        titleSection,
        textTitleSection,
        textSection,
        estreno,
      ]),
    );
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /*2*/
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            'No Time To Die',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
  Widget textTitleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8, right: 30),
          child: Image.asset(
            'images/poster007.jpg',
            width: 100,
            height: 150,
            fit: BoxFit.scaleDown,
          ),
        ),
        Container(
          child: Text(
            'Dirección: Cary Fukunaga.\n\n'
            'Producción: Michael G. Wilson.\n\n'
            'Protagonistas: Daniel Craig,\nRami Malek,\nLéa Seydoux.',
          ),
        ),
      ],
    ),
  );
  Widget textSection = Container(
    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    width: double.maxFinite,
    child: Card(
      elevation: 0,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 50, 25, 50),
            title: Text('Sinopsis'),
            subtitle: Text(
              'EL legendario espía James Bond ha dejado el servicio activo. Su paz dura poco ya que su viejo amigo Felix Leiter de la CIA aparece pidiendo ayuda, lo que lleva a Bond al rastro de un misterioso villano armado con nueva tecnología peligrosa.',
              softWrap: true,
            ),
          )
        ],
      ),
    ),
  );
  Widget estreno = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Estreno',
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
          Text(
            '30 de septiembre de 2021',
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ],
      ));
}
