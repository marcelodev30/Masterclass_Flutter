import 'pessoa.dart';

class Imc {
  double _imc = 0;
  Pessoa pessoa;

  Imc(this.pessoa);

  double calcular() {
    _imc = pessoa.getPeso / (pessoa.getAltura * pessoa.getAltura);
    return _imc;
  }

  @override
  String toString() => _imc.toString();
}
