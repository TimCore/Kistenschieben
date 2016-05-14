import 'FieldObject.dart';



class Wall extends FieldObject {

  Wall() : super() {
    this.passable = false;
    this.isTarget = false;
    this.isWall = true;

  }
  isPassable(FieldObject player, pushPower) {
    return false;
  }
  setCrate(crate) {
    return false;
  }


}