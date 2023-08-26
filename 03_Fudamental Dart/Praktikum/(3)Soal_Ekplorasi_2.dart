List cariFaktor(int bilangan) {
  List<int> faktor = [];
  for (int i = 1; i <= bilangan; i++) {
    if (bilangan % i == 0) {
      faktor.add(i);
    }
  }
  return faktor;
}

void main() {
  int bilangan = 24;

  List faktor = cariFaktor(bilangan);
  print("Faktor dari $bilangan adalah: $faktor");
  
}
