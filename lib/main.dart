import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("App Dados"),
          )
        ),
        body: MyHome(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  int _dadoEsquerdo = 5;
  int _dadoDireito = 1;

  void jogarDadoEsquerdo() {
    setState(() {
      _dadoEsquerdo = Random().nextInt(6) + 1;
    });
  }

  void jogarDadoDireito() {
    setState(() {
      _dadoDireito = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset("assets/$_dadoEsquerdo.png"),
              onPressed: jogarDadoEsquerdo,
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("assets/$_dadoDireito.png"),
              onPressed: jogarDadoDireito,
            ),
          )
        ],
      ),
    );
  }
}
