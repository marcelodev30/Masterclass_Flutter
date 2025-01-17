class Pessoa {
  double _peso;
  double _altura;

  Pessoa(this._altura, this._peso);

  double get getAltura => _altura;
  double get getPeso => _peso;
  void setAltura(double valeu) => _altura = valeu;
  void setpeso(double valeu) => _peso = valeu;
}
