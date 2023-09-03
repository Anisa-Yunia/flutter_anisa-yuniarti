void main(){
  int barisBintang = 5;
  for (int i = 0; i <= barisBintang; i++) {
    String jarak= ' '*(barisBintang -i);
    String bintang='*'*(2*i-1);
    print('$jarak $bintang');
  }
}