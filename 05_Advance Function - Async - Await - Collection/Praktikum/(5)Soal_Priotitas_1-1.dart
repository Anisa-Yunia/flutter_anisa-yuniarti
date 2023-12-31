
Future<List<int>> multiplyList(List<int> data, int pengali) async {
  List<int> hasilPerkalian = [];

  for (int i = 0; i < data.length; i++) {
    int hasil = data[i] * pengali;
    hasilPerkalian.add(hasil);
  }

  return hasilPerkalian;
}

void main() async {
  List<int> data = [1, 2, 3, 4, 5];
  int pengali = 5;

  List<int> hasil = await multiplyList(data, pengali);

  print("List Awal: $data");
  print('hasil perkalian : $hasil');
}
