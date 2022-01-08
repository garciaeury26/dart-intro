// cuado le pones void significa que no va regresar nadaa la funcion
// pero sino regresara por defecto un tipo dynamic
// void => no es lo mismo a null
void main(List<String> arguments) {
  print('Hello world!');

  print('\n Tipos de datos');

  // trata de no utilizar el var => aunque dart reconazca el tipado

  final title = 'Dark soul'; // su valor no va a cambiar => const
  var vida = 100;
  String nombre = 'Eury joel';
  int edad = 18;
  double dinero = 1000.5;
  bool vivo = true;
  String estado = '';
  bool? hueco = null; // puede tener null => como valor

  if (vivo) {
    estado = 'Vivo';
    if (hueco == null) print('Estas en modo hueco');
  } else {
    estado = 'muerto';
  }

  print('\n Nombre: $nombre Edad: $edad Estado: $estado');

  print("\n Lista de enemigos");

  List enemigos = [1, 2, 5, 6, 7, 3];
  List<String> anillos = [
    'tigre',
    'fuego',
    'Oscuridad'
  ]; //puedo indicarle el tipado

  enemigos.add('Vampiro'); //agregar elemento => dynamic
  final masEnemigos = List.generate(2, (int index) => '$index Gigante');

  print(enemigos[0]); // imprimir un elemento en spesifico
  print(enemigos);
  print(masEnemigos);

  print('\n El Map => es como un odjeto');

  Map dragon = {'nombre': 'Dragon Castigador', 'eda': '1000', 'vida': 100};
  dragon.addAll({'poder': 500});

  Map<String, dynamic> player = {
    'name': 'Joel',
    'Clase': 'Caballero',
    'vida': 100,
    'poder': 100,
  };

  print(dragon['nombre']);
  print(player['name']);

  //funciones
  print(caballeroNegro('El sangriento', player['name'], 1));

  print(quitarVida(vida: 100));
}

//funciones
String caballeroNegro(String alias, [String name = 'caballero', int opt = 1]) {
  switch (opt) {
    case 1:
      return 'HOlA como estas $alias $name';

    case 2:
      return 'He estado Esperandote';

    default:
      return 'HOlA como estas $name';
  }
}

int quitarVida({required int vida}) {
  return vida - 10;
}
