void main() {
  String fullName(String name, [String? lastName = null]) {
    return 'Hi $name ${lastName != null ? lastName : ''}';
  }

  print(fullName('Marcelo', 'Alves'));
  String fullName2({required String? name, String? lastName = null}) {
    return name != ''
        ? 'Hi $name ${lastName != null ? lastName : ''}'
        : 'Sem Dados';
  }

  print(fullName2(name: ''));
}

