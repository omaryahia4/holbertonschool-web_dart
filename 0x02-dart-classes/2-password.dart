class Password {
  String password = "";

  bool isValid() {
    if (this.password.length > 6 && this.password.length < 18) {
      if (this.password.contains(RegExp(r'[a-zA-Z]'))) {
        if (this.password.contains(RegExp(r'\d'))) {
          return true;
        }
      }
    }
    return false;
  }
  @override
  String toString() {
    return "Your Password is: ${this.password}";
  }
}
