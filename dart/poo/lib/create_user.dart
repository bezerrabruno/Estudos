class User {
  final String name;
  final String lastName;
  final String age;

  User(
    this.name,
    this.lastName,
    this.age,
  );

  static User fromMap(Map user) {
    return User(
      user['name'],
      user['lastName'],
      user['age'],
    );
  }
}
