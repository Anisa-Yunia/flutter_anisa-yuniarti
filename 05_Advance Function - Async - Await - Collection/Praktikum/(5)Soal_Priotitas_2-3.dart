Future faktorial(int n) async{
  int hasil = 1;
  for (int i = 1; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}
void main()async {
  int angka = 5; 
  try{
    int hasilSatu = await faktorial(angka);
  print('Faktorial dari $angka adalah $hasilSatu');
 
  }catch (e){
  print('Terjadi Kesalahan : $e');
  }
  
}
