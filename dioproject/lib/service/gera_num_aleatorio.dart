 import 'dart:math';

class GeraNumAleatorio {
    static int geraNumAleatorio(int numeroMaximo) {
    Random numAleatorio = Random();
    return numAleatorio.nextInt(numeroMaximo);

  }
}