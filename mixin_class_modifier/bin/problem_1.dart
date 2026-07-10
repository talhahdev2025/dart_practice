class Student with LoggerMixin {
  String name;
  int rollNumber;
  Student({required this.name, required this.rollNumber});
}

mixin LoggerMixin {
  void logMessage() {
    print('Printing logs');
    
  }
}


void main(){
  //problem 1---------------------------------------------------------------------

  Student s = Student(name: 'Talha', rollNumber: 12);
  s.logMessage();

}