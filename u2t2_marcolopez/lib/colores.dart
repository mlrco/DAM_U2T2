import 'package:flutter/material.dart';
import 'dart:math';

class Colores extends StatefulWidget {
  const Colores({Key? key}) : super(key: key);

  @override
  _ColoresState createState() => _ColoresState();
}

class _ColoresState extends State<Colores> {
  void actualizaColores() {
    final random = Random();
    colores = List.generate(20, (index) {
      return Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    });
  }
  String texto = '¡ESTO ES UNA FIESTA!';
  List<Color> colores = [];
  @override
  Widget build(BuildContext context) {
    actualizaColores();
    final caracteres = <Widget>[];
    for (int i = 0; i < 20; i++) {
      final chars = Text(
        texto[i],
        style: TextStyle(
          color: colores[i],
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      );
      caracteres.add(chars);
    }
    return ListView(
      padding: EdgeInsets.all(60),
      children: [

        SizedBox(height: 16),
        Row(children: caracteres,),
        ElevatedButton(
          onPressed: () {
            setState(() {
              actualizaColores();
            });
          },
          child: Text('Cambiar colores'),
        ),
      ],
    );
  }
}

