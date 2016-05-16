import 'KistenschiebenModel.dart';
import 'KistenschiebenView.dart';
import 'dart:html';
import 'dart:async';
import 'dart:convert';

class KistenschiebenController {

  KistenschiebenModel ksModel;
  KistenschiebenView ksView;
  static String LEVELONE = "WWWWWWGGCTWWGGGGWWGGCPWWGGGTWWWWWWW";
  /*
  CONSTRUCTOR
   */
  KistenschiebenController(){

    window.onKeyDown.listen((KeyboardEvent ev) {
      //if (ksModel.stopped) return;
      switch (ev.keyCode) {
        case KeyCode.LEFT:  moveLeft(); break;
        case KeyCode.RIGHT: moveRight(); break;
        case KeyCode.UP:    moveUp(); break;
        case KeyCode.DOWN:  moveDown(); break;
      }
    });


  }
  
  /*
  tells the Player to move up. updates the view if the model returns true
   */
  void moveUp(){
    if(ksModel.moveUp() == true){
      updateView();
    }
  }

  /*
  tells the Player to move right. updates the view if the model returns true
   */
  void moveRight(){
    if(ksModel.moveRight() == true){
      updateView();
    }
  }

  /*
  tells the Player to move down. updates the view if the model returns true
   */
  void moveDown(){
    if(ksModel.moveDown() == true){
      updateView();
    }
  }

  /*
  tells the Player to move left. updates the view if the model returns true
   */
  void moveLeft(){
    if(ksModel.moveLeft() == true){
      updateView();
    }
  }

  /*
  moves the player to a position when the touchscreen is used.
   */
  void moveTouch(){

  }

  /*
  takes the positions of the player and the crates
   */
  void updateView(){
    List<String> cratePositions = ksModel.crateList(); //Liste von Positionen von Kisten;
    String playerposition = ksModel.playerPositionAsString();
    ksView.updateView(playerposition, cratePositions);
  }

  /*
  creates the model, starts a new game and creates the map from a String (later from a xml)
   */
  void newGame(){
    ksModel = new KistenschiebenModel();
    ksView = new KistenschiebenView();
    int m = 6;
    int n = 6;
    ksModel.loadLvl(LEVELONE, m, n);
    //ksView.loadlevel(LEVELONE, m, n);
  }

  void resetGame(){
    int m = 6;
    int n = 6;
    ksModel.reset(LEVELONE, m, n);

  }




}