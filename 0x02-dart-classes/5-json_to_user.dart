class User {
  User(
      {required this.id,
      required this.name,
      required this.age,
      required this.height});
  String name;
  int id;
  int age;
  double height;
  Map toJson() {
    return {"id": id, "name": name, "age": age, "height": height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }

  String showName() {
    return "Hello $name";
  }

  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height)";
  }
}
