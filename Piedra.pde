class piedra implements Personaje{
  
int vida,ataque;
PImage pie;
float x,y;

piedra(float x, float y){
  
  this.x = x;
  this.y = y;
  this.vida = 80;
 
  
  pie = loadImage("Piedra.png");
  
}



void display(){
 
   this.ataque = floor((random(10,15)));
  translate(this.x,this.y);
  image (pie,0,0);
  
}

}
