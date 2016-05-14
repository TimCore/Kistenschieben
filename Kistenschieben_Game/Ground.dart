import 'FieldObject.dart';
import 'dart:io';

class Ground extends FieldObject {

  Ground() : super() {
    this.passable = true;
    this.isTarget = false;
    this.isWall = false;
  }

}