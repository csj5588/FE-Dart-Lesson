main() {
  print(Page.name);
  Page.say();

  Page page = new Page();
  page.caseSay();
}

class Page {
  String caseName = 'tomy';
  String caseAge = '23';

  static String name = 'luck';
  static String age = '12';

  static void say() {
    print('$name $age');
  }

  caseSay() {
    print('$name $age');
    print('${this.caseName} ${this.caseAge}');
  }
}