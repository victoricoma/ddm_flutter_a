import 'package:app/resposta.dart';
import 'package:flutter/material.dart';
import './questao.dart';

void main() {
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = ['Qual sua cor favorita?', 'Qual seu animal favorito?'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: [
          Questao(perguntas[perguntaSelecionada]),
       Resposta('Resposta 1', responder),
       Resposta('Resposta 2', responder),
       Resposta('Resposta 3', responder),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
