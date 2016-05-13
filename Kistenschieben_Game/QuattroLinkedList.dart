import 'FieldObject.dart';
import 'Wall.dart';
import 'Ground.dart';
import 'Target.dart';

class QuattroLinkedList {
  FieldObject root;
  FieldObject lastAdded;
  FieldObject firstInRow;
  FieldObject nextPrint;
  FieldObject firstInRowPrint;

  QuattroLinkedList() { // braucht glaub ich noch ein fieldObject damit der root irgendwas ist
    root = new Wall(); // jetzt schon notwendig?
    root.setXPosition(0);
    root.setYPosition(0);
    root.upPointer = null;
    root.rightPointer = null;
    root.downPointer = null;
    root.leftPointer = null;
    lastAdded = root;
    firstInRow = root;
    nextPrint = root;
    firstInRowPrint=root;

  }

  addRight(FieldObject fieldObject){
    fieldObject.leftPointer = lastAdded;
    lastAdded.rightPointer = fieldObject;

    //Position setzen
    fieldObject.setXPosition(fieldObject.leftPointer.getXPosition()+1);
    fieldObject.setYPosition(fieldObject.leftPointer.getYPosition());

    if (fieldObject.leftPointer.upPointer != null && fieldObject.leftPointer.upPointer.rightPointer != null) {
      fieldObject.upPointer = fieldObject.leftPointer.upPointer.rightPointer;
      fieldObject.leftPointer.upPointer.rightPointer.downPointer = fieldObject;

    } else {
      fieldObject.upPointer = null;
    }
    fieldObject.rightPointer = null; //oder direkt in fieldObject??
    fieldObject.downPointer = null; //oder direkt in fieldObject??
    lastAdded = fieldObject;
  }

  // neues erstes Element in neuer Zeile
  addDown(FieldObject fieldObject) {
    fieldObject.upPointer = firstInRow;
    firstInRow.downPointer = fieldObject;

    //Position setzen
    fieldObject.setYPosition(fieldObject.upPointer.getYPosition() + 1);
    fieldObject.setXPosition(fieldObject.upPointer.getXPosition());

    firstInRow = fieldObject;


    fieldObject.rightPointer = null; //oder direkt in fieldObject??
    fieldObject.downPointer = null; //oder direkt in fieldObject??
    fieldObject.leftPointer = null; //oder direkt in fieldObject??
  }


  printRight() {
    /*
    if(nextPrint == Wall) {
      print("W");
    } else {
      if(nextPrint == Ground) {
        print("G");
      } else{
        if(nextPrint == Target) {
          print("T");
        } else{
          print("El");
        }
      }

    }
    */
    if (nextPrint.leftPointer != null) {
      String output = nextPrint.getXPosition().toString() + "," + nextPrint.getYPosition().toString() +"linker Nachbar" + nextPrint.leftPointer.getXPosition().toString() + "," + nextPrint.getYPosition().toString();
      print(output);
    }

    nextPrint = nextPrint.rightPointer;
  }
  printDown() {
    firstInRowPrint = firstInRowPrint.downPointer;
    print("\n");
    String output = firstInRowPrint.getXPosition().toString() + "," + firstInRowPrint.getYPosition().toString();
    print(output);
  }

  show(int m, int n) {
    for (int i = 0; i < m; i++) {
      for (int j = 0; j < n; j++) {
        printRight();
      }
      printDown();
    }
  }
}