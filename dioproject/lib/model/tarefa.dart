import 'package:flutter/material.dart';

class Tarefa {
  final String _id = UniqueKey().toString();
  String _descricao = "";
  bool _concluido = false;

  Tarefa(this._descricao, this._concluido);

  String getId() {
    return _id;
  }

  String getdescricao() {
    return _descricao;
  }

  bool getconcluido(concluido) {
    return _concluido;
  }

  void setDescricao(String descricao) {
    _descricao = descricao;
  }

  void setConcluido(bool concluido) {
    _concluido = concluido;
  }
}
