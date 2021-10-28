main() {
  List a = [{ 'name': '1' }, { 'name': '2' }];
  var b = a.where((element) => element['name'] == '1');
  print(b.toSet());
}