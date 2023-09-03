int faktorial(int n) {
  int hasil = 1;
  for (int i = 1; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}

void main() {
  int angkaA = 5; 
  int hasilSatu = faktorial(angkaA);
  print('Faktorial dari $angkaA adalah $hasilSatu');

  int angkaB = 40; 
  int hasilDua = faktorial(angkaB);
  print('Faktorial dari $angkaB adalah $hasilDua');

  int angkaC = 50; 
  int hasilTiga = faktorial(angkaC);
  print('Faktorial dari $angkaC adalah $hasilTiga');
}
