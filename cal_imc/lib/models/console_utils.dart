import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static int? lerInt() {
    var value = lerString();

    try {
      return int.parse(value);
    } catch (e) {
      return null;
    }
  }

  static int? lerIntComTexto(String texto) {
    print(texto);
    return lerInt();
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
}