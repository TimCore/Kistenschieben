import 'FieldObject.dart';
import 'dart:io';

class Target extends FieldObject {
  String target = "T";

  Target() : super() {
    this.passable = true;
    stdout.write(target);
  }

//DIRTY
  whoAmI() {
    return "T";
  }
}