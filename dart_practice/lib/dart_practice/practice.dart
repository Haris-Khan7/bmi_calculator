import 'dart:core' show String, print, int, BigInt, num, double;
import 'dart:io';
import 'dart:core' show String, print, int;

void main(){
int rows = 6;
for(int i = 1; i<= rows; i++){
  String spaces = '  ' *(rows - i);
  String stars = '*' * (2 * i - 1);
  print(stars + spaces);
}

for(int i = rows; i >= 1 ; i--){
  String stars = '*' * (2 * i - 1);
  String spaces = ' ' * (rows - 1);
  print(stars + spaces);
}
  stdout.write('Enter Your Name :');
  var name = stdin.readLineSync() as String;
  print("Welcome , $name");
  print("Age of $name is 23");
  var human = Human();
  human.Animal('');
  human.Electricity();
  print(human.Add(23 , 6));
  print(human.Add(21, 7));



}

class Human {
  void Electricity(){
    int unit;
    unit = int.parse(stdin.readLineSync()!);
    double sum;
    double tax;
    double bill;
    if( unit >= 250){
      print('Your Electricity Units is $unit');
      sum = unit * 175;
      print('Your Electricity Bill is $sum');
      tax = sum / 75;
      bill = sum + tax;
      print('Pay in 5 days otherwise Your Bill after due date is $bill');

    }
    else if( unit >= 220) {
      print('Your Electricity unit is $unit');
      sum = unit * 150;
      print('Your Electricity Bill is $sum');
      tax = sum / 80;
      bill = sum + tax ;
      print('Pay in 5 days otherwise Your Bill after due date is $bill');
    }
    else if( unit >= 199) {
      print('Your Electricity unit is $unit');
      sum = unit * 100;
      print('Your Electricity Bill is $sum');
      tax = sum / 80;
      bill = sum + tax ;
      print('Pay in 5 days otherwise Your Bill after due date is $bill');
    }
    else if( unit >= 100) {
      print('Your Electricity unit is $unit');
      sum = unit * 150;
      print('Your Electricity Bill is $sum');
      tax = sum / 90;
      bill = sum + tax ;
      print('Pay in 5 days otherwise Your Bill after due date is $bill');
    }
    else if( unit >= 1) {
      print('Your Electricity unit is $unit');
      sum = unit * 10;
      print('Your Electricity Bill is $sum');
      tax = sum / 0;
      bill = sum + tax ;
      print('Pay in 5 days otherwise Your Bill after due date is $bill');
    }
    else {
      print('Your Bill is nill Enjoy');
    }
  }
 void Animal(String msg){
   msg = stdin.readLineSync()!;

 print('Dag is Barking');
 for(int month= 12 ; month >= 1 ; month--){
   print(month);
   print(msg);

 }
   print(msg);


 }
  int Add(int a , int b){
    int sum = a + b * b + a ;
    return sum;

 }
 }
