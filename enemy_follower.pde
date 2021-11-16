class Follower extends Enemy{
Follower(int hp,int x, int y, int locx, int locy){
super(hp,50,x, y);
 loc = new PVector (locx, locy);
}

void show(){
 stroke(0);
    strokeWeight(2);
    fill(white);
    circle(loc.x, loc.y, size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);

}
 void act(){
    super.act();

 vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
 vel.setMag(1);
 
 }
}
