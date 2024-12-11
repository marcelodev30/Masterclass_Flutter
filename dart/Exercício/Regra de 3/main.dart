void main() {
  double regra([double a = 0, double b = 0, double c = 0]) {
    return (b * c) / a;
  }

  print(regra(240, 3, 360));
}
