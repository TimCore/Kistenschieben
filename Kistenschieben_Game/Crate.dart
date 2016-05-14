import 'FieldObject.dart';

class Crate {
  FieldObject staysOn;

  Crate(FieldObject staysOn) {
    this.staysOn = staysOn;
    staysOn.passable = false;
  }

  move(FieldObject wherePlayerStaysOn, pushPower) {
    if (wherePlayerStaysOn == staysOn.upPointer) {
      return moveDown(pushPower);
    } else if (wherePlayerStaysOn == staysOn.rightPointer) {
      return moveLeft(pushPower);
    } else if (wherePlayerStaysOn == staysOn.downPointer) {
      return moveUp(pushPower);
    } else if (wherePlayerStaysOn == staysOn.leftPointer) {
      return moveRight(pushPower);
    }
  }

  moveUp(int pushPower) {
    pushPower--;
    if (staysOn.upPointer != null &&
        staysOn.upPointer.isPassable(staysOn.upPointer, pushPower) == true) {
      staysOn = staysOn.upPointer;
      print("CratePosition: " + getPosition());
      return true;
    } else {
      return false;
    }
  }

  moveRight(int pushPower) {
    pushPower--;
    if (staysOn.rightPointer != null &&
        staysOn.rightPointer.isPassable(staysOn.upPointer, pushPower) == true) {
      staysOn = staysOn.rightPointer;
      print("CratePosition: " + getPosition());
      return true;
    } else {
      return false;
    }
  }

  moveDown(int pushPower) {
    pushPower--;
    if (staysOn.downPointer != null &&
        staysOn.downPointer.isPassable(staysOn.upPointer, pushPower) == true) {
      staysOn = staysOn.downPointer;
      print("CratePosition: " + getPosition());
      return true;
    } else {
      return false;
    }
  }

  moveLeft(int pushPower) {
    pushPower--;
    if (staysOn.leftPointer != null &&
        staysOn.leftPointer.isPassable(staysOn.upPointer, pushPower) == true) {
      staysOn = staysOn.leftPointer;
      print("CratePosition: " + getPosition());
      return true;
    } else {
      return false;
    }
  }


  getPosition() {
    return this.staysOn.position.x.toString() + "," +
        this.staysOn.position.y.toString();
  }

}