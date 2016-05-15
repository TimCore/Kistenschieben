import 'Wall.dart';
import 'Ground.dart';
import 'Target.dart';
import 'QuattroLinkedList.dart';
import 'Player.dart';
import 'Crate.dart';


class KistenschiebenModel {

  QuattroLinkedList qlList = null;
  Player player = null;
  Crate crate = null;
  Target target = null;

  /*
  constructor
   */
  KistenschiebenModel() {

  }

  /*
  loads the level from a String with the size m x n
   */
  loadLvl(String level, int m, int n) {
    qlList = null;
    qlList = new QuattroLinkedList();
    level = level.toUpperCase();
    for (int i = 0; i < m; i++) {
      //Spalten
      for (int j = 1; j < n; j++) {
        //Zeilen
        String firstChar = level.substring(0, 1);
        level = level.substring(1);
        switch (firstChar) {
          case 'W' :
            qlList.addRight(new Wall());
            break;
          case 'G' :
            qlList.addRight(new Ground());
            break;
          case 'P' :
            player = new Player(qlList.addRight(new Ground()));
            break;
          case 'C' :
            crate = new Crate(qlList.addRight(new Ground()));
            crate.staysOn.setCrate(crate);
            break;
          case 'T' :
            target = qlList.addRight(new Target(target));
            break;
        }
      }
      if (level.length > 0) {
        //wollen wir anders abfangen DIRTY
        String firstChar = level.substring(0, 1);
        level = level.substring(1);
        switch (firstChar) {
          case 'W' :
            qlList.addDown(new Wall());
            break;
          case 'G' :
            qlList.addDown(new Ground());
            break;
          case 'P' :
            qlList.addRight(new Ground());
            break;
          case 'T' :
            target = qlList.addRight(new Target(target));
            break;
        }
      }
    }
  }

  /*
  tells the player to go up. Returns true if possible, false if not
   */
  bool moveUp() {
    if(player.moveUp() == true){
      return true;
    }else{
      return false;
    }
  }

  /*
  tells the player to go right. Returns true if possible, false if not
   */
  bool moveRight() {
    if(player.moveRight() == true){
      return true;
    }else{
      return false;
    }
  }

  /*
  tells the player to go down. Returns true if possible, false if not
   */
  bool moveDown() {
    if(player.moveDown() == true){
      return true;
    }else{
      return false;
    }
  }

  /*
  tells the player to go left. Returns true if possible, false if not
   */
  bool moveLeft() {
    if(player.moveLeft() == true){
      return true;
    }else{
      return false;
    }
  }

  show(m, n) {
    print("PlayerPosition: " + player.getPosition());
    print("CratePosition: " + crate.getPosition());
    qlList.printField(m, n);
  }


  reset(level, m, n) {
    loadLvl(level, m, n);
  }

  loadStatistics() {

  }

  saveStatistics() {

  }

  printErrorMessage() {

  }

  changeView() {

  }

  exit() {

  }
}