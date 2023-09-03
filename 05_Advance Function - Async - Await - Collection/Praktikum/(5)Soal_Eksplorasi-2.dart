void main() {
  List<int> data = [js];


  Map<String, int> frekuensi = {};

  for (String kata in data) {
    if (frekuensi.containsKey(kata)) {
      frekuensi[kata] = frekuensi[kata] + 1;
    } else {
      frekuensi[kata] = 1;
    }
  }

  frekuensi.forEach((kata, jumlah) {
    print('Tipe data string "$kata" muncul sebanyak $jumlah kali');
  });
}

