bool bilangaPrima(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main(){
  int angka =10;
  if(bilangaPrima(angka)){
    print('$angka adalah bilangan prima');
  }else{
    print('$angka bukan bilangan prima');
  }
}