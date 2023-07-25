class Password {
  String? password;
  bool isValid() {
    if (password == null) return false;
    if (password!.length > 8 && password!.length < 16) {
      if (password!.contains(RegExp(r'[A-Z]')) &&
          password!.contains(RegExp(r'[a-z]')) &&
          password!.contains(RegExp(r'[0-9]'))) {
        return true;
      }
    }
    return false;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}