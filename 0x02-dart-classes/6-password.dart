class Password {
  String? _password = "";

  String get password => _password!;

  set password(String password) => _password = password;
  Password({password}) : _password = password;

  bool isValid() {
    if ((this._password?.length ?? 0) > 6 &&
        (this._password?.length ?? 0) < 18) {
      if (this._password!.contains(RegExp(r"(?=.*[a-z])(?=.*[A-Z])\w+"))) {
        if (this._password!.contains(RegExp(r'\d'))) {

          return true;
        }
      }
    }
    return false;
  }

  @override
  String toString() {
    return "Your Password is: ${this._password}";
  }
}
