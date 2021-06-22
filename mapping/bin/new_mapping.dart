main(List<String> args) {
  List<String> dataList = [];
  List<int> number = [10, 20, 30, 60];

  // looping
  number.forEach((element) {
    dataList.add('angka ke ' + element.toString());
  });

  // cetak list
  dataList.forEach((newElement) {
    print(newElement);
  });
}
