class Equacao {
  int fatorial(int fator) {
    int resultado_fato = 1;

    if (fator <= 0) {
      throw Exception("Não se pode ter um numeor fatorial negativo");
    }

    for (int i = 1; i <= fator; ++i) {
      resultado_fato *= i;
    }
    return resultado_fato;
  }

  BigInt potencia(BigInt base, int expoente) {
    BigInt res = BigInt.one;
    for (int i = 0; i < expoente; ++i) res *= base;
    return res;
  }

  double calcularTermos(int base, int fat, int div) {
    int expoente = fatorial(fat);
    BigInt numerador = potencia(BigInt.from(base), expoente);
    return numerador.toDouble() / div;
  }
}

void main() {
  final calcular = Equacao();

  List<Map<String, dynamic>> termos = [
    {'numerador': 3, 'fat': 4, 'denominador': 5, 'opera': '+'},
    {'numerador': 5, 'fat': 8, 'denominador': 10, 'opera': '+'},
    {'numerador': 7, 'fat': 12, 'denominador': 15, 'opera': '+'},
    {'numerador': 9, 'fat': 16, 'denominador': 20, 'opera': '-'},
    {'numerador': 11, 'fat': 20, 'denominador': 25, 'opera': '+'},
    {'numerador': 13, 'fat': 24, 'denominador': 30, 'opera': '-'},
    {'numerador': 15, 'fat': 28, 'denominador': 35, 'opera': '+'},
  ];

  double total = 0;

  for (var i in termos) {
    double valor = calcular.calcularTermos(
      i['numerador'],
      i['fat'],
      i['denominador'],
    );

    if (i['opera'] == '+') {
      total += valor;
    } else {
      total -= valor;
    }
  }
  print('O resultado de S é $total');
}
