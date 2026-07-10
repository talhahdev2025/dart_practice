
void main(){
   //problem 4---------------------------------------------------------------------
  MyCalculator myCalculator = MyCalculator();
  myCalculator.add(num1: 12, num2: 1);
  myCalculator.substract(num1: 12, num2: 2);

}



class MyCalculator with CalaculatorOperationMixin {
  // MyCalculator({required this.num1, required this.num2});
  // num num1;
  // num num2;
}

mixin CalaculatorOperationMixin {
  void add({required num num1, required num num2}) {
    print('sum is ${num1 + num2}');
  }
  void substract({required num num1, required num num2}) {
    print('sum is ${num1 - num2}');
  }
  void divide({required num num1, required num num2}) {
    print('sum is ${num1 * num2}');
  }
}

