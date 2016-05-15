import 'FieldObject.dart';

class Crate {
  var staysOn;

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
      staysOn.crate = this;
      print("CratePosition: " + getPosition());
      print(staysOn.runtimeType);
      return true;
    } else {
      print("CratePosition: " + getPosition());
      print(staysOn.runtimeType);
      return false;
    }
  }

  moveRight(int pushPower) {
    pushPower--;
    if (staysOn.rightPointer != null &&
        staysOn.rightPointer.isPassable(staysOn.upPointer, pushPower) == true) {
      staysOn = staysOn.rightPointer;
      staysOn.crate = this;
      if (staysOn.runtimeType.toString().contains("Target")) {
        if (staysOn.checkOutNeighbours() == true) {
          print("You won!!!");
        }
      }
      print("CratePosition: " + getPosition());
      print(staysOn.runtimeType);
      return true;
    } else {
      print("CratePosition: " + getPosition());
      print(staysOn.runtimeType);
      return false;
    }
  }

  moveDown(int pushPower) {
    pushPower--;
    if (staysOn.downPointer != null &&
        staysOn.downPointer.isPassable(staysOn.upPointer, pushPower) == true) {
      staysOn = staysOn.downPointer;
      staysOn.crate = this;
      print("CratePosition: " + getPosition());
      print(staysOn.runtimeType);
      return true;
    } else {
      print("CratePosition: " + getPosition());
      print(staysOn.runtimeType);
      return false;
    }
  }

  moveLeft(int pushPower) {
    pushPower--;
    if (staysOn.leftPointer != null &&
        staysOn.leftPointer.isPassable(staysOn.upPointer, pushPower) == true) {
      staysOn = staysOn.leftPointer;
      staysOn.crate = this;
      print("CratePosition: " + getPosition());
      print(staysOn.runtimeType);
      return true;
    } else {
      print("CratePosition: " + getPosition());
      print(staysOn.runtimeType);
      return false;
    }
  }

  getPosition() {
    return this.staysOn.position.x.toString() + "," +
        this.staysOn.position.y.toString();
  }

}