void main(List<String> arguments) {
  /*
  - datatypes
  - String interpolation
  - type System (dynamic typing , type inference , strict typing)
  - compile time constant 
  - runtime constant
  - Null Safety
  - Collections
  */

  //List Variations---------------------------------------------------------------

  // variation with generics/Strict typing
  List<int> list = <int>[1, 32, 3, 4, 4, 55];
  List<int> list2 = [1, 2, 2, 3];
  List list3 = [1, 2, 3, 3, 4, 4, Object(), 'lskjdf'];
  List list4 = <int>[1, 2, 3, 34];

  //variation with type inference

  // we can use var here instead of typing --List<Map<String, Map<String, num>>>--
  List<Map<String, Map<String, num>>> studentMarks = [
    {
      'Talha': {'English': 70, 'Urdu': 80, 'Science': 90},
    },
    {
      'Abdullah': {'English': 40, 'Urdu': 56, 'Science': 70},
    },
    {
      'Tayyab': {'English': 20, 'Urdu': 88, 'Science': 20},
    },
  ];
  print(studentMarks.runtimeType);

  var list5 = [1, 3, 4, 5.0, 'skdhf'];
  var list6 = <Map<String, int>>[
    {'English': 19},
    {'Urdu': 90},
  ];

  // with dynamic typing
  dynamic list8 = [1, 2, 3, 3, 4];

  // variation with compile time constant
  const list9 = [1, 2, 3, 4, 5.0];
  const list10 = <int>[1, 2, 3, 4, 5];
  const List<int> list11 = [1, 2, 3, 3, 3];
  const List<int> list12 = <int>[1, 2, 3, 3, 3];
  const List list13 = <int>[1, 2, 43, 4, 5, 6];
  const List<int> list14 = const [1, 2, 3, 3, 4, 4];
  const List<int> list15 = const <int>[
    1,
    2,
    3,
    3,
    4,
    4,
  ]; //const keyword is optional with list literal if you already added at first
  List list16 = const [1, 2, 2, 2, 3, 3];

  // variation with runtime constant

  final list17 = [1, 23, 4.0, 4]; //List<num>
  final List<int> list18 = [1, 2, 3, 4, 5, 6];
  final List<int> list19 = <int>[1, 3, 4, 54, 5, 6];
  final List list20 = <Map<String, int>>[
    {'Englihs': 12},
    {'Math': 234},
  ];
  final List<int> list21 = const [1, 2, 3, 4, 44];
  final List list22 = [1, 2, 3, 3, 4, 44]; //List<dynamic>
  list22.add(1213123); //
  // print(list22);
  list22.clear();
  list22.add(12);
  print(list22);
  /*
final keyword only locks the refering point of list it doesnt make the list items constant we can change list items but cant refer this variable/reference point to any other object/list.For exmaple container containg the items we cant change the container but we can replce items of this container.
but we can also restrict the items or make whole container including items constant using (const) before list Literal like:
final list=const [12,3,3];
now this above list is unmodifyable/immutable
*/

  var list23 = const [1, 2, 2, 33];
  var list24 = const <int>[1, 2, 2, 33];

  var list25 = {}; // Map<dynamic,dynamic>
  print(list25.runtimeType);

  

  // Collection if
  bool isLoggedIn = false;
  List<String> menu = [
    'home',
    'about',
    'setting',
    if (isLoggedIn) 'Profile' else 'Guest',
    switch (isLoggedIn) {
      true => 'Profile',
      false => 'Guest',
    },
  ];

  //multiple conditions
  int age = 18;

  List<String> permissions = [
    'read',
    if (age > 18 && age < 21) 'smoke' else if (age > 21) 'drink' else 'vote',
  ];
  print(permissions);

  //
}
