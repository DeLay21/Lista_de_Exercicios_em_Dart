class Equacao {
  int termos;
  double soma;

  Equacao(this.termos, this.soma);

  double faotrial(int fator) {
    double resultado_fato = 1;

    if (fator <= 0) {
      throw Exception("Não se pode ter um numeor fatorial negativo");
    }

    for (int i = 1; i <= fator; ++i) {
      resultado_fato *= i;
    }
    return resultado_fato;
  }
}
