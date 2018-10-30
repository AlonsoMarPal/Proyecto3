class promedio implements Personaje{
  
int vida,ataque;
PImage pro;
float x,y;

promedio(float x, float y){
  
  this.x = x;
  this.y = y;
  this.vida = 60;
  
  
  pro = loadImage("Promedio.png");
  
}



void display(){
 this.ataque = floor((random(10,20)));
  translate(this.x,this.y);
  image (pro,0,0);
  
}

}
