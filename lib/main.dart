import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  void responder() {
    print('Resposta 1 foi selecionada!');
  }

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
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Resposta 2 foi selecionada');
              },
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Resposta 3 foi selecionada!'),
              child: const Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
