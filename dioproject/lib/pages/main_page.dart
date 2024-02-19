import 'package:dioproject/pages/card.dart';
import 'package:dioproject/pages/image_assets.dart';
import 'package:dioproject/pages/list_view.dart';
import 'package:dioproject/pages/list_view_horizontal.dart';
import 'package:dioproject/pages/tarefa_page.dart';
import 'package:dioproject/shared/widgets/custom_drawer.dart';
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
        drawer: CustomDrawer(),
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
                children: const [
                  CardPage(),
                  ImageAssetsPage(),
                  ListViewPage(),
                  ListViewHorizontal(),
                  TarefaPage(),
                ],
              ),
            ),
            BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  controller.jumpToPage(value);
                },
                currentIndex: posicaoPagina,
                items: const [
                  BottomNavigationBarItem(
                      label: "Pag1", icon: Icon(Icons.home)),
                  BottomNavigationBarItem(label: "Pag2", icon: Icon(Icons.add)),
                  BottomNavigationBarItem(
                      label: "Pag3", icon: Icon(Icons.person)),
                  BottomNavigationBarItem(
                      label: "Pag4", icon: Icon(Icons.image)),
                  BottomNavigationBarItem(
                      label: "tarefas", icon: Icon(Icons.list_alt_outlined)),
                ])
          ],
        ),
      ),
    );
  }
}
