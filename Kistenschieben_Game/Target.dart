import 'FieldObject.dart';
import 'dart:io';

class Target extends FieldObject {

  Target() : super() {
    this.passable = true;
    this.isTarget = true;
    this.isWall = false;
  }

}