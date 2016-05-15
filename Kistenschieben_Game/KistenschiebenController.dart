import 'KistenschiebenModel.dart';
import 'KistenschiebenView.dart';
import 'dart:html';

class KistenschiebenController {

  KistenschiebenModel ksModel;
  KistenschiebenView view;


  /*
  Main
   */
  void main(){
    newGame();
    final e = querySelector("#keyListener");
    window.onKeyDown.listen((KeyboardEvent ev) {
      //Noch implementieren:
      //knopfdruck ruft jeweilige Move-Methode auf
      //e.appendText(new String.fromCharCode(ev.keyCode));
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
    List<String> cratePositions = ksModel.cratePositions(); //Liste von Positionen von Kisten;
    String playerposition = ksModel.playerPositionAsString();
    //view.updateView(playerposition, cratePositions);
  }

  /*
  creates the model, starts a new game and creates the map from a String (later from a xml)
   */
  void newGame(){
    ksModel = new KistenschiebenModel();
    view = new KistenschiebenView();
    int m = 6;
    int n = 6;
    String levelOne = "WWWWWWGGCTWWGGGGWWGGCPWWGGGTWWWWWWW";
    ksModel.loadLvl(levelOne, m, n);
    //view.update(ksModel, null);
    /*
    ksModel.show(m, n);
    ksModel.moveUp();
    ksModel.moveLeft();
    ksModel.moveDown();
    ksModel.moveLeft();
    ksModel.moveDown();
    ksModel.moveRight();
    ksModel.moveLeft();
    ksModel.moveUp();
    ksModel.moveUp();
    ksModel.moveUp();
    ksModel.moveRight();
    */
  }




}