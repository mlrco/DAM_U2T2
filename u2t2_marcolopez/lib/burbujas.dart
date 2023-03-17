import 'package:flutter/material.dart';

class Burbujas extends StatefulWidget {
  const Burbujas({Key? key}) : super(key: key);

  @override
  _BurbujasState createState() => _BurbujasState();
}

class _BurbujasState extends State<Burbujas> {
  String _texto = 'O' * 100;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
        Text(_texto, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,),),
        SizedBox(height: 60,),
        ElevatedButton(
          child: Text('POP!'),
          onPressed: () {
            setState(() {
              int index = _texto.indexOf('O');
              if (index != -1) {
                _texto = _texto.replaceRange(index, index + 1, '.');
              }
            });
          },
        ),
      ],
    );
  }
}

