import 'FieldObject.dart';

class Crate{
  FieldObject staysOn;

  Crate(FieldObject staysOn) {
    this.staysOn = staysOn;
  }
  getPosition() {
    return this.staysOn.position.x.toString() + "," +
        this.staysOn.position.y.toString();
  }

}