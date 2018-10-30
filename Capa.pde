class capa implements Personaje{
  
int vida,ataque;
PImage cap;
float x,y;

capa(float x, float y){
  
  this.x = x;
  this.y = y;
  this.vida = 55;

  
  cap = loadImage("Capa.png");
  
}



void display(){
 
    this.ataque = floor((random(10,20)));
  translate(this.x,this.y);
  image (cap,0,0);
  
}

}
