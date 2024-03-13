List<String> ordenarAlfanumericamente(List<String> lista) {
  lista.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
  return lista;
}

void main() {
  List<String> listaEntrada = ['manzana', '021laptop', 'zapato', '&2top'];
  List<String> listaOrdenada = ordenarAlfanumericamente(listaEntrada);
  
  print('Lista de entrada: $listaEntrada');
  print('Lista ordenada alfanuméricamente: $listaOrdenada');
}
