class Car {
  late int maxSpeed;
  late num price;
  late String name;

  // this 사용 가능
  Car(this.maxSpeed, this.price, this.name);

  num saleCar() {
    price = price * 0.9;
    return price;
  }
}
void main() {
  Car bmw = Car(320, 100000, 'BMW');
  Car benz = Car(250, 70000, 'BENZ');
  Car ford = Car(200, 80000, 'FORD');

  print(bmw.price);
  print(benz.price);
  print(ford.price);

  print("------- 할인 후 가격 -------");

  print(bmw.saleCar());
  print(benz.saleCar());
  print(ford.saleCar());
}