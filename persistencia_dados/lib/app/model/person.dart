class Person {
  final String name;
  final String age;
  final String clas;
  String history;
  int atk;
  int def;
  int life;

  Person({
    required this.name,
    required this.age,
    required this.clas,
    this.history = '',
    this.atk = 0,
    this.def = 0,
    this.life = 0,
  });

  static Map<String, dynamic> toMap(Person person) {
    final Map<String, dynamic> map = {
      'name': person.name,
      'age': person.age,
      'class': person.clas,
      'history': person.history,
      'atk': person.atk,
      'def': person.def,
      'life': person.life,
    };

    return map;
  }

  static Person fromMap(Map person) {
    final Person newPerson = Person(
      name: person['name'],
      age: person['age'],
      clas: person['class'],
      history: person['history'],
      atk: person['atk'],
      def: person['def'],
      life: person['life'],
    );
    return newPerson;
  }
}
