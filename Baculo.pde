class baculo implements Personaje{
  
int vida,ataque;
PImage bac;
float x,y;

baculo(float x, float y){
  
  this.x = x;
  this.y = y;
  this.vida = 70;
 
  
  bac = loadImage("Baculo.png");
  
}



void display(){
  this.ataque = floor((random(10,15)));
  translate(this.x,this.y);
  image (bac,0,0);
  
}

}
