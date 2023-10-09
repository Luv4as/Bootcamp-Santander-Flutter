import 'package:dioproject/repositories/linguagens_repository.dart';
import 'package:dioproject/repositories/nivel_repository.dart';
import 'package:dioproject/shared/widgets/text_label.dart';
import 'package:flutter/material.dart';

class DadosCadastraisPage extends StatefulWidget {
  const DadosCadastraisPage({super.key});

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  var nomeController = TextEditingController(text: "");
  var dataController = TextEditingController(text: "");
  DateTime? dataNascimento;
  var nivelRepository = NivelRepository();
  var linguagensRepository = LinguagensRepository();
  var niveis = [];
  var linguagens = [];
  var linguagenselecionadas = [];
  var nivelSelecionado = "";
  double salarioEscolhido = 0;
  int tempoExperiencia = 0;
  bool salvando = false;

  @override
  void initState() {
    niveis = nivelRepository.retornaMiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  List<DropdownMenuItem<int>> returnItens(int quantidadeMaxima) {
    var itens = <DropdownMenuItem<int>>[];
    for (var i = 0; i <= quantidadeMaxima; i++) {
      itens.add(DropdownMenuItem(
        value: i,
        child: Text(i.toString()),
      ));
    }
    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus dados"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 40),
        child: salvando
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                children: [
                  const TextLabel(texto: "Nome"),
                  TextField(
                    controller: nomeController,
                  ),
                  const TextLabel(texto: "Data de nascimento"),
                  TextField(
                    controller: dataController,
                    readOnly: true,
                    onTap: () async {
                      var data = await showDatePicker(
                          context: context,
                          initialDate: DateTime(2000, 1, 1),
                          firstDate: DateTime(1900, 1, 1),
                          lastDate: DateTime(2023, 12, 31));
                      if (data != null) {
                        dataController.text = data.toString();
                        dataNascimento = data;
                      }
                    },
                  ),
                  const TextLabel(texto: "Nivel de experiência"),
                  Column(
                      children: niveis
                          .map((nivel) => RadioListTile(
                              //dense: true,
                              title: Text(nivel.toString()),
                              selected: nivelSelecionado == nivel,
                              value: nivel.toString(),
                              groupValue: nivelSelecionado,
                              onChanged: (value) {
                                print(value);
                                setState(() {
                                  nivelSelecionado = value.toString();
                                });
                              }))
                          .toList()),
                  const TextLabel(texto: "Linguagens usadas"),
                  Column(
                      children: linguagens
                          .map((linguagem) => CheckboxListTile(
                              //dense: true,
                              title: Text(linguagem),
                              value: linguagenselecionadas.contains(linguagem),
                              onChanged: (bool? value) {
                                if (value!) {
                                  setState(() {
                                    linguagenselecionadas.add(linguagem);
                                  });
                                } else {
                                  setState(() {
                                    linguagenselecionadas.remove(linguagem);
                                  });
                                }
                              }))
                          .toList()),
                  const TextLabel(texto: "Tempo de experiencia"),
                  DropdownButton(
                      value: tempoExperiencia,
                      isExpanded: true,
                      items: returnItens(50),
                      onChanged: (value) {
                        setState(() {
                          tempoExperiencia = int.parse(value.toString());
                        });
                      }),
                  TextLabel(
                      texto:
                          "Pretenção salarial. R\$ ${salarioEscolhido.round()}"),
                  Slider(
                      min: 0,
                      max: 10000,
                      value: salarioEscolhido,
                      onChanged: (double value) {
                        setState(() {
                          salarioEscolhido = value;
                        });
                      }),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          salvando = false;
                        });
                        if (nomeController.text.trim().length < 2) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Nome deve ser preenchido")));
                          return;
                        }
                        if (dataNascimento == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text("Data de nascimento inválida")));
                          return;
                        }
                        if (nivelSelecionado == "") {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      "Selecione um nível de experiência")));
                          return;
                        }
                        if (linguagenselecionadas.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      "Selecione pelo menos uma linguagem")));
                          return;
                        }
                        if (linguagenselecionadas.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      "Selecione pelo menos uma linguagem")));
                          return;
                        }
                        // if (tempoExperiencia == 0) {
                        //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        //       content: Text("Necessário min de 1 ano de experiencia")));
                        //   return;
                        // }
                        setState(() {
                          salvando = true;
                        });
                        Future.delayed(const Duration(seconds: 2), () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Dados Salvos")));
                          setState(() {
                            salvando = false;
                          });
                          Navigator.pop(context);
                        });
                      },
                      child: const Text("Salvar"))
                ],
              ),
      ),
    );
  }
}
