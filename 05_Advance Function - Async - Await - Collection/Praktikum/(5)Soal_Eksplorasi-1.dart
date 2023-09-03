void main() {
  List<String> data = ['amuse', 'tommy', 'kaira', 'spoon', 'HKS', 'litchfield', 'amuse', 'HKS'];

  Set<String> dataSet = Set<String>.from(data);
  List<String> dataUnik = dataSet.toList();

  print('Data awal: $data');
  print('Data unik: $dataUnik');
}
