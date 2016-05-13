import 'FieldObject.dart';
import 'Position.dart';

class Wall extends FieldObject{
String wall = "W";
  Wall() : super(){
   // this.passable = false;
  }
//Dirty
  whoAmI() {
    return "W";
  }

}