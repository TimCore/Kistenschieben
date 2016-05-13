class Position{
int x;
int y;
Position(x, y) {
  this.x = x;
  this.y = y;
}

right() {
  return new Position(1,0);
}
left() {
  return new Position(-1,0);
}
up() {
  return new Position(0,-1);
}
down() {
  return new Position(0,1);
}

}