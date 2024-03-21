import 'package:flutter/material.dart';

void main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual sua cor preferida?',
      'Qual seu animal preferido?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergunta'),
        ),
        body: Column(children: [
          Text(perguntas[0]),
          const ElevatedButton(onPressed: null, child: Text('Resposta 1')),
          const ElevatedButton(onPressed: null, child: Text('Resposta 2')),
          const ElevatedButton(onPressed: null, child: Text('Resposta 3')),
        ]),
      ),
    );
  }
}
