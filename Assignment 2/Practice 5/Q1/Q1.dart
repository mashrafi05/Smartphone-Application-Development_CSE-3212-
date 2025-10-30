import 'dart:io';

void main() {
  File file = File('hello.txt');
  file.writeAsStringSync('My name is Mashrafi');
  print('File written.');
  print(file);
}
