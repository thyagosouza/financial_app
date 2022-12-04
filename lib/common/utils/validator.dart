class Validator {
  Validator._();
  //? STATIC faz parate da classe e não do objeto da classe

  static String? validateName(String? value) {
    final condition =
        RegExp(r"^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$");
    if (value != null && value.isEmpty) {
      return 'Esse campo não pode ser vazio.';
    }
    if (value != null && !condition.hasMatch(value)) {
      return 'Nome inválido. Digite um nome válido';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    final condition = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+");
    if (value != null && value.isEmpty) {
      return 'Esse campo não pode ser vazio.';
    }
    if (value != null && !condition.hasMatch(value)) {
      return 'Email inválido. Digite um email válido';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    final condition =
        RegExp(r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$");
    if (value != null && value.isEmpty) {
      return 'Esse campo não pode ser vazio.';
    }
    if (value != null && !condition.hasMatch(value)) {
      return 'Senha inválida. Digite uma senha válida';
    }
    return null;
  }

  static String? validateConfirmPassword(String? first, String? second) {
    if (first != second) {
      return 'As senhas são diferentes. Por favor, corrija para continuar';
    }
    return null;
  }
}
