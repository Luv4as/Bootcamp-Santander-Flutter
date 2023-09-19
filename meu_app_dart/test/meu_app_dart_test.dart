import 'package:meu_app_dart/meu_app_dart.dart' as app;
import 'package:test/test.dart';

void main() {
  // esses individuais fazem a mesma coisa dos grupos

  test('Calcula o valor do produto com desconto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  // test(
  //     'Calcula o valor do produto com desconto sem porcentagem, passando o valor do produto zerado',
  //     () {
  //   expect(() => app.calcularDesconto(0, 150, false),
  //       throwsA(TypeMatcher<ArgumentError>()));
  // });

  // test('Calcula o valor do produto com desconto com porcentagem', () {
  //   expect(app.calcularDesconto(1000, 15, true), 850);
  // });

  // test('Calcula o valor do produto com desconto zerado', () {
  //   expect(() => app.calcularDesconto(1000, 0, true),
  //       throwsA(TypeMatcher<ArgumentError>()));
  // });

  group("Calcula o valor do produto com desconto: ", () {
    var valuesToTest = {
      {'valor': 1000, 'desconto': 150, 'percentual': false}: 850,
      {'valor': 1000, 'desconto': 15, 'percentual': true}: 850,
    };
    valuesToTest.forEach((values, expected) {
      test('$values: $expected', () {
        expect(
            app.calcularDesconto(
                double.parse(values["valor"].toString()),
                double.parse(values["desconto"].toString()),
                values["percentual"] == true),
            equals(expected));
      });
    });
  });

  group(
      "Calcula o valor do produto informando valores zerados, deve gerar erro: ",
      () {
    var valuesToTest = {
      {'valor': 0, 'desconto': 150, 'percentual': false},
      {'valor': 1000, 'desconto': 0, 'percentual': true},
    };
    for (var values in valuesToTest) {
      test('$values', () {
        expect(
            () => app.calcularDesconto(
                double.parse(values["valor"].toString()),
                double.parse(values["desconto"].toString()),
                values["percentual"] == true),
            throwsA(TypeMatcher<ArgumentError>()));
      });
    }
  });

  test('Retornar CEP', () async {
    var body = await app.retornarCEP("01001000");
    print(body);
    expect(body["bairro"], equals("Sé"));
  });
}
