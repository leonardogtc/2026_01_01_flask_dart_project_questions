import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: <Widget>[
            Text(perguntas.elementAt(0)),
            ElevatedButton(onPressed: () {}, child: const Text('Resposta 1')),
            ElevatedButton(onPressed: () {}, child: const Text('Resposta 2')),
            ElevatedButton(onPressed: () {}, child: const Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}
