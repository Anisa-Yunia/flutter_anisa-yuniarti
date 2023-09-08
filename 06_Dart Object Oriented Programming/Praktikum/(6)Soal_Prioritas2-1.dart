class kalkulator{
  double tambah(double angakaSatu, AngkaDua){
    return angakaSatu + AngkaDua;
  }
   double kurang(double angakaSatu, AngkaDua){
    return angakaSatu - AngkaDua;
  }
   double kali(double angakaSatu, AngkaDua){
    return angakaSatu * AngkaDua;
  }
   double bagi(double angakaSatu, AngkaDua){
    return angakaSatu / AngkaDua;
  }
}
void main(){
  kalkulator Kalkulator =kalkulator();

  double hasilPenambahan = Kalkulator.tambah(9.0,10.0);
  double hasilPengurangan = Kalkulator.kurang(9.0,2.0);
  double hasilPerkalian = Kalkulator.kali(5.0,2.0);
  double hasilPembagian = Kalkulator.bagi(15.0,3.0);

  print('Hasil Penambahan  : $hasilPenambahan');
  print('Hasil Pengurangan : $hasilPengurangan');  
  print('Hasil Perkalian : $hasilPerkalian');
  print('Hasil Pembagian   : $hasilPembagian');
  
}