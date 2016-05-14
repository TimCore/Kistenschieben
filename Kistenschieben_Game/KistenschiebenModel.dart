import 'Wall.dart';
import 'Ground.dart';
import 'Target.dart';
import 'QuattroLinkedList.dart';
import 'Player.dart';
import 'dart:io';


class KistenschiebenModel {

  QuattroLinkedList qlList = new QuattroLinkedList();
  Player player;

  KistenschiebenModel() {

  }

  loadLvl(String level, int m, int n) {
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
            stdout.write(player.getPlayerPosition());

            break;
          case 'T' :
            qlList.addRight(new Target());
            break;
        }
      }
      print("");
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
            qlList.addDown(new Target());
            break;
        }
      }
    }
  }

  reset() {
    player.moveTest();
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