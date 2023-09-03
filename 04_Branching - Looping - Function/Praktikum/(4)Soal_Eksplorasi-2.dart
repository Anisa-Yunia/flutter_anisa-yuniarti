import 'dart:io';
void main() {
 
  int baris = 5;
  int kolom =4;

  // Mencetak header baris pertama dengan angka kolom
  stdout.write('\t');
  for (int j = 1; j <= kolom; j++) {
    stdout.write('$j\t');
  }
  print(''); // Baris kosong sebelum mencetak isi tabel

  // Mencetak isi tabel perkalian
  for (int i = 1; i <= baris; i++) {
    stdout.write('$i\t'); // Cetak angka pada sisi kiri tabel

    for (int j = 1; j <= kolom; j++) {
      int hasil = i * j;
      stdout.write('$hasil\t'); // Cetak hasil perkalian
    }
    print(''); // Pindah ke baris berikutnya
  }
}
