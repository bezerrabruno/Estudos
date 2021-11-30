class Dog {
  String? _name;
  String? _age;

  Dog();

  set setName(String name) {
    _name = name;
  }

  set setAge(String age) {
    _age = age;
  }

  get getName {
    return _name;
  }

  get getAge {
    return _age;
  }
}
