abstract class Personagem {
  final String name;
  final String breed;
  final String clas;
  late int atk;
  late int def;
  late int life;

  Personagem(
    this.name,
    this.breed,
    this.clas,
  );

  void statics() {}
}

class PersonagemImpl implements Personagem {
  late String _newName;
  late String _newBreed;
  late String _newClas;

  @override
  int atk = 1;

  @override
  int def = 1;

  @override
  int life = 1;

  @override
  String get name => _newName;

  @override
  String get breed => _newBreed;

  @override
  String get clas => _newClas;

  void create(String name, String breed, String clas) {
    _newName = name;
    _newBreed = breed;
    _newClas = clas;
  }

  @override
  void statics() {
    if (breed == 'Humano') {
      atk += 2;
      def += 2;
      life += 2;
    } else if (breed == 'Elfo') {
      atk += 3;
      def += 1;
      life += 2;
    } else if (breed == 'Anão') {
      atk += 1;
      def += 3;
      life += 2;
    } else if (breed == 'Gigante') {
      atk += 1;
      def += 2;
      life += 3;
    } else {
      atk += 0;
      def += 0;
      life += 0;
    }
  }
}

class Animal {
  final String animal;
  late String type;

  Animal(this.animal);

  void setType() {
    if (animal == 'Lobo') {
      type = '1';
    } else if (animal == 'Passaro') {
      type = '2';
    }
  }
}

class Lobo extends Animal {
  final String name;
  final int? age;

  Lobo({
    required this.name,
    this.age = 0,
  }) : super('Lobo');
}
