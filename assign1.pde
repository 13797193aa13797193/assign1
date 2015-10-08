PImage background1;
PImage background2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;

int background_X1,background_X2;
int rectX;
int fighterY;
int enemyX,enemyY;
int treasureX,treasureY;

void setup(){
    
    size(640,480);
    
    background1=loadImage("img/bg1.png");
    background2=loadImage("img/bg2.png");
    enemy=loadImage("img/enemy.png");
    fighter=loadImage("img/fighter.png");
    hp=loadImage("img/hp.png");
    treasure=loadImage("img/treasure.png");
    
    background_X1=640;
    background_X2=0;
    
    rectX=floor(random(25,204));
    
    fighterY=floor(random(40,440));
    
    enemyX=0;
    enemyY=floor(random(40,420));
    
    treasureX=floor(random(30,590));
    treasureY=floor(random(30,420));
        
}

void draw(){
  
    background(0);
    
    image(background1,-640+background_X1,0);
    image(background2,-640+background_X2,0);
    
    background_X1+=2;
    background_X2+=2;
    background_X1%=1280;
    background_X2%=1280;
    
    image(treasure,treasureX,treasureY);
    
    image(enemy,-70+enemyX,enemyY);
    enemyX+=4;
    enemyX%=680;
    
    
    fill(255,0,0);
    rect(20,13,rectX,25);
    image(hp,10,10);
    
    image(fighter,570,fighterY);
    
}
