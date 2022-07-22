import '6-password.dart';

class User extends Password {
  int? id;
  String name;
  int age;
  double height;
  String? user_password;

  User(
      {int? this.id,
      required this.name,
      required this.age,
      required this.height,
      String? this.user_password});

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
    final pass = Password(password: user_password);

    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${pass.isValid()}})";
  }
}
