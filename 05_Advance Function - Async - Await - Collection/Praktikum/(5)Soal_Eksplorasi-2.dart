void main() {
  List<String> data = ['js','js'];


  Map<String, int> frekuensi = {};

  for (String kata in data) {
    if (frekuensi.containsKey(kata)) {
     frekuensi[kata];
    } else {
      frekuensi[kata] = 1;
    }
  }

  frekuensi.forEach((kata, jumlah) {
    print('Tipe data string "$kata" muncul sebanyak $jumlah kali');
  });
}

