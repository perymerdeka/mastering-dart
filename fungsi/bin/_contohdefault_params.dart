String pesan(String from, String message, {String? to, String? appName = 'telegram'}) {
  return from +
      ' mengirim ' + message +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName : '');
}

main(List<String> args) {
  print(pesan('feri', 'halo'));
}
