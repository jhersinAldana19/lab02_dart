class Producto {
  String nombre;
  String categoria;
  double precio;

  Producto(this.nombre, this.categoria, this.precio);

  void mostrarDetalles() {
    print('Nombre: $nombre, Categoría: $categoria, Precio: $precio');
  }
}

class Electronico extends Producto {
  int garantia;

  Electronico(String nombre, String categoria, double precio, this.garantia)
      : super(nombre, categoria, precio);

  // Constructor personalizado
  Electronico.soloNombreyPrecio(String nombre, double precio)
      : this(nombre, 'Electrónicos', precio, 12);

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Garantía: $garantia meses');
  }
}

void main() {
  var producto1 = Producto('Short', 'Ropa', 15.3);
  producto1.mostrarDetalles();

  var electronico1 = Electronico('Televisor', 'Electrónicos', 500.0, 24);
  electronico1.mostrarDetalles();

  var electronico2 = Electronico.soloNombreyPrecio('Smartphone', 800.0);
  electronico2.mostrarDetalles();
}

