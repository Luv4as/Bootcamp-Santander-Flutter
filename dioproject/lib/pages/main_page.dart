import 'package:dioproject/pages/dados_cadastrais.dart';
import 'package:dioproject/pages/pagina1.dart';
import 'package:dioproject/pages/pagina2.dart';
import 'package:dioproject/pages/pagina3.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPagina = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main page"),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 8),
                      width: double.infinity,
                      child: const Text("Dados cadastrais")),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DadosCadastraisPage(
                                  texto: "Dados cadastrais",
                                  dados: ["Nome", "Endereço"],
                                )));
                  },
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 8),
                      width: double.infinity,
                      child: const Text("Configurações")),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 8),
                      width: double.infinity,
                      child: const Text("Termos de uso e privacidade")),
                  onTap: () {},
                ),
                const Divider()
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    posicaoPagina = value;
                  });
                },
                children: const [Pagina1Page(), Pagina2Page(), Pagina3Page()],
              ),
            ),
            BottomNavigationBar(
                onTap: (value) {
                  controller.jumpToPage(value);
                },
                currentIndex: posicaoPagina,
                items: [
                  BottomNavigationBarItem(
                      label: "Pag1", icon: Icon(Icons.home)),
                  BottomNavigationBarItem(label: "Pag2", icon: Icon(Icons.add)),
                  BottomNavigationBarItem(
                      label: "Pag3", icon: Icon(Icons.person))
                ])
          ],
        ),
      ),
    );
  }
}
