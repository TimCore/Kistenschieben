import 'KistenschiebenModel.dart';


main() {
  int m = 6;
  int n = 6;
  KistenschiebenModel ksModel = new KistenschiebenModel();
  String levelOne = "WWWWWWGGGTWWGCPGWWGGGGWWGGGTWWWWWWW";
  ksModel.loadLvl(levelOne, m, n);
  ksModel.show(m, n);
  //ksModel.moveUp();
  //ksModel.moveRight();
  //ksModel.moveDown();
  ksModel.moveLeft();


}