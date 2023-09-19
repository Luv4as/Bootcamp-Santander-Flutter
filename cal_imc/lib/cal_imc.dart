import 'dart:io';

import 'package:cal_imc/expetions/nome_invalido_exeption.dart';
import 'package:cal_imc/models/console_utils.dart';
import 'package:cal_imc/models/pessoa.dart';

void execute() {
  print("---------Bem vindo a calculadora de IMC--------");

  String nome = ConsoleUtils.lerStringComTexto("\nInsira seu nome");

  try {
    if (nome.trim() == "") {
      throw NomeInvalidoExeption();
    }
  } on NomeInvalidoExeption {
    print(NomeInvalidoExeption);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double peso = ConsoleUtils.lerDoubleComTexto("\nInsira seu peso: ")!;
  double altura = ConsoleUtils.lerDoubleComTexto("\nInsira sua altura: ")!;
  var pessoa = Pessoa(nome, peso, altura);

  pessoa.retornaClassificacao(nome, peso, altura);
}
