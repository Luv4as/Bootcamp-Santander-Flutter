import 'dart:math';

import 'package:cal_imc/models/console_utils.dart';

class Pessoa {
  String _nome = "";
  int _peso = 0;
  int _altura = 0;

  Pessoa(String nome, int peso, int altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(int peso) {
    _peso = peso;
  }

  void setAltura(int altura) {
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  int getPeso() {
    return _peso;
  }

  int getAltura() {
    return _altura;
  }

  void retornaClassificacao(int peso, int altura) {
    peso = ConsoleUtils.lerIntComTexto("Insira seu peso: ")!;
    altura = ConsoleUtils.lerIntComTexto("Insira sua altura: ")!;
    var imc = peso / pow(altura, 2);

    // if (imc <= 16) {
    //   print("Você esta na faixa de magreza grave");
    // } else if (16 < imc && imc <= 17) {
    //   print("Você esta na faixa de magreza moderada");
    // } else if (17 < imc && imc <= 18.5) {
    //   print("Você esta na faixa de magreza leve");
    // } else if (18.5 < imc && imc <= 25) {
    //   print("Você esta na faixa de magreza leve");
    // }

    switch (imc) {
      case <= 16:
        print("Você esta na faixa de Magreza grave");
        break;
      case > 16 && <= 17:
        print("Você esta na faixa de Magreza moderada");
        break;
      case > 17 && <= 18.5:
        print("Você esta na faixa de Magreza leve");
        break;
      case > 18.5 && <= 25:
        print("Você esta na faixa Saudável");
        break;
      case > 25 && <= 30:
        print("Você esta na faixa Sobrepeso");
        break;
      case > 30 && <= 35:
        print("Você esta na faixa Obesidade grau 1");
        break;
      case > 35 && 40:
        print("Você esta na faixa Obesidade grau 2");
        break;
      case >= 40:
        print("Você esta na faixa saudável");
        break;
    }
  }
}
