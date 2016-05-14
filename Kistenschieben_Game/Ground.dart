import 'FieldObject.dart';
import 'dart:io';

class Ground extends FieldObject {
  String ground = "G";

  Ground() : super() {
    this.passable = true;
    stdout.write(ground);
  }

//DIRTY
  whoAmI() {
    return "G";
  }
}