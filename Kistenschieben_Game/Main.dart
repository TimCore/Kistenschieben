import 'KistenschiebenModel.dart';


main() {
  KistenschiebenModel ksm = new KistenschiebenModel();
  String levelOne = "WWWWWWGGGTWWGGPGWWGGGGWWGGGTWWWWWWW";
  ksm.loadLvl(levelOne, 6, 6);
  ksm.reset();
}