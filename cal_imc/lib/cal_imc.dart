import 'package:cal_imc/models/console_utils.dart';
import 'package:cal_imc/models/pessoa.dart';

void execute() {
  print("---------Bem vindo a calculadora de IMC--------");

  String nome = ConsoleUtils.lerStringComTexto("\nInsira seu nome");
  double peso = ConsoleUtils.lerDoubleComTexto("\nInsira seu peso: ")!;
  double altura = ConsoleUtils.lerDoubleComTexto("\nInsira sua altura: ")!;
  var pessoa = Pessoa(nome, peso, altura);

  pessoa.retornaClassificacao(nome, peso, altura);
  
}
