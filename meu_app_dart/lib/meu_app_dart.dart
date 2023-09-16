import 'dart:io';

import 'package:meu_app_dart/exception/nome_invalido_exception.dart';
import 'package:meu_app_dart/models/aluno.dart';
import 'package:meu_app_dart/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas");

  String nome = ConsoleUtils.lerStringComTexto("Insira o nome do aluno: ");
  var aluno = Aluno(nome);

  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double? nota;

  do {
    nota = ConsoleUtils.lerDoubleComTextoSaida(
        "Digite a primeira nota ou S para sair", "S");

    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);

  print("\nAs notas digitadas foram: ${aluno.getNotas()}");

  print("A média das notas foi: ${aluno.retornaMedia()}");

  if (aluno.foiAprovado(7)) {
    print("\nO aluno ${aluno.getNome()} foi aprovado");
  } else {
    print("\nO aluno ${aluno.getNome()} foi reprovado");
  }
}
