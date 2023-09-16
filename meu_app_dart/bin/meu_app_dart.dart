import 'package:meu_app_dart/Classes/enum/tipo_notificacao.dart';
import 'package:meu_app_dart/Classes/pessoaFisica.dart';

void main(List<String> arguments) {

  var pessoaFisica1 = PessoaFisica("danilo", "Rua 2", "12345678901", tipoNotificacao: TipoNotificacao.SMS);
  print(pessoaFisica1);
}
