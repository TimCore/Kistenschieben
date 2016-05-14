import 'FieldObject.dart';
import 'dart:io';

class Wall extends FieldObject {
  String wall = "W";

  Wall() : super() {
    this.passable = false;
    stdout.write(wall);
  }

//Dirty
  whoAmI() {
    return "W";
  }

}