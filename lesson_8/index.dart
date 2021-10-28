main() {
  // const List mock = [
  //   { "xAxis": 0, 'yAxis': 0 },
  //   { "xAxis": 10, 'yAxis': 7.0 },
  //   { "xAxis": 20, 'yAxis': 10.0 },
  //   { "xAxis": 30, 'yAxis': 4.0 },
  //   { "xAxis": 40, 'yAxis': 3.0 },
  //   { "xAxis": 50, 'yAxis': 3 },
  //   { "xAxis": 60, 'yAxis': 0 },
  // ];

  var a = [0, 10, 20, 30, 40, 50, 60];
  var b = [0, 7.0, 10.0, 4.0, 3.0, 3, 0];

  double todouble(number) {
    return double.parse(number.toString());
  }

  var c = a.asMap()
    .map((index, item) => MapEntry(index, new LineChartEntries(xAxis: todouble(item), yAxis: todouble(b[index]))))
    .values
    .toList();

  print(c);
  print(c[1].xAxis);
}

class LineChartEntries {
  double xAxis;
  double yAxis;

  LineChartEntries({ this.xAxis, this.yAxis });
}
