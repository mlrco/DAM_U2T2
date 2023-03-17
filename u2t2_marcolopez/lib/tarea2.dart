import 'package:flutter/material.dart';
import 'burbujas.dart';
import 'colores.dart';
import 'snack.dart';


class Tarea2 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {return _Tarea2();}
}
class _Tarea2 extends State<Tarea2>{
  int _indice = 0;

  void _cambiarIndice(int indice){
    setState(() {
      _indice = indice;
    });
  }

  final List<Widget> _paginas = [
    Burbujas(),
    Colores(),
    Snack(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarea 2'),
      ),
      body: _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.bubble_chart_outlined), label: "Burbujas", backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.color_lens_outlined), label: "Colores", backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.icecream), label: "Snack", backgroundColor: Colors.green),
        ],
        currentIndex: _indice,
        showUnselectedLabels: false,
        onTap: _cambiarIndice,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        iconSize: 30,
      ),
    );
  }
}