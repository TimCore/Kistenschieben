import 'FieldObject.dart';
import 'dart:core';


class Player {
  FieldObject staysOn;

  Player(FieldObject staysOn) {
    this.staysOn = staysOn;
  }

  moveUp() {
    if (staysOn.upPointer.passable == true) {
      staysOn = staysOn.upPointer;
    }
    print("PlayerPosition: " + getPosition());
    print(staysOn.runtimeType);
  }
  moveRight() {
    if (staysOn.rightPointer.passable == true) {
      staysOn = staysOn.rightPointer;
    }
    print("PlayerPosition: " + getPosition());
    print(staysOn.runtimeType);
  }
  moveDown() {
    if (staysOn.downPointer.passable == true) {
      staysOn = staysOn.downPointer;
    }
    print("PlayerPosition: " + getPosition());
    print(staysOn.runtimeType);
  }
  moveLeft() {
    if (staysOn.leftPointer.passable == true) {
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