import 'package:dioproject/model/tarefa.dart';
import 'package:dioproject/repositories/tarefa_repository.dart';
import 'package:flutter/material.dart';

class TarefaPage extends StatefulWidget {
  const TarefaPage({super.key});

  @override
  State<TarefaPage> createState() => _TarefaPageState();
}

class _TarefaPageState extends State<TarefaPage> {
  var tarefaRepository = TarefaRepository();
  var _tarefas = const <Tarefa>[];
  var descricaoController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void obterTarefas() async {
    _tarefas = await tarefaRepository.listarTarefas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            descricaoController.text = "";
            showDialog(
                context: context,
                builder: (BuildContext bc) {
                  return AlertDialog(
                    title: Text("Adicionar tarefa"),
                    content: TextField(
                      controller: descricaoController,
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancelar")),
                      TextButton(
                          onPressed: () async {
                            await tarefaRepository.adicionar(
                                Tarefa(descricaoController.text, false));
                            Navigator.pop(context);
                            setState(() {});
                          },
                          child: const Text("Salvar"))
                    ],
                  );
                });
          }),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: ListView.builder(
            itemCount: _tarefas.length,
            itemBuilder: (BuildContext bc, int index) {
              var tarefa = _tarefas[index];
              // return Text(tarefa.getdescricao());
              return Text("tarefa");
            }),
      ),
    );
  }
}
