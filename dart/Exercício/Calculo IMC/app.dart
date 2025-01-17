import 'imc.dart';
import 'pessoa.dart';

void main(List<String> args) {
  Imc imc = Imc(Pessoa(1.60, 68.6));

  print(imc.calcular().toStringAsFixed(2));
}
