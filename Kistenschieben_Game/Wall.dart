import 'FieldObject.dart';
import 'dart:io';


class Wall extends FieldObject {

  Wall() : super() {
    this.passable = false;
    this.isTarget = false;
    this.isWall = true;
  }

}