void main(){
  List<List<int>> listData = [
  [10, 5],
  [20 ,4],
  [100,50],
  [6, 30],
  ];

  Map<String, List<int>> mapData= {};

  for (var i = 0; i < listData.length; i++) {
    String key = 'Data ${i+1}';
    List<int> value = listData[i];
    mapData[key] =value;
  }
  mapData.forEach((key, value) {
    print('$key : $value');
  });
}