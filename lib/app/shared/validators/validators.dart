class Validators {
  static String? validatePhone(String? value) {
    String pattern = r'^(\(\d{2}\)\s)(\d{4,5}\-\d{4})';
    RegExp regExp = new RegExp(pattern);

    if (value == null || value.isEmpty)
      return "O campo telefone é obrigatório.";
    else if (!regExp.hasMatch(value))
      return "O telefone informado não é válido.";
    return null;
  }

  static String? validateEmail(String? value) {
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = new RegExp(pattern);
    if (value == null || value.isEmpty)
      return "O campo e-mail é obrigatório.";
    else if (!regExp.hasMatch(value)) return "O e-mail informado não é válido.";
    return null;
  }
}
