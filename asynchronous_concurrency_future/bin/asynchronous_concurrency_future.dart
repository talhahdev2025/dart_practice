import 'dart:io';

void main(List<String> arguments) async {
  /*
  Asynchronous programming 
      - concurreny using Future<T> class 
  */

  const String url =
      'C:\\Users\\Al Hafiz Enterprises\\Desktop\\practice\\dart_practice\\asynchronous_concurrency_future\\bin\\test.txt';
  showString();
  futureString().then((value) => print(value));
  print(
    'synchroonous String after delayed future value but will prints before future value',
  );
  //alternative of abover

  // var res = await futureString();
  // print(res);

  // await is used when we want synchrounous behavous in asynchronous methods like below
  // and its alternative of .then((){}) , more readable code with (await) then ( .then() )

  readFile(fileName: url).then((value) => print(value));
  Future.delayed(
    Duration(seconds: 0),
    () => print("function with zero duration"),
  );
  Future.microtask(
    () => print('Micro Task after 0 duration function but executes before it'),
  );
}

Future<String> readFile({required String fileName}) {
  File file = File(fileName);
  return file.readAsString().then((value) => value.trim());
}

Future<String> futureString() {
  const int seconds = 3;
  return Future.delayed(
    const Duration(seconds: seconds),
    () => 'This is String from ( futureString ) executed after $seconds seconds',
  );
}

void showString() {
  print(' synchronous this is string from ( showString )');
}

/*
#event loop
dart uses single threaded event loop to handle asynchrounous tasks without blocking the program .
Event loop manages tasks with queue data structure like FIFI (first in first out)
event loop handles two queues 
1- MicroTask Queue
2- Event Queue

first of all event loop executes all the syncronous code (text above code ) then event loop do like this
according to dart docs


(not exactly like this just to understand)
while (true) {
   if (microtaskQueue not empty) {
      execute all microtasks
   } else {
      execute one event
   }
}

after running all synchronous code event loop run microTasks Queue after executing this
the Event Queue executes 
Future.microtask(()=print('helo'));
its a micro task
and 
Future.delayed(Duration.zero,()=> print('future with duration event queue));
even though the duration is zero event loop runs it after microstask


this is the brief overview of concurrency in dart


 */

/*
 Future(() => print('1-Simple future '));

  Future.delayed(Duration.zero, () => print('2-future with duration zero'));

  Future.microtask(() => print('3-Future with microtask'));

  for (var x = 0; x < 1000; x++) {
    for (var y = 0; y < 1000; y++) {
      print('$x and $y');
    }
  }
  */
