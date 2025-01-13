class CPF {
  late String cpf;
  CPF(String cpf) {
    if (Validar(cpf)) {
      this.cpf = cpf;
    } else {
      print('CPF está inválido');
      this.cpf = '';
    }
  }

  static bool Validar(String cpf) {
    int? _CalcularDigito(int valorFinalDigito) {
      int cont = 0;
      int soma = 0;
      for (var i = valorFinalDigito; i >= 2; i--) {
        soma += int.parse(cpf[cont]) * i;
        cont++;
      }

      int resto = soma % 11;
      int? resut;

      if (resto < 2) {
        resut = 0;
      }
      if (resto >= 2) {
        resut = 11 - resto;
      }
      return resut;
    }

    if (cpf.length >= 11) {
      return _CalcularDigito(10) == int.parse(cpf[9]) &&
          _CalcularDigito(11) == int.parse(cpf[10]);
    }
    return false;
  }

  @override
  String toString() => this.cpf;
}

void main() {
   
  print(CPF.Validar('12367731446'));
}
