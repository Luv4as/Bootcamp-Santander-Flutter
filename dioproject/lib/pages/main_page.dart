import 'package:dioproject/pages/dados_cadastrais.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main page"),
        ),
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 22, horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                      width: double.infinity,
                      child: Text("Dados cadastrais")),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DadosCadastraisPage()));
                  },
                ),
                Divider(),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                      width: double.infinity,
                      child: Text("Configurações")),
                  onTap: () {},
                ),
                Divider(),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                      width: double.infinity,
                      child: Text("Termos de uso e privacidade")),
                  onTap: () {},
                ),
                Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
