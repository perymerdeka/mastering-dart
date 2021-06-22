main(List<String> args) {
  List<int> dataList = [];

  List<int> numbers = [1, 2, 3, 4];

  // akses list
  print('list ke 0 adalah');
  print(numbers[0]); // akses index ke 0

  dataList.add(20); // dambah 1 item ke datalist
  dataList.addAll([10, 20, 30]); // tambah item ke list

  // insert ke index tertentu
  dataList.insert(0, 50); // nilai baru ke data list index ke 0

  dataList.insertAll(1, numbers); // insert iterable item ke index tertentu

  // contoh filtering
  dataList.removeWhere((element) => element % 2 !=0);

  // cek jika item tertentu ada dalam list atau tidak
  if (dataList.contains(30)) {
    print('item ditemukan');

  } else {
    print('ga nemu');
  }

}