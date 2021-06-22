main(List<String> args) {
  List<String> dataList = [];
  List<int> number = [10, 20, 30, 60];

  // looping
  number.map((e) => ' angka ' + e.toString());

  // cetak list
  dataList.forEach((newElement) {
    print(newElement);
  });
}
