main() {
  Point child = new Point();
  child.doubleX = 4;
  print(child.x);
}

class Point {
  num x;

  set doubleX(num val) => x = val * 2;
}
