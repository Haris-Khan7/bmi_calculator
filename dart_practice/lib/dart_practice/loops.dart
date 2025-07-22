void main(){
  for(int a = 10 ; a >= 1 ; a--){
    print(a);
    print('Home is Empty');
  }
  int no = 12;
  while(no <= 45){
    print('no is $no');
    no++;
  }
  int rows = 6;

  // Top half of the diamond
  for (int i = 1; i <= rows; i++) {
    String spaces = ' ' * (rows - i);
    String stars = '*' * (2 * i - 1);
    print(spaces + stars);
  }

  // Bottom half of the diamond
  for (int i = rows - 1; i >= 1; i--) {
    String spaces = ' ' * (rows - i);
    String stars = '*' * (2 * i - 1);
    print(spaces + stars);
  }
}