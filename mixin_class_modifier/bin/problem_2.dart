
void main(){
   //problem 2---------------------------------------------------------------------

  SeaPlane seaPlane = SeaPlane(
    model: 'PIA2026',
    seatCapacity: 100,
    color: 'black',
    maxSpeed: 100,
  );
  seaPlane.start();
  seaPlane.stop();

}




class SeaPlane with Fly, Swim {
  int seatCapacity;
  num maxSpeed;
  String model;
  String color;

  SeaPlane({
    required this.model,
    required this.seatCapacity,
    this.maxSpeed = 200,
    this.color = 'white',
  });

  void start() {
    print('$model is start to takeoff');
    fly();
  }

  void stop() {
    print('$model is landing');
    swim();
  }
}

mixin Fly {
  void fly() {
    print('flying');
  }
}
mixin Swim {
  void swim() {
    print('swiming');
  }
}
