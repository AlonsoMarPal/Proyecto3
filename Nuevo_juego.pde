interface Personaje{
  void display();
}
interface Pantalla{
  void display();
}

soldado uno;
baculo dos;
promedio tres;
piedra cuatro;
capa cinco;
escenario batalla;
inicio titulo;
seleccion personajes;
PFont fuente1;
int pos=0;
int per1=0,per2=0;
int quien=0, quien2=0;
int jugador=0;
int sele=0;
int vida1,vida2;
int ataque1, ataque2;
int turno=1;
int x=100,y=40;

void setup(){
  size(1080,720);
  uno = new soldado(x,y);
  dos = new baculo(x,y);
  tres = new promedio(x,y);
  cuatro = new piedra(x,y);
  cinco = new capa(x,y);
  batalla = new escenario();
  titulo = new inicio();
  personajes = new seleccion();
  fuente1 = loadFont("LemonMilk-30.vlw");
 
}
void draw(){
  background(255);

  
 titulo.display();
 
 //pag seleccion
  if(pos==1){
  personajes.display();
  
        //seleccion de personaje 1
        if(quien!=0){
         fill(0);
         textFont(fuente1);
         textSize(10);
            text("P1 seleccionó al personaje: ",350,350);
            text(quien,670,350);
            
            switch(quien) {
                    case 1: 
                    vida1=uno.vida;
                    ataque1=uno.ataque;
                      break;
                    case 2: 
                    vida1=dos.vida;
                    ataque1=dos.ataque;
                      break;
                    case 3: 
                    vida1=tres.vida;
                    ataque1=tres.ataque;
                      break;
                    case 4: 
                    vida1=cuatro.vida;
                    ataque1=cuatro.ataque;
                      break;
                    case 5: 
                    vida1=cinco.vida;
                    ataque1=cinco.ataque;
                      break;              
            }
                        
            jugador=2;
            
        }
        
        //Seleccion de personaje 2
         if(quien2!=0){
         fill(0);
         textFont(fuente1);
         textSize(10);
            text("P2 seleccionó al personaje: ",300,400);
            text(quien2,620,400);
            
            switch(quien2) {
                    case 1: 
                    vida2=uno.vida;
                    ataque2=uno.ataque;
                      break;
                    case 2: 
                    vida2=dos.vida;
                    ataque2=dos.ataque;
                      break;
                    case 3: 
                    vida2=tres.vida;
                    ataque2=tres.ataque;
                      break;
                    case 4: 
                    vida2=cuatro.vida;
                    ataque2=cuatro.ataque;
                      break;
                    case 5: 
                    vida2=cinco.vida;
                    ataque2=cinco.ataque;
                      break;              
            }
            
            jugador=3;
            pos=2;
        }
   
  }
  
   //batalla
        if (pos==2){
        batalla.display();
        
        
         if(vida1<0){
        fill(0);
      textFont(fuente1);
      textAlign(CENTER, CENTER);
      text("Ganador: Jugador 2",300,-100,500,800);
      textSize(10);
      text("Presiona r para jugar de nuevo",300,200,500,800);
      
      
      if (keyPressed) {
                 if (key == 'r' || key == 'R') {
                  
                            pos=0;
                            per1=0;
                            per2=0;
                            quien=0; quien2=0;
                             jugador=0;
                             sele=0;
                             turno=1;                           
                   
                  }
                 }
        }
        
        if(vida2<0){
        fill(0);
      textFont(fuente1);
      textAlign(CENTER, CENTER);
      text("Ganador: Jugador 1",300,-100,500,800);
      textSize(10);
      text("Presiona r para jugar de nuevo",300,200,500,800);
      
      
       if (keyPressed) {
                 if (key == 'r' || key == 'R') {
                  
                            pos=0;
                            per1=0;
                            per2=0;
                            quien=0; quien2=0;
                             jugador=0;
                             sele=0;
                             turno=1;                           
                   
                  }
                 }
      
        }
        
        
        if(vida1>0&&vida2>0){
                          switch(quien) {
                    case 1: 
                    translate(0,380);
                      uno.display();
                      translate(-170,-30);
                               fill(0);
                               textFont(fuente1);
                               textSize(5);
                                  text("vida: ",300,300);
                                  text(vida1,340,300);
                      break;
                    case 2: 
                      translate(0,380);
                      dos.display();
                      translate(-170,-30);
                      fill(0);
                               textFont(fuente1);
                               textSize(5);
                                  text("vida: ",300,300);
                                  text(vida1,340,300);
                      break;
                    case 3: 
                      translate(0,380);
                      tres.display();
                      translate(-170,-30);
                      fill(0);
                               textFont(fuente1);
                               textSize(5);                           
                                  text("vida: ",300,300);
                                  text(vida1,340,300);
                      break;
                    case 4: 
                      translate(0,400);
                      cuatro.display();
                      translate(-170,-30);
                      fill(0);
                               textFont(fuente1);
                               textSize(5);
                                  text("vida: ",300,300);
                                  text(vida1,340,300);
                      break;
                    case 5: 
                      translate(0,380);
                      cinco.display();
                      translate(-170,-30);
                      fill(0);
                               textFont(fuente1);
                               textSize(5);
                                  text("vida: ",300,300);
                                  text(vida1,340,300);
                      break;          
                  }
                  
                  switch(quien2) {
                    case 1: 
                    translate(700,-10);
                      uno.display();
                      translate(-170,-30);
                                fill(0);
                               textFont(fuente1);
                               textSize(5);
                                  text("vida: ",300,300);
                                  text(vida2,340,300);
                      break;
                    case 2: 
                      translate(700,-10);
                      dos.display();
                      translate(-170,-30);
                      fill(0);
                               textFont(fuente1);
                               textSize(5);
                                  text("vida: ",300,300);
                                  text(vida2,340,300);
                      break;
                    case 3: 
                      translate(700,-10);
                      tres.display();
                      translate(-170,-30);
                      fill(0);
                               textFont(fuente1);
                               textSize(5);
                                  text("vida: ",300,300);
                                  text(vida2,340,300);
                      break;
                    case 4: 
                      translate(700,5);
                      cuatro.display();
                      translate(-170,-30);
                      fill(0);
                               textFont(fuente1);
                               textSize(5);
                                  text("vida: ",300,300);
                                  text(vida2,340,300);
                      break;
                    case 5: 
                      translate(700,-10);
                      cinco.display();
                      translate(-170,-30);
                      fill(0);
                               textFont(fuente1);
                               textSize(5);
                                  text("vida: ",300,300);
                                  text(vida2,340,300);
                      break;          
                  }
                  
                  //turnoP1
                  if (turno==1){
                 if (keyPressed) {
                 if (key == 'f' || key == 'F') {
                              switch(quien) {
                              case 1: 
                              vida2=vida2-uno.ataque;
                                break;
                              case 2: 
                              vida2=vida2-dos.ataque;
                                break;
                              case 3: 
                              vida2=vida2-tres.ataque;
                                break;
                              case 4: 
                              vida2=vida2-cuatro.ataque;
                                break;
                              case 5: 
                              vida2=vida2-cinco.ataque;
                                break;              
                                }
                   turno=2;
                  }
                 }  
                 } 
                 
                 //TurnoP2
                 if (turno==2){
                 if (keyPressed) {
                 if (key == 'j' || key == 'J') {
                             switch(quien2) {
                              case 1: 
                              vida1=vida1-uno.ataque;
                                break;
                              case 2: 
                              vida1=vida1-dos.ataque;
                                break;
                              case 3: 
                              vida1=vida1-tres.ataque;
                                break;
                              case 4: 
                              vida1=vida1-cuatro.ataque;
                                break;
                              case 5: 
                              vida1=vida1-cinco.ataque;
                                break;              
                                }
                   turno=1;
                  }
                 }  
                 } 
                 //ganador
             
                 
                  
        }
       
        }
  
}
  void mousePressed() {
    //inicio
    
    if(mousePressed && mouseX>380 && mouseX<700){
 if (mouseY>420 && mouseY<570){
   pos=1;
   jugador=1;
   mousePressed=false;
 }
 }
 
 
 //jugador1
 
 if(jugador==1){
 if (jugador==1){
   if(mousePressed && mouseX>80 && mouseX<240){
 if (mouseY>330 && mouseY<540){
   quien=1;
   mousePressed=false;
 }
 }
 
  if(mousePressed && mouseX>280 && mouseX<440){
 if (mouseY>330 && mouseY<540){
   quien=2;
   mousePressed=false;
 }
 }

  if(mousePressed && mouseX>490 && mouseX<650){
 if (mouseY>330 && mouseY<540){
   quien=3;
   mousePressed=false;
 }
 }

  if(mousePressed && mouseX>700 && mouseX<860){
 if (mouseY>330 && mouseY<540){
   quien=4;
   mousePressed=false;
 }
 }

  if(mousePressed && mouseX>870 && mouseX<1030){
 if (mouseY>330 && mouseY<540){
   quien=5;
   mousePressed=false;
 }
 }
 }
  }
  
  
  
  //jugador2
  
  if(jugador==2){
 if (jugador==2){
   if(mousePressed && mouseX>80 && mouseX<240){
 if (mouseY>330 && mouseY<540){
   quien2=1;
   mousePressed=false;
 }
 }
 
  if(mousePressed && mouseX>280 && mouseX<440){
 if (mouseY>330 && mouseY<540){
   quien2=2;
   mousePressed=false;
 }
 }

  if(mousePressed && mouseX>490 && mouseX<650){
 if (mouseY>330 && mouseY<540){
   quien2=3;
   mousePressed=false;
 }
 }

  if(mousePressed && mouseX>700 && mouseX<860){
 if (mouseY>330 && mouseY<540){
   quien2=4;
   mousePressed=false;
 }
 }

  if(mousePressed && mouseX>870 && mouseX<1030){
 if (mouseY>330 && mouseY<540){
   quien2=5;
   mousePressed=false;
 }
 }
 }
  }
  
  }
  
  
  
 //personajes.display();
 //titulo.display();
  /*batalla.display();
  translate(0,350);
  uno.display();
  translate(200,30);
  dos.display();
  translate(200,-20);
  tres.display();
  translate(200,20);
  cuatro.display();
  translate(200,10);
  cinco.display();*/
  
