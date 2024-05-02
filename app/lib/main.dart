import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é o seu time de futebol favorito?',
        'respostas': ['São Paulo', 'Corinthians', 'Palmeiras', 'Santos']
      },
      {
        'texto': 'Qual é seu Deus do Rock favorito?',
        'respostas': [
          'Fred Mercury',
          'Elvis Presley',
          'Kurt Cobain',
          'Jhon Lennon'
        ]
      },
      {
        'texto': 'Qual é sua universidade favorita?',
        'respostas': ['USP', 'UNESP', 'UNICAMP', 'UFSCar']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['texto'] as String),
            Resposta('Resposta 1', responder),
            Resposta('Resposta 2', responder),
            Resposta('Resposta 3', responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
