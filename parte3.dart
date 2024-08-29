abstract class EmpleadoTienda {
  String nombre;
  int horasTrabajadas;

  EmpleadoTienda(this.nombre, this.horasTrabajadas);

  double calcularSalario();

  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Horas trabajadas: $horasTrabajadas');
    print('Salario: \$${calcularSalario()}');
  }
}

// Clase concreta Vendedor
class Vendedor extends EmpleadoTienda {
  final double tasaPorHora = 20.0;

  Vendedor(String nombre, int horasTrabajadas)
      : super(nombre, horasTrabajadas);

  @override
  double calcularSalario() {
    return horasTrabajadas * tasaPorHora;
  }
}

// Clase Cajero
class Cajero extends EmpleadoTienda {
  final double tasaPorHora = 15.0;

  Cajero(String nombre, int horasTrabajadas)
      : super(nombre, horasTrabajadas);

  @override
  double calcularSalario() {
    return horasTrabajadas * tasaPorHora;
  }
}

void main() {
  Vendedor vendedor = Vendedor('Juan', 40);
  vendedor.mostrarDetalles();

  Cajero cajero = Cajero('Ana', 35);
  cajero.mostrarDetalles();
}

