void main(){
  //problem 3---------------------------------------------------------------------

  SmartPhone smartPhone = SmartPhone(
    model: 'Pixel 7a',
    color: 'Lemon',
    type: 'SmartPhone',
  );
  smartPhone.play();

}

sealed class Device {
  String model;
  String color;
  Device({this.color = 'White', required this.model});
}

class SmartPhone extends Device with MusicPlayerMixin {
  String type;
  SmartPhone({super.color, required super.model, required this.type});
}

class Tablet extends Device with MusicPlayerMixin {
  Tablet({super.color, required super.model});
}

mixin MusicPlayerMixin on Device {
  void play() {
    print('$model Playing music');
  }

  void pause() {
    print('$model pausing music');
  }
}
