import 'dart:io';

void main() {
  int a;
  a = int.parse(stdin.readLineSync()!);
  stdout.write(a);
  if (a >= 100) {
    print(a + a);
    print('$a is Lower then 100 so we add it');
  } else if (a >= 80) {
    print(a - a);
    print('$a is Lower or equal 80 then we subtract it');
  }
  if (a >= 60) {
    print(a * a);
    print('$a is Lower or equal 80 then we Multiply it');
  } else if (a <= 43) {
    print(a / a);
    print('$a is Lower or equal 80 then we Divide it');
  } else {
    print('We are Sorry this is simple and concise Calculator');
    print('Try the number < =100 , Thank You');
  }
}
