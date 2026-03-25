import 'dart:io';
import './classes/Machine.dart';

void main() {
  const int initialBeans = 100;
  const int initialMilk = 200;
  const int initialWater = 300;
  const int initialCash = 0;
  const int addBeansAmount = 100;

  var CoffeMachine = Machine(initialBeans, initialMilk, initialWater, initialCash);

  print("Система управления кофемашиной");

  while (true) {
    print("\nДоступные действия:");
    print("1. Приготовить кофе");
    print("2. Добавить ресурс");
    print("3. Выход");
    stdout.write("Введите команду (только число): ");

    String input = stdin.readLineSync()?.trim().toLowerCase() ?? "";

    switch (input) {
      case "1":
      case "приготовить кофе":
        CoffeMachine.makingCoffee();
        break;
      case "2":
      case "добавить ресурс":
        CoffeMachine.coffeeBeans += addBeansAmount;
        print("Ресурсы пополнены. Теперь зерен: ${CoffeMachine.coffeeBeans}");
        break;
      case "3":
      case "выход":
        print("Программа завершена.");
        return;
      case "":
        break;
      default:
        print("Ошибка: команда '$input' не распознана. Используйте цифры 1, 2 или 3.");
    }
  }
}