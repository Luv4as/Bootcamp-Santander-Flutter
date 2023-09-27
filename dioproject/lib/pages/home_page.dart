import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num = 0;

  void _geraNumAleatorio() {
    Random numAleatorio = Random();
    setState(() {
      num = numAleatorio.nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Chamando o build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu app"),
      ),
      body: Center(child: Text("O número gerado foi: ${num.toString()}")),
      floatingActionButton: FloatingActionButton(
          onPressed: _geraNumAleatorio, child: const Icon(Icons.shuffle_sharp)),
    );
  }
}