import 'package:dioproject/service/gera_num_aleatorio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num = 0;
  var qtdCliques = 0;

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
      body: Container(
        //color: Colors.amberAccent,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.cyan[200],
                child: const Text(
                  "Ações do usuário",
                  //style: GoogleFonts.martianMono(fontSize: 20),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.lightGreen,
              child: Text(
                "O número de cliques foi: ${qtdCliques.toString()}",
                //style: GoogleFonts.martianMono(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                width: double.infinity,
                color: Colors.pink[200],
                child: Text(
                  "O número gerado foi: ${num.toString()}",
                  //style: GoogleFonts.martianMono(fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                        child: Text(
                          "Nome:",
                          //style: GoogleFonts.martianMono(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.blue[300],
                        child: Text(
                          "Lucas Venancio",
                          //style: GoogleFonts.martianMono(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.deepPurple[200],
                        child: Text(
                          "30",
                          //style: GoogleFonts.martianMono(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.shuffle_sharp),
          onPressed: () {
            setState(() {
              qtdCliques += 1;
              num = GeraNumAleatorio.geraNumAleatorio(100);
            });
          }),
    );
  }
}
