void main() {
  double total = 0;
  const Map<String, double> boloPrecos = {
    'ovos': 5.5,
    'chocolate': 7.5,
    'cenoura': 6.5,
  };
  const List<String> ordem = ['ovos', 'chocolate', 'morango'];

  for (var bolo in ordem) {
    if (boloPrecos.containsKey(bolo)) {
      total += boloPrecos[bolo]!;
    } else {
      print("Não tem $bolo no bolo");
    }
  }
  print("O valor do bolo deu: $total");
}
