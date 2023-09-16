import 'dart:io';
import 'dart:convert';

class ConsoleUtils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static double? lerDouble() {
    var value = lerString();

    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }

  static double? lerDoubleComTextoSaida(String texto, String valorSaida) {
    do{
      try {
        var value = lerStringComTexto(texto).toUpperCase();
        if (value == valorSaida) {
          return null;
        }
        return double.parse(value);
      } 
      catch (e) {
        print(texto);
      }
    }while (true);
  }
}
