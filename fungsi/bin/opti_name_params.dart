
void bilang_halo({nama, ucapan, teman}) {
  print('$nama bilang ke $teman salam kenal si $teman bilang $ucapan');
}

main(List<String> args) {
  bilang_halo(nama: 'feri', ucapan: 'saya berasal dari jepara', teman: 'budi');
}