import 'package:flutter/material.dart';

class Tarefa {
  String _id = UniqueKey().toString();
  String _descricao = "";
  bool _concluido = false;

  Tarefa(this._id, this._descricao, this._concluido);

  String getId() {
    return _id;
  }

  String getdescricao(descricao) {
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
