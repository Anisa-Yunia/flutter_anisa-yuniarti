void main(){
  int baris = 6;
  for (int i = 1; i <= baris; i++) {
    String jarak= ' '*(i-1);
    String bintang='0'*(2*(baris - i)+1);
    print('$jarak $bintang');
  }
  for (int i = baris -1; i >= 1; i--) {
    String jarak= ' '*(i-1);
    String bintang='0'*(2*(baris - i)+1);
    print('$jarak $bintang');
  }
}