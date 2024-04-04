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
          ElevatedButton(onPressed: () => print('Azul Celeste'), child: Text('Resposta 1')),
          ElevatedButton(onPressed: () => print('Vermelho Raiva'), child: Text('Resposta 2')),
          ElevatedButton(onPressed: () => print('Amarelo Japones'), child: Text('Resposta 3'))
        ]),
      ),
    );
  }
}
