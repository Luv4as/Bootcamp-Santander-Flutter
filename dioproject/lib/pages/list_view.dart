import 'package:dioproject/shared/app_images.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset(AppImages.notionLogo),
          title: Text("Usuário1"),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Olá tudo bem?"), Text("8:59")],
          ),
          trailing: PopupMenuButton<String>(
            onSelected: (menu) {
              print(menu);
            },
            itemBuilder: (BuildContext bc) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(value: "opcao 1", child: Text("opção 1")),
                PopupMenuItem<String>(value: "opcao 1", child: Text("opção 2")),
                PopupMenuItem<String>(value: "opcao 1", child: Text("opção 3"))
              ];
            },
          ),
        ),
        Image.asset(AppImages.notionLogo),
        Image.asset(AppImages.paisagem1),
        Image.asset(AppImages.paisagem2),
      ],
    );
  }
}
