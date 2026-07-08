import 'dart:io';

void main(List<String> arguments) async {
  /*
  Asynchronous programming 
      - concurreny using Future<T> class 
  */

  // showString()
  futureString().then((value) => print(value));
  print(
    'String after delayed future value but will prints before future value',
  );

  // await is used when we want synchrounous behavous in asynchronous methods like below
  File file = File(
    'C:\\Users\\user\\Desktop\\practice\\dart_practice\\asynchronous_concurrency_future\\bin\\test.txt',
  );
  var result = await file.readAsString();
  print(result);
}

Future<String> futureString() {
  const int seconds = 2;
  return Future.delayed(
    const Duration(seconds: seconds),
    () => 'This is String from ( futureString )  $seconds seconds',
  );
}

void showString() {
  print('this is string from ( showString )');
}
