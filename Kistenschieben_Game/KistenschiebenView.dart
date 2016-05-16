import 'dart:html';

class KistenschiebenView{

  updateView(String playerPosition, List<String>crates){
    querySelector("player").remove();
    querySelector(playerPosition).appendHtml(":-D");
    for(int i=0;i<crates.length;i++){
      querySelector("Crate").remove();
    }

    for(String pos in crates){
      querySelector(pos).appendHtml("crate");
    }

//  for(int j=0; j<=crates.length;j++){
//    Element crateElement  = new Element.html("<crate>crate</crate>");
//    querySelector(crates.elementAt(j)).append(crateElement);
//  }
//  Element playerElement  = new Element.html("<player>:-D</player>");
//  querySelector(playerPosition).append(playerElement);

    loadLevel(String level){

    }

    void main(){
      String player = "#pos2_4";
      List<String> crates = ["#pos2_3","#pos3_4"];
//   print(crates.length);
      updateView(player,crates);


      //querySelector("#pos2_4").appendHtml("player");





    }

  }

}


/*void moveRight(String playerPosition){
  
  String playerpos = "#pos3_4";
     String targetposition ="#pos4_4";
     var player = querySelector(playerpos).clone(true) ;
     querySelector("player").remove();
     querySelector(targetposition).append(player); 
  
  
}


List<String> getPlayerPosition(){
  String position = querySelector("player").parent.id; 
  position = position.substring(3,position.length);
  List<String> x_y=position.split("_");
  return x_y;
  
  
}

List<String> getCratesPosition(){
  var crates = querySelector("crate");
  
  //String position = querySelector("crate").parent.id; 
  return crates;
//  position = position.substring(3,position.length);
//  List<String> x_y=position.split("_");
//  return x_y;
  
  
}


*/

