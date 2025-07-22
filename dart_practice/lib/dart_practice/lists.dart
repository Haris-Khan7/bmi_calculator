import 'dart:core';
void main(){
  var list = [1,2,3,4,5,6];
  list.add(8);
  var names = [];
  names.add("Sufyan");
  names.add("Hammad");
  names.add("List");
  names.add("obj");
  names.add("farhad");
  names.addAll(list);
  names.insert(3, 'Haris');
  names.reversed;

  print(names);
  names.replaceRange(6, 10, ['Fahad' , 'Salaar' , 'Ayman' , 'Warda' , 'Hafsa']);
  names.removeAt(12);
  names.removeLast();
  names.remove('List');
  names[3] = 'Muskan';
  print(names);
  print('Length : ${names.length}');
  print('Reversed : ${names.reversed}');
  print('Is Empty : ${names.isEmpty}');
  print('Is Not Empty : ${names.isNotEmpty}');
  print('First : ${names.first}');
  print('Iterator : ${names.iterator}');
  print('Last : ${names.last}');
  print('Indexed : ${names.indexed}');


}