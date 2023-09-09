class BangunRuang{
 var panjang;
 var lebar;
 var tinggi;

 BangunRuang(this.panjang, this.lebar, this.tinggi);

  volume(){
    return panjang * lebar * tinggi;
 }
} 

class Kubus extends BangunRuang{
 var sisi;
 Kubus(this.sisi) : super(sisi, sisi, sisi);
  
  @override
  volume () {
  return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang{
  Balok(var panjang,  lebar,  tinggi) : super(panjang, lebar, tinggi);
  
  @override
  volume ( ) {
    return panjang * lebar * tinggi;
 
  }
}

void main() {
  var kubus = Kubus(5);
  var balok = Balok(3, 4, 5);

  print("Volume Kubus: ${kubus.volume()}"); 
  print("Volume Balok: ${balok.volume()}"); 
}