import 'package:poo/create_user.dart';
import 'package:poo/objetos.dart';

void main(List<String> arguments) {
  var animal = Lobo(name: 'Lobinho');
  animal.setType();

  var person = PersonagemImpl();
  person.create('Bruno', 'Humano', 'Ladino');
  person.statics();

  var userMap = {
    'name': 'Bruno',
    'lastName': 'Bezerra',
    'age': '20',
  };

  final user = User.fromMap(userMap);

  // print(animal.name);
  // print(animal.animal);
  // print(animal.type);

  // print(person.name);
  // print(person.breed);
  // print(person.atk);
  // print(person.life);

  print(userMap);
  print(user.name);
}
