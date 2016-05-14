import 'FieldObject.dart';
import 'Crate.dart';

class Target extends FieldObject {

  Target() : super() {
    this.passable = true;
    this.isTarget = true;
    this.isWall = false;
  }

}