import 'FieldObject.dart';
import 'Ground.dart';
import 'dart:io';

class Player {
  FieldObject fieldObject;

  Player(FieldObject fieldObject) {
    this.fieldObject = fieldObject;
  }

  move(x, y) {
    fieldObject.position.x + x;
    fieldObject.position.y + y;
  }

  moveTest() {
    print(fieldObject.toString());

    if (fieldObject.rightPointer.passable == true) {
      print("ist betretbar");
    }
  }

  getPlayerPosition() {
    return this.fieldObject.position.x.toString() + "," +
        this.fieldObject.position.y.toString();
  }
}