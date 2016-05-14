import 'Position.dart';

class FieldObject {

  //Position
  Position position = new Position(0, 0);

  //object Booleans
  bool passable;
  bool isTarget;
  bool isWall;

  //pointer
  FieldObject rightPointer;
  FieldObject leftPointer;
  FieldObject upPointer;
  FieldObject downPointer;


  FieldObject() {
    this.upPointer = null;
    this.rightPointer = null;
    this.downPointer = null;
    this.leftPointer = null;
  }

}