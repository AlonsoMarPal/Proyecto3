class soldado implements Personaje{
  
int vida,ataque;
PImage sol;
float x,y;

soldado(float x, float y){
  
  this.x = x;
  this.y = y;
  this.vida = 55;
  
  
  sol = loadImage("Soldado.png");
  
}



void display(){
 this.ataque = floor((random(10,25)));
  translate(this.x,this.y);
  image (sol,0,0);
  
}

}
