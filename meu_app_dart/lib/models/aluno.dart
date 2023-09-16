class Aluno {
  String _nome = "";
  final List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  List<double> getNotas() {
    return _notas;
  }

  void adicionarNota(double nota) {
    _notas.add(nota);
  }

  double retornaMedia() {
    var totalNotas = 0.0;

    for (var notas in _notas) {
      totalNotas = totalNotas + notas;
    }
    var media = totalNotas / _notas.length;
    return media.isNaN ? 0 : media;
  }

  bool foiAprovado(double notaCorte) {
    return retornaMedia() >= notaCorte;
  }
}
