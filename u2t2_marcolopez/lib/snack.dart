import 'package:flutter/material.dart';
import 'dart:math';

class Snack extends StatefulWidget {
  const Snack({Key? key}) : super(key: key);

  @override
  _SnackState createState() => _SnackState();
}

class _SnackState extends State<Snack> {
  TextEditingController textController = TextEditingController(
      text: 'TEXTO TEXTO TEXTO');

  void _mostrarSnackbar() {
    final snackBar = SnackBar(
      content: Text(textController.text),
      duration: Duration(seconds: 3),
      action: SnackBarAction(
        label: 'Cerrar',
        onPressed: () {},
      ),

    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
    @override
    Widget build(BuildContext context) {
      return ListView(
        padding: EdgeInsets.all(60),
        children: [
          TextField(
            controller: textController,
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: _mostrarSnackbar,
            child: Text('MOSTRAR SNACKBAR'),
          ),
        ],
      );
    }
  }

