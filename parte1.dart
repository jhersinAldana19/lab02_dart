class Producto {
  // Propiedades
  String nombre;
  String categoria;
  double precio;
  
  // Constructor
  Producto(this.nombre, this.categoria, this.precio);
  
  // Método
  void mostrarDetalles() {
    print('Nombre: $nombre, Categoria: $categoria, Precio: $precio');
  }
}

void main() {
  var producto1 = Producto('Short', 'ropa', 15.3);
  
  producto1.mostrarDetalles();
}



class Electronico extends Producto {
  // Propiedad
  int garantia; 
  
  // Constructor
  Electronico(String nombre, String categoria, double precio, this.garantia)
      : super(nombre, categoria, precio);
  
  // Método 
  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Garantía: $garantia meses');
  }
}



