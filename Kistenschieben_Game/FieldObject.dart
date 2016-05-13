import 'Position.dart';

class FieldObject{

Position position = new Position(0,0);
bool passable;
FieldObject rightPointer;
FieldObject leftPointer;
FieldObject upPointer;
FieldObject downPointer;


  FieldObject(){
    this.upPointer = null;
    this.rightPointer = null;
    this.downPointer = null;
    this.leftPointer = null;
  }

  getXPosition() {
    return this.position.x;
  }
  getYPosition() {
    return this.position.y;
  }
  setXPosition(int x) {
    this.position.x = x;
  }

  setYPosition(int y) {
    this.position.y = y;
  }

  getPassable() {
    return this.passable;
  }
  whoAmI() {
    return "G";
  }
}