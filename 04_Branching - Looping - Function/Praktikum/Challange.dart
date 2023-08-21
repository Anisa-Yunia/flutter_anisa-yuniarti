// 1. buat sebuah function yang menghitung jumlah dari pembelian buku,  pensi, dan tas
// 2. buatlah function yang menghitung diskon dari variabel total pembelian.
// 3. buatlah function yang menghitung Total pembelian setelah diskon

double buku = 10000;
double pensil = 5000;
double tas = 100000;

double total_pembelian = 200000;
double diskon = 0.1;

void main(){
  
  menghitung();
  print(menghitung());

  MenghitungDiskon();
  print(MenghitungDiskon());

  MenghitungTotal();
  print(MenghitungTotal());
}
double menghitung(){
  return buku + pensil + tas ;
}
double MenghitungDiskon(){
  return total_pembelian * diskon ;
}
double MenghitungTotal(){
  return total_pembelian - MenghitungDiskon();
}


