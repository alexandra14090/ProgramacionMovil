class Producto {
  String _nombre;
  double _precio;
  int _cantidadInventario;

  Producto(this._nombre, this._precio, this._cantidadInventario);

  String get nombre => _nombre;
  set nombre(String value) => _nombre = value;

  double get precio => _precio;
  set precio(double value) => _precio = value;
  //inventario 
  int get cantidadInventario => _cantidadInventario;
  set cantidadInventario(int value) => _cantidadInventario = value;

  // Método para realizar una compra
  void comprar(int cantidad) {
    if (cantidad > 0) {
      _cantidadInventario += cantidad;
      print('Se han comprado $cantidad unidades de $_nombre.');
    } else {
      print('La cantidad debe ser mayor que cero.');
    }
  }

  // Método para realizar una venta
  void vender(int cantidad) {
    if (cantidad > 0 && cantidad <= _cantidadInventario) {
      _cantidadInventario -= cantidad;
      print('Se han vendido $cantidad unidades de $_nombre.');
    } else if (cantidad > _cantidadInventario) {
      print('No hay suficientes unidades en inventario.');
    } else {
      print('La cantidad debe ser mayor que cero.');
    }
  }

  // Método para ver los detalles del producto
  void mostrarDetalles() {
    print('Detalles del Producto:');
    print('Nombre: $_nombre');
    print('Precio: \$$_precio');
    print('Cantidad en Inventario: $_cantidadInventario');
  }
}

void main() {
  Producto producto1 = Producto('Camiseta', 25.99, 50);

  // Mostrar detalles del producto
  producto1.mostrarDetalles();

  // Realizar una compra
  producto1.comprar(10);
  producto1.mostrarDetalles();

  // Realizar una venta
  producto1.vender(5);
  producto1.mostrarDetalles();
}
