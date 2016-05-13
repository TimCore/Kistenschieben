import 'FieldObject.dart';
import 'Position.dart';

class Ground extends FieldObject{
  String ground = "G";
Ground() : super(){
 // this.passable = true;
}
//DIRTY
whoAmI() {
  return "G";
}
}