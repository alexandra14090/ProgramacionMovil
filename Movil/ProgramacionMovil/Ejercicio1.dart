class Persona {
  String nombre;
  int edad;
  String genero;

  Persona(this.nombre, this.edad, this.genero);

  void presentarse() {
    print("Hola, me llamo $nombre, tengo $edad años y soy $genero");
  }
}

void main() {
  var persona = Persona('Maria', 18, 'femenina');
  persona.presentarse();
}
