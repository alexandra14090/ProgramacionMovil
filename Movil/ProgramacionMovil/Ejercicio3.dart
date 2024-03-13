bool esPalindromo(String texto) {
  texto = texto.toLowerCase().replaceAll(' ', '');
  return texto == texto.split('').reversed.join('');
}

void main() {
  String texto1 = "ana";
  String texto2 = "anita lava la tina";
  String texto3 = "hola mundo";
  
  print('$texto1 es palíndromo: ${esPalindromo(texto1)}');
  print('$texto2 es palíndromo: ${esPalindromo(texto2)}');
  print('$texto3 es palíndromo: ${esPalindromo(texto3)}');
}
