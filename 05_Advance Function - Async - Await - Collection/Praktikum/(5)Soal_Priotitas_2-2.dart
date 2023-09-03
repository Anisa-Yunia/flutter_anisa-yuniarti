double hitungRataRata(List<int> list) {
  if (list.isEmpty) {
    return 0.0; // Mengembalikan 0 jika list kosong
  }
  int jumlah = 0;
  for (int elemen in list) {
    jumlah += elemen;
  }
  double rataRata = jumlah / list.length;
  return rataRata;
}
void main() {
  List<int> data = [7,5,3,5,2,2];
  double rataRata = hitungRataRata(data);

  print('List: $data');
  print('Rata-rata: $rataRata');
}
