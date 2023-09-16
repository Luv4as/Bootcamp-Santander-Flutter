import 'package:meu_app_dart/Classes/enum/tipo_notificacao.dart';
import 'package:meu_app_dart/Classes/pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(String nome, String endereco, String cpf, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}):super(nome, endereco,tipoNotificacao: tipoNotificacao){
    _cpf = cpf;
  }

  @override
  String toString() {
    return {"Nome": super.getNome(), "Endereço": super.getEndereco(), "TipoNotificacao" : super.getTipoNotificacao(), "CPF" : _cpf}.toString();
  }
}
