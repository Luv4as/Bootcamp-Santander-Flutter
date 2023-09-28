import 'package:dioproject/service/gera_num_aleatorio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("Chamando o build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meu app",
          //style: GoogleFonts.martianMono(),
        ),
      ),
      body: Center(
          child: Text(
        "O número gerado foi: ${num.toString()}",
        //style: GoogleFonts.martianMono(fontSize: 20),
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.shuffle_sharp),
          onPressed: () {
            setState(() {
              num = GeraNumAleatorio.geraNumAleatorio(100);
            });
          }),
    );
  }
}
