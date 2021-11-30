import 'package:logica/lacos.dart';
import 'package:logica/objetos.dart';

void main(List<String> arguments) {
  //bhaskara(9, -24, 16);

  var animal = Lobo(name: 'Lobinho');
  animal.setType();

  var person = PersonagemImpl();
  person.create('Bruno', 'Humano', 'Ladino');
  person.statics();

  var timer = Timer();
  timer.start3(5);

  print(animal.name);
  print(animal.animal);
  print(animal.type);

  print(person.name);
  print(person.breed);
  print(person.atk);
  print(person.life);
}
