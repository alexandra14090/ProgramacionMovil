List<List<int>> separarParesImpares(List<int> numeros) {
  List<int> pares = [];
  List<int> impares = [];

  for (int numero in numeros) {
    if (numero % 2 == 0) {
      pares.add(numero);
    } else {
      impares.add(numero);
    }
  }

  pares.sort();
  impares.sort();

  return [pares, impares];
}

void main() {
  List<int> numeros = [1, 50, 3, 4, 5, 90, 17];
  List<List<int>> resultado = separarParesImpares(numeros);

  print("Números pares: ${resultado[0]}");
  print("Números impares: ${resultado[1]}");
}
