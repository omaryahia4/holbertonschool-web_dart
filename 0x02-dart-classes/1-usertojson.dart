class User {
  User({required this.name, required this.age, required this.height});
  String name;
  int age;
  double height;
  Map toJson() {
    return {"name": name, "age": age, "height": height};
  }

  String showName() {
    return "Hello $name";
  }
}
