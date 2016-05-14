import 'FieldObject.dart';

class Crate{
  FieldObject staysOn;

  Crate(FieldObject staysOn) {
    this.staysOn = staysOn;
    staysOn.passable = false;
  }

  move(FieldObject wherePlayerStaysOn) {
    if (wherePlayerStaysOn == staysOn.upPointer) {
      moveDown();
    } else if(wherePlayerStaysOn == staysOn.rightPointer){
      moveLeft();
    } else if(wherePlayerStaysOn == staysOn.downPointer) {
      moveUp();
    } else if(wherePlayerStaysOn == staysOn.leftPointer) {
      moveRight();
    }

  }

  moveUp() {
    if(staysOn.upPointer != null && staysOn.upPointer.passable == true) {
      staysOn = staysOn.upPointer;
    }
  }
  moveRight() {
    if(staysOn.rightPointer != null && staysOn.rightPointer.passable == true) {
      staysOn = staysOn.rightPointer;
    }
  }
  moveDown() {
    if(staysOn.downPointer != null && staysOn.downPointer.passable == true) {
      staysOn = staysOn.downPointer;
    }
  }
  moveLeft() {
    if(staysOn.leftPointer != null && staysOn.leftPointer.passable == true) {
      staysOn = staysOn.leftPointer;
    }
  }


  getPosition() {
    return this.staysOn.position.x.toString() + "," +
        this.staysOn.position.y.toString();
  }

}