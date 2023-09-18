import 'dart:math';

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  void retornaClassificacao(String nome, double peso, double altura) {
    var imc1 = (peso / pow(altura, 2)) * 100;
    var imc = double.parse(imc1.toStringAsFixed(2));

    switch (imc) {
      case <= 16:
        print("\n$nome com imc: $imc Você esta na faixa de Magreza grave");
        break;
      case > 16 && <= 17:
        print("\n$nome com imc: $imc Você esta na faixa de Magreza moderada");
        break;
      case > 17 && <= 18.5:
        print("\n$nome com imc: $imc Você esta na faixa de Magreza leve");
        break;
      case > 18.5 && <= 25:
        print("\n$nome com imc: $imc Você esta na faixa Saudável");
        break;
      case > 25 && <= 30:
        print("\n$nome com imc: $imc Você esta na faixa Sobrepeso");
        break;
      case > 30 && <= 35:
        print("\n$nome com imc: $imc Você esta na faixa Obesidade grau 1");
        break;
      case > 35 && 40:
        print("\n$nome com imc: $imc Você esta na faixa Obesidade grau 2");
        break;
      case >= 40:
        print("\n$nome com imc: $imc Você esta na faixa saudável");
        break;
    }
  }
}
