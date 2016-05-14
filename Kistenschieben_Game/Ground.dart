import 'FieldObject.dart';
import 'Crate.dart';

class Ground extends FieldObject {


  Ground() : super() {
    this.passable = true;
    this.isTarget = false;
    this.isWall = false;
  }

}