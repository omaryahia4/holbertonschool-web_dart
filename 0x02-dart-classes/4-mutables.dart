class Password {
  late String _password;
  Password({required String password}) {
    this.password = password;
  }
  String get password {
    return this._password;
  }

  void set password(String value) {
    this._password = value;
  }

  bool isValid() {
    if (this._password.length > 6 && this._password.length < 18) {
      if (this._password.contains(RegExp(r'[a-zA-Z]'))) {
        if (this._password.contains(RegExp(r'\d'))) {
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
