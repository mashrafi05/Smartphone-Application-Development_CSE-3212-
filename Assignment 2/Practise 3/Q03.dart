import 'dart:io';

void greet(String name) {
  print(' "Hello, ${name}". ');
}

main() {
  stdout.write("Enter the name: ");
  String? name = stdin.readLineSync()!;

  greet(name);
}
