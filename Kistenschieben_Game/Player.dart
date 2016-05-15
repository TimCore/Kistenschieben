import 'FieldObject.dart';
import 'dart:core';


class Player {
  FieldObject staysOn;
  int pushPower = 1; //parametrisierung für die Endabgabe funktioniert noch nicht!

  Player(FieldObject staysOn) {
    this.staysOn = staysOn;
  }

  moveUp() {
    if (staysOn.upPointer.isPassable(staysOn, pushPower) == true) {
      staysOn = staysOn.upPointer;
    }
    print("PlayerPosition: " + getPosition());
    print(staysOn.runtimeType);
  }
  moveRight() {
    if (staysOn.rightPointer.isPassable(staysOn, pushPower) == true) {
      staysOn = staysOn.rightPointer;
    }
    print("PlayerPosition: " + getPosition());
    print(staysOn.runtimeType);
  }
  moveDown() {
    if (staysOn.downPointer.isPassable(staysOn, pushPower) == true) {
      staysOn = staysOn.downPointer;
    }
    print("PlayerPosition: " + getPosition());
    print(staysOn.runtimeType);
  }
  moveLeft() {
    if (staysOn.leftPointer.isPassable(staysOn, pushPower) == true) {
      staysOn = staysOn.leftPointer;
    }
    print("PlayerPosition: " + getPosition());
    print(staysOn.runtimeType);
  }


  getPosition() {
    return this.staysOn.position.x.toString() + "," +
        this.staysOn.position.y.toString();
  }
}