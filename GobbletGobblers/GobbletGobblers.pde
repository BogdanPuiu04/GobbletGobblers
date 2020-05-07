////////////////////////
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

   Minim minim;
AudioPlayer Player;
  PShape bot;
PVector location_blue;  
PVector velocity_blue; 
PVector gravity_blue;   
PVector location_blue2;  
PVector velocity_blue2; 
PVector gravity_blue2;
PVector location_blue3;  
PVector velocity_blue3; 
PVector gravity_blue3;
PVector location_settings;
PVector velocity_settings;
PVector gravity_settings;

PVector location_red;  
PVector velocity_red; 
PVector gravity_red;   
PVector location_red2;  
PVector velocity_red2; 
PVector gravity_red2;
PVector location_red3;  
PVector velocity_red3; 
PVector gravity_red3;

void setup ()  {
           minim = new Minim(this);
           Player = minim.loadFile("music.wav");
           Player.loop();
          size(1920,1080);
          
          location_blue = new PVector(width/20,height - height/2.2);
          velocity_blue = new PVector(0,0);
          gravity_blue = new PVector(0,0.2);
          location_blue2 = new PVector(width/20,height - height/2);
          velocity_blue2 = new PVector(0,0);
          gravity_blue2 = new PVector(0,0.2);
          location_blue3 = new PVector(width/20,height - height/1.8);
          velocity_blue3 = new PVector(0,0);
          gravity_blue3 = new PVector(0,0.2);
          location_settings=new PVector(width/15, height/4);
          velocity_settings=new PVector(2,5);
          gravity_settings=new PVector(0,0.2);
          
          location_red = new PVector(width - width/20,height - height/2.2);
          velocity_red = new PVector(0,0);
          gravity_red = new PVector(0,0.2);
          location_red2 = new PVector(width - width/20,height - height/2);
          velocity_red2 = new PVector(0,0);
          gravity_red2 = new PVector(0,0.2);
          location_red3 = new PVector(width - width/20,height - height/1.8);
          velocity_red3 = new PVector(0,0);
          gravity_red3 = new PVector(0,0.2);
          
           
          pink =loadImage("pink.png");
          sure =loadImage("sure.png");
           move =loadImage("move.png");
           hard =loadImage("hard.png");
           easy =loadImage("easy.png");
           yes =loadImage("yes.png");
           no =loadImage("no.png");
           cancel =loadImage("cancel.png");
           save =loadImage("save.png");
           last_game =loadImage("last_game.png");
           last_game_used =loadImage("last_game_used.png");
           new_game =loadImage("new_game.png");
           pcr=loadImage("pcr.png");
           player_vs_player=loadImage("player_vs_player.png");
           player_vs_computer=loadImage("player_vs_computer.png");
           music_on=loadImage("music_on.png");
           music_off=loadImage("music_off.png");
           turn_blue = loadImage("turn_blue.png");
           turn_red = loadImage("turn_red.png");
           undo_used = loadImage("undo_used.png"); 
           undo = loadImage("undo.png");
           back = loadImage("back.png");
           red_2 = loadImage("2_red.png");
           blue_2 = loadImage("2_blue.png");
           red_1 = loadImage("1_red.png");
           blue_1 = loadImage("1_blue.png");
           red_0 = loadImage("0_red.png");
           blue_0 = loadImage("0_blue.png");
           RED_WINS = loadImage("RED_WINS.png");
           BLUE_WINS = loadImage("BLUE_WINS.png");
           red_piece1 = loadImage("RED2.png");
           dreapta = loadImage("dreapta.png");
           stanga = loadImage("stanga.png");
           blue_piece1 = loadImage("BLUE3.png");
           exit_logo = loadImage("exit_logo.png");
           ins_logo = loadImage("ins_logo.png");
           blue_piece2 = loadImage("BLUE2.png");
           blue_piece3 = loadImage("BLUE.png");
           set_logo =  loadImage("set_log.png");
           logo = loadImage("logo.png");
           play_logo = loadImage("play_logo.png");
           blue_piece0 = loadImage("blue_piece_1.png");
           tabla=loadImage("tabla.png");
           bk=loadImage("background.png");
           music_on=loadImage("music_on.png");
           music_off=loadImage("music_off.png");
           bk=loadImage("background.png");
           button_off=loadImage("button_off.png");
           button_on=loadImage("button_on.png");
           white=loadImage("white.png");
           black=loadImage("black.png");
           green=loadImage("green.png");
           rez=loadImage("rez.png");
           infos=loadImage("infos2.png");
           yellow=loadImage("yellow.png");
           purple=loadImage("purple.png");
           sel_piece=loadImage("select_piece.png");
           purple_wins=loadImage("purple_wins.png");
           yellow_wins=loadImage("yellow_wins.png");
           music_white=loadImage("music_white.png");
           red_piece1_copy=red_piece1;
           blue_piece1_copy=blue_piece1;
           
           location = new PVector(width / 10,height/9);
           location2 = new PVector(width - width/10 , height/9);
           
          velocity = new PVector(3.5,2.1);
          gravity = new PVector(0,0.2);
          velocity2 = new PVector(-3.5,2.1);
          gravity2 = new PVector(0,0.2);
    
}

void draw()  {
             if ( sw == 0 )  
                  cadru_meniu(1);
              
              if ( sw == 1 )  
                cadru_play( 1);
                
              if ( sw == 10 ) 
               background (133); 
              
              if ( sw == 12 )
                cadru_sure(1);
              
              if ( sw == 11 ) 
               easy_comp(1);
    
              if ( sw == 10 )
              hard_comp(1);
              
              if ( sw == 6 )  
                 cadru_new_game(1);
            
              if (  sw == 3 )  
                instructiuni(1);
              
              if (  sw == 2 )  
                 setari(1);    

              if ( sw == 5 )    
              cadru_player_vs_player(1);
                      
              if ( sw == 7 )  
                 salvare(1);          
                    
              if ( sw == -1 )  
                  cineva_a_castigat(1);
               if ( sw == -2 )
                  cineva_a_castigat_computer(1);
}

void background ( int[] color1, int transparenta )  { 
 background ( color1[0], color1[1], color1[2], transparenta );  
}
void BackGround( int x )  {
              if(bk_color==0) {
                 background(white0,1000);
              }
              if(bk_color==1) {
                 background(black1,1000);
              }
              if(bk_color==2) {
                background(green1,1000);
               }   
              if(bk_color==3) {
                 background(c_3,1000);
               } 

}
void buton_back(int x)  {
        image( back , width/20 , height - height/9, width/ 6 , height/13 );
           if ( tine == 0 && mousePressed && width /20 <= mouseX && mouseX <= width / 20 + width/6 && height - height/9 <= mouseY && mouseY <= height - height/9 + height/13  )  {
              sw = 7 ;  
            }
}

void buton_undo(int x)  { //used=0 - poate fi folosit , used=1 - nu poate fi folosit
           if ( used == 0 )
              image( undo , width/1.3 , height - height/9, width/ 6 , height/13 );
           else
              image( undo_used , width/1.3 , height - height/9, width/ 6 , height/13 );
             

            if ( tine == 0 && mousePressed && width /1.3 <= mouseX && mouseX <= width / 1.3 + width/6 && height - height/9 <= mouseY && mouseY <= height - height/9 + height/13 && used == 0 )  {
                   used = 1 ;
                    nr_mutari --; 
                            
                 if ( LAST_X > 0 )  {
                   joc3 [ LAST_X ][ LAST_Y ] = joc2 [ LAST_X ][ LAST_Y ];
                   joc2 [ LAST_X ][ LAST_Y ] = joc [ LAST_X ][ LAST_Y ];    
                   joc [ LAST_X ][ LAST_Y ] = joc [ CURR_X ][ CURR_Y ];
                   
                 }
                   
                  if ( LAST_X == -2 && LAST_Y == 1 )  {
                    nr_of_1 ++ ;
                  }                   
                   
                  if ( LAST_X == -2 && LAST_Y == 2 )  {
                    nr_of_2 ++ ;
                  }   
                  
                  if ( LAST_X == -2 && LAST_Y == 3 )  {
                    nr_of_3 ++ ;
                  }
                  
                  if ( LAST_X == -3 && LAST_Y == 1 )  {
                    nr_of_4 ++ ;
                  }
                  
                  if ( LAST_X == -3 && LAST_Y == 2 )  {
                    nr_of_5 ++ ;
                  }   
                  
                  if ( LAST_X == -3 && LAST_Y == 3 )  {
                    nr_of_6 ++ ;
                  }   
                   
                   joc [ CURR_X ][ CURR_Y ] = joc2 [ CURR_X ][ CURR_Y ]; 
                   joc2 [ CURR_X ][ CURR_Y ] = joc3 [ CURR_X ][ CURR_Y ]; 
                   joc3 [ CURR_X ][ CURR_Y ] = 0; 
            }        
}

void buton_undo_computer(int x)  {
           if ( used_computer == 0 )
              image( undo , width/1.3 , height - height/9, width/ 6 , height/13 );
           else
              image( undo_used , width/1.3 , height - height/9, width/ 6 , height/13 );
             
 
            if ( tine_computer == 0 && mousePressed && width /1.3 <= mouseX && mouseX <= width / 1.3 + width/6 && height - height/9 <= mouseY && mouseY <= height - height/9 + height/13 && used_computer == 0 )  {
                   used_computer = 1 ;
                    nr_mutari_computer --;
                           
                 if ( LAST_X_computer > 0 )  {
                   joc3_computer [ LAST_X_computer ][ LAST_Y_computer ] = joc2_computer [ LAST_X_computer ][ LAST_Y_computer ];
                   joc2_computer [ LAST_X_computer ][ LAST_Y_computer ] = joc_computer [ LAST_X_computer ][ LAST_Y_computer ];    
                   joc_computer [ LAST_X_computer ][ LAST_Y_computer ] = joc_computer [ CURR_X_computer ][ CURR_Y_computer ];
                 }
                   
                  if ( LAST_X_computer == -2 && LAST_Y_computer == 1 )  {
                    nr_of_1_computer ++ ;
                  }                  
                   
                  if ( LAST_X_computer == -2 && LAST_Y_computer == 2 )  {
                    nr_of_2_computer ++ ;
                  }  
                 
                  if ( LAST_X_computer == -2 && LAST_Y_computer == 3 )  {
                    nr_of_3_computer ++ ;
                  }
                 
                  if ( LAST_X_computer == -3 && LAST_Y_computer == 1 )  {
                    nr_of_4_computer ++ ;
                  }
                 
                  if ( LAST_X_computer == -3 && LAST_Y_computer == 2 )  {
                    nr_of_5_computer ++ ;
                  }  
                 
                  if ( LAST_X_computer == -3 && LAST_Y_computer == 3 )  {
                    nr_of_6_computer ++ ;
                  }  
                   
                   joc_computer [ CURR_X_computer ][ CURR_Y_computer ] = joc2_computer [ CURR_X_computer ][ CURR_Y_computer ];
                   joc2_computer [ CURR_X_computer ][ CURR_Y_computer ] = joc3_computer [ CURR_X_computer ][ CURR_Y_computer ];
              //  sw = 0 ;
            }        
}

void cadru_player_vs_player ( int x )  {
             //   background( c_1, 1000 );
              // background( c_2, 1000 );
              // background(c_3, 0);
             // background ( c_4 , 0 ) ;
             // background ( c_5 , 0 ) ;
             BackGround(1);
                           if (abs(mouseX - mx) > 0.1) {
                            mx = mouseX ;
                           }
                           if (abs(mouseY - my) > 0.1) {
                            my = mouseY;
                          }
                          mx = constrain(mx, width / 20 , width - width/20);            
                          my = constrain(my, height/8, height - height/8);   
                                                  
                     pune_imagini_in_play(1);     
                    drop_afara( 1);
                    pune_piesele(1);           
                    verifica_castigator (1);
                    if ( tine != -1 )  {        
                        cursorul_poarte_imaginea(1);
                        dropeaza_imaginea(1);
                        muta_piesa_de_pe_tabla(1);
                        muta_piesa_de_pe_margine(1);
                        buton_back(1);
                        buton_undo(1);
                      }  else    {
                         sw = -1;
                      }
}

void cadru_meniu ( int x )  {
                  BackGround(1);
             
                  if (abs(mouseX - mx) > 0.1) {
                    mx = mouseX ;
                  }
                  if (abs(mouseY - my) > 0.1) {
                    my = mouseY;
                  }
                  mx = constrain(mx, width / 10 , width - width/10);          
                  my = constrain(my, height/6 + height/8, height /1.6 + height/30 ); 
                  
                   image(dreapta, width - width/16 ,0 , width / 16, height);
                   image(stanga, 0 ,0 , width / 16, height);
    
                  location.add(velocity);
                  location2.add(velocity2);
                  // Add gravity to velocity
                  velocity.add(gravity);
                  velocity2.add(gravity2);
                  
                  location.x = constrain(location.x, width / 10 , width/2 - width/8);                    
                  location2.x = constrain(location2.x,  width/2 - width/8 + width/4 , width - width/10); 
                  
                  if ((location.x >=  width/2 - width/8) || (location.x <= width / 10)) { // daca e perete lateral
                    v1 = 1- v1;                                                           // schimba orientarea piesei albastre de langa logo
                    velocity.x = velocity.x * -1;
                  }
                  if ((location2.x >= width - width/10) || (location2.x <= width/2 - width/8 + width/4 )) {  // daca e perete lateral
                    v2 = 1 - v2;                                                                              // schimba orientarea piesei albastre de langa logo
                    velocity2.x = velocity2.x * -1;
                  }
                  if (location.y > height/6) {
                    velocity.y = velocity.y * -0.95; 
                    location.y = height/6;
                  }
                  if (location2.y > height/6) {
                    velocity2.y = velocity2.y * -0.95; 
                    location2.y = height/6;
                  }
                  
                  if ( v1 == 0 )      // orientarea piesei din stanga logo-ului
                  image(blue_piece2, location.x,location.y-height/10, width/ 30 , height/8 );
                  else
                  image(blue_piece3, location.x,location.y-height/10, width/ 30 , height/8 );
                  if ( v2 == 0 )      // orientarea piesei din dreapta logo-ului
                  image(blue_piece3, location2.x,location2.y-height/10, width/ 30 , height/8 );
                  else
                  image(blue_piece2, location2.x,location2.y-height/10, width/ 30 , height/8 );
            
                  
                  image(logo, width/2 - width/8 + width/30 , 0 , width/4.8, height/5);
                  image( play_logo, width/9 , height - height/4 , width/ 6 , height/10 );
                  image( blue_piece1 , width/6 , height/1.6 , width/ 30 , height/8 );
                  image( set_logo , width/3.5 , height - height/4.5, width/ 6 , height/16 );
                  image( blue_piece2 , width/3 + width/16 - width/33 , height/1.6,width/30,height/8);
                  image( ins_logo , width/3 + width/6 , height - height/4.5, width/ 4 , height/16 );
                  image( blue_piece3 , width/3 + width/6 + width/12 - width/60 , height/1.6 , width/ 30  , height/8 );
                  image( exit_logo , width/1.3 , height - height/4.5, width/ 8 , height/16 );
                  image( red_piece1 , width/3 + width/2.5 + width/12 - width/60 , height /1.6 , width/ 30  , height/8 );
                  //image(img_settings, width/2-width/20,height-height/10,width/16,height/13);
              
                  
                  image (red_piece1,mx - width/32, my-height/9, width/16, height/4.5);  /// poza pe mouse
                 // shape(bot, 110, 90, 100, 100);
    
                  if ( width/6 - width/30 <= mouseX && mouseX <= width/6 + width/30 && height / 1.6 <= mouseY && mouseY <= height/1.6 + height/8  && mousePressed )  {
                    /// click pe play
                    sw = 1 ;
                  }
                  
                  if ( width/3 + width/16 - width/60 - width/30 <= mouseX && mouseX <=  width/3 + width/16 - width/60 + width/30 && height - height/4.5 - height/8 <= mouseY && mouseY <= height - height/4.5 + height/8   && mousePressed )  {
                    /// click pe settings  
                    sw = 2 ;
                  }
                  
                  if ( width/3 + width/6 + width/12 - width/60 - width/ 30 <= mouseX && mouseX <=  width/3 + width/6 + width/12 - width/60 + width/ 30 && height - height/11.5 - height/8 - height/8  <= mouseY && mouseY <= height - height/11.5 - height/8 + height/8    && mousePressed )  {
                    /// click pe instructions 
                    sw = 3 ;
                  }
                  
                  if ( width/3 + width/2.5 <= mouseX && mouseX <= width/3 + width/2.5 + width/ 6 && height / 1.6 <= mouseY && mouseY <= height/1.6 + height/8  && mousePressed )  {
                    exit();
                  } 
}

void cadru_new_game( int x )  {
                BackGround(1);

              image( new_game , width/2 - width/7 , height /4 + height / 20 , width/ 3.5  , height/20 );
                 
             if ( width/2 - width/8 <= mouseX && mouseX <= width/2 - width/8 + width/ 3.5  && height /4 +  height / 20 <= mouseY && mouseY <= height /4 +  height/20 +  height / 20 && mousePressed )  {  
               for ( int i = 0 ; i < 3 ; ++ i )
               for ( int j = 0 ; j < 3 ; ++ j )
                       joc [ i ][ j ] = 0;
                  nr_mutari = 0;
                 nr_of_1 = 2 ;
                 nr_of_2 = 2 ;
                 nr_of_3 = 2 ;
                 nr_of_4 = 2 ;
                 nr_of_5 = 2 ;
                 nr_of_6 = 2 ;
                 used = 1 ;
                 prev_game = 0;
                sw = 5 ;
             }   
                      
              int ok = 0;
              for ( int i = 0 ; i < 3 ; ++ i )
              for ( int j = 0 ; j < 3 ; ++ j ) {
                    if ( joc [ i ][ j ] != 0 )  {
                       ok = 1 ; 
                    }
              }
              if ( prev_game == 0 )
                image( last_game_used , width/2 - width/7 , height /2.5 + height / 20 , width/ 3.5  , height/20 );
              else {
                 image( last_game , width/2 - width/7 , height /2.5 + height / 20 , width/ 3.5  , height/20 );
        
        
                if ( width/2 - width/8 <= mouseX && mouseX <= width/2 - width/8 + width/ 3.5  && height /2.5 + height / 20 <= mouseY && mouseY <= height /2.5 + height / 20 + height/20  && mousePressed )  {  
                    sw = 5 ;
              }
              
              
              }
}

void cadru_play ( int x )  {
                
                BackGround(1);

                   image( back , width/25 , height/50 , width/15 , height/15 );
                   if( mouseX>=width/30 && mouseX<=width/30+width/15 && mouseY<=height/80+height/10 && mouseY>=height/80 && mousePressed ){
                         sw=0;
                   }
                                image( player_vs_player , width/2 - width/8 , height /4 , width/ 4  , height/22 );
                                if ( width/2 - width/8 <= mouseX && mouseX <= width/2 - width/8 +  width/ 4   &&  height /4 <= mouseY && mouseY <= height /4 + height/22   && mousePressed )  {
                                    sw = 6;
                                }
                                temp = 0;
                                image( player_vs_computer , width/2 - width/7 , height /2.5 , width/ 3.5  , height/20 );
                                if ( width/2 - width/7 <= mouseX && mouseX <= width/2 - width/7 + width/ 3.5  && height /2.5 <= mouseY && mouseY <= height /2.5 + height/20 )  {
                                    apare = 1;
                                    temp = 1 ;
                                }  
                                if ( apare == 1 && width/2 - width/7 + width/ 3.5 <= mouseX && mouseX <= width/2 - width/7 + width/ 3.5 + width/ 9 && height /2.5 <= mouseY && mouseY <= height /2.5 + height/20  )  {
                                    apare = 1 ;
                                    temp = 1 ;
                                  //  sw = 10;
                                }
                                 if ( apare == 1 && width/2 - width/7 - width/9 <= mouseX && mouseX <= width/2 - width/7 && height /2.5 <= mouseY && mouseY <= height /2.5 + height/20  )  {
                                    apare = 1 ;
                                    temp = 1 ;
                                  //  sw = 10;
                                }
                                apare = temp;
                             if ( apare == 1 )   {
                                image( hard , width/2 - width/7 + width/ 3.5 , height /2.5 , width/ 9  , height/20 );
                                image( easy , width/2 - width/7 - width/9 , height /2.5 , width/ 9  , height/20 );
                              }
                              if ( apare == 1 && width/2 - width/7 + width/ 3.5 <= mouseX && mouseX <= width/2 - width/7 + width/ 3.5 + width/ 9 && height /2.5 <= mouseY && mouseY <= height /2.5 + height/20 && mousePressed )  {
                                apare = 0;
                                sw = 10;
                              }
                              if ( apare == 1&& width/2 - width/7 - width/9 <= mouseX && mouseX <= width/2 - width/7 && height /2.5 <= mouseY && mouseY <= height /2.5 + height/20 && mousePressed )  {
                                apare = 0;
                                sw = 11;
                              } 
                       location_blue3.add(velocity_blue3);
                       velocity_blue3.add(gravity_blue3);
                       
                    if (location_blue3.y > height) {
                        velocity_blue3.y = velocity_blue3.y * -0.98; 
                        location_blue3.y = height;
                    }
                    image(blue_piece1, location_blue3.x + width/10*2,location_blue3.y-height/10 - height /16, width/ 30 , height/8 );
                       
                       location_blue2.add(velocity_blue2);
                       velocity_blue2.add(gravity_blue2);
                       
                   if (location_blue2.y > height) {
                        velocity_blue2.y = velocity_blue2.y * -0.98; 
                        location_blue2.y = height;
                    }
                    image(blue_piece1, location_blue2.x + width/10,location_blue2.y-height/10 - height/16 * 1.3, width/ 30 * 1.3 , height/8 * 1.3 );
                    
                       location_blue.add(velocity_blue);
                       velocity_blue.add(gravity_blue);
                       
                    if (location_blue.y > height) {
                        velocity_blue.y = velocity_blue.y * -0.98; 
                        location_blue.y = height;
                    }
                    image(blue_piece1, location_blue.x,location_blue.y-height/10 - height /16 * 1.6, width/ 30 * 1.6 , height/8 * 1.6 );
                    
                    location_red3.add(velocity_red3);
                       velocity_red3.add(gravity_red3);
                       
                    if (location_red3.y > height) {
                        velocity_red3.y = velocity_red3.y * -0.98; 
                        location_red3.y = height;
                    }
                    image(red_piece1, location_red3.x - width /20 - width/10*2 ,location_red3.y-height/10 - height /16, width/ 30 , height/8 );
                       
                   location_red2.add(velocity_red2);
                       velocity_red2.add(gravity_red2);
                       
                    if (location_red2.y > height) {
                        velocity_red2.y = velocity_red2.y * -0.98; 
                        location_red2.y = height;
                    }
                    image(red_piece1, location_red2.x - width /20 - width/10 ,location_red2.y-height/10 - height /16 * 1.3, width/ 30 * 1.3 , height/8 * 1.3 );
                    
                    location_red.add(velocity_red);
                       velocity_red.add(gravity_red);
                       
                    if (location_red.y > height) {
                        velocity_red.y = velocity_red.y * -0.98; 
                        location_red.y = height;
                    }
                    image(red_piece1, location_red.x - width /20 ,location_red.y-height/10 - height /16 * 1.6, width/ 30 * 1.6 , height/8 * 1.6 );
                    
                      
                    image(pcr, width/2 - width/6 - height/20 , height/1.3, width/ 3 , height/10);
                     rect(width/2 - width/6 + width/3 - height/20, height/1.3, height/10, height/10 );
                    
                      fill (255);
                      line(width/2 - width/6 + width/3 + height / 100 - height/20 , height / 1.3 + height / 11  , width/2 - width/6 + width/3 + height / 11 - height/20 , height / 1.3 + height / 84 );
                      line(width/2 - width/6 + width/3 + height / 25 - height/20 , height / 1.3 + height / 35 ,  width/2 - width/6 + width/3 + height / 11 - height/20 , height / 1.3 + height / 84 );
                      line(width/2 - width/6 + width/3 + height / 13 - height/20 , height / 1.3 + height / 17 ,  width/2 - width/6 + width/3 + height / 11 - height/20 , height / 1.3 + height / 84 );
                      
                      if ( width/2 - width/6 - height/20 <= mouseX && mouseX <= width/2 - width/6 - height/20 + width/ 3 + width/2 - width/6 + width/3 + height / 11 - height/20 &&
                           height/1.3 <= mouseY && mouseY <=  height/1.3 + height/10 )  {
                           fill(204);
                           if ( mousePressed && odata_pcr == 0 )  {
                               odata_pcr = 1 ;
                              link("https://programarecurabdare.ro/");
                           }
                       }
}

void cadru_sure ( int x )   {
                  BackGround(1);
                    image( sure, width/2 - width/6 , height/4, width/ 3 , height/10);
                    
                    image( yes , width/2 - width / 6 - width/ 12 * 1.5 , height/1.5, width/ 12 * 1.5 , height/30 * 1.5 );
                    
                if (  width/2 - width / 6 - width/ 12 * 1.5 <= mouseX && mouseX <=  width/2 - width / 6  && height/1.5 <= mouseY && mouseY <= height/1.5 + height/30 * 1.5 && mousePressed )  {  
                      sw = 1;
                      for ( int i = 0 ; i < 3;  ++ i )
                               for ( int j = 0 ; j < 3 ; ++ j )
                                      joc_computer [ i ][ j ] = 0;
                                     nr_of_1_computer = 2;
                                     nr_of_2_computer = 2;
                                     nr_of_3_computer = 2;
                                     nr_of_4_computer = 2;
                                     nr_of_5_computer = 2;
                                     nr_of_6_computer = 2;
                                    prev_game_computer = 0;
                                    nr_mutari_computer = 0;
                                    used_computer = 1 ;
                                    tine_computer = 0;
                      
                }    
                    image( no , width/2 + width /6 , height/1.5, width/ 18 * 1.5 , height/30 *1.5 );
                    
                if (  width/2 + width / 6 <= mouseX && mouseX <=  width/2 + width / 6 + width/ 12 * 1.5  && height/1.5 <= mouseY && mouseY <= height/1.5 + height/30 * 1.5 && mousePressed )  {  
                  sw = 11;
                }
}

void cineva_a_castigat(int x)  {
                 BackGround(1);
                     image( tabla , width / 2 - width / 2.6 , height /8 , width/ 1.3  , height/1.3 );
                      pune_piesele(1);
                    
                            image( back , width/20 , height - height/9, width/ 6 , height/13 );
                
                            if ( mousePressed && width /20 <= mouseX && mouseX <= width / 20 + width/6 && height - height/9 <= mouseY && mouseY <= height - height/9 + height/13  )  {
                              sw = 1 ;  
                               for ( int i = 0 ; i < 3;  ++ i )
                               for ( int j = 0 ; j < 3 ; ++ j )
                                      joc [ i ][ j ] = 0;
                                     nr_of_1 = 2;
                                     nr_of_2 = 2;
                                     nr_of_3 = 2;
                                     nr_of_4 = 2;
                                     nr_of_5 = 2;
                                     nr_of_6 = 2;
                                    prev_game = 0;
                                    nr_mutari = 0;
                                    used = 1 ;
                                    tine = 0;
                            }
                    
                    
                    
                        if ( winner == 1 && changed_purple==0 )
                          image(BLUE_WINS, width/2 - width/8 + width/30 , 0 , width/4.8, height/9);
                        if( winner == 1 && changed_purple==1)
                          image(purple_wins, width/2-width/8+width/30-width/25,height/20-height/6 , width/3,height/3);
                         
                        if ( winner == 2 && changed_yellow==0)
                          image(RED_WINS, width/2 - width/8 + width/30 , 0 , width/4.8, height/9);  
                        if( winner == 2 && changed_yellow==1)
                        image(yellow_wins, width/2-width/8+width/30-width/25,height/20-height/6 , width/3,height/3);  

}
void cineva_a_castigat_computer(int x)  {
                 BackGround(1);
                     image( tabla , width / 2 - width / 2.6 , height /8 , width/ 1.3  , height/1.3 );
                      pune_piesele_computer(1);
                   
                            image( back , width/20 , height - height/9, width/ 6 , height/13 );
               
                            if ( mousePressed && width /20 <= mouseX && mouseX <= width / 20 + width/6 && height - height/9 <= mouseY && mouseY <= height - height/9 + height/13  )  {
                              sw = 1 ;  
                               for ( int i = 0 ; i < 3;  ++ i )
                               for ( int j = 0 ; j < 3 ; ++ j )
                                      joc_computer [ i ][ j ] = 0;
                                     nr_of_1_computer = 2;
                                     nr_of_2_computer = 2;
                                     nr_of_3_computer = 2;
                                     nr_of_4_computer = 2;
                                     nr_of_5_computer = 2;
                                     nr_of_6_computer = 2;
                                    prev_game_computer = 0;
                                    nr_mutari_computer = 0;
                                    used_computer = 1 ;
                                    tine_computer = 0;
                            }
                  
                        if ( winner_computer == 1 && changed_purple==0 )
                          image(BLUE_WINS, width/2 - width/8 + width/30 , 0 , width/4.8, height/9);
                        if( winner_computer == 1 && changed_purple==1)
                          image(purple_wins, width/2-width/8+width/30-width/25,height/20-height/6 , width/3,height/3);
                         
                        if ( winner_computer == 2 && changed_yellow==0)
                          image(RED_WINS, width/2 - width/8 + width/30 , 0 , width/4.8, height/9);  
                        if( winner_computer == 2 && changed_yellow==1)
                        image(yellow_wins, width/2-width/8+width/30-width/25,height/20-height/6 , width/3,height/3);  
 
}

void drop_afara ( int x )  {
           if ( !mousePressed && tine != 0 && last_piece_x != -1 && last_piece_y != -1 && (
           !(width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8) &&
           !( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8) &&
           !( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8) &&
           !( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8) &&
           !( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 ) &&
           !( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 ) &&
           !( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 ) &&
           !( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 ) &&
           !( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 ) ||
           
           !( 
               width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&  (
              ( tine == 1 && joc [0][0] == 0 ) || 
              ( tine == 4 && joc [0][0] == 0 ) || 
              (tine == 2 && ( joc [0][0] == 0 || joc [0][0] == 1 || joc [0][0] == 4 ) ) ||
              (tine == 5 && ( joc [0][0] == 0 || joc [0][0] == 1 || joc [0][0] == 4 ) ) || 
              ( tine == 3 && ( joc [0][0] == 0 || joc [0][0] == 1 || joc [0][0] == 4 || joc[0][0] ==2 || joc[0][0]==5 ) ) ||
              ( tine == 6 && ( joc [0][0] == 0 || joc [0][0] == 1 || joc [0][0] == 4 || joc[0][0] ==2 || joc[0][0]==5 ) ) 
           ) )
             &&
           !( 
              width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&  (
              ( tine == 1 && joc [0][1] == 0 ) || 
              ( tine == 4 && joc [0][1] == 0 ) || 
              (tine == 2 && ( joc [0][1] == 0 || joc [0][1] == 1 || joc [0][1] == 4 ) ) ||
              (tine == 5 && ( joc [0][1] == 0 || joc [0][1] == 1 || joc [0][1] == 4 ) ) || 
              ( tine == 3 && ( joc [0][1] == 0 || joc [0][1] == 1 || joc [0][1] == 4 || joc[0][1] ==2 || joc[0][1]==5 ) ) ||
              ( tine == 6 && ( joc [0][1] == 0 || joc [0][1] == 1 || joc [0][1] == 4 || joc[0][1] ==2 || joc[0][1]==5 ) ) 
           ) )
            &&
             !( 
              width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&  (
              ( tine == 1 && joc [0][2] == 0 ) || 
              ( tine == 4 && joc [0][2] == 0 ) || 
              (tine == 2 && ( joc [0][2] == 0 || joc [0][2] == 1 || joc [0][2] == 4 ) ) ||
              (tine == 5 && ( joc [0][2] == 0 || joc [0][2] == 1 || joc [0][2] == 4 ) ) || 
              ( tine == 3 && ( joc [0][2] == 0 || joc [0][2] == 1 || joc [0][2] == 4 || joc[0][2] ==2 || joc[0][2]==5 ) ) ||
              ( tine == 6 && ( joc [0][2] == 0 || joc [0][2] == 1 || joc [0][2] == 4 || joc[0][2] ==2 || joc[0][2]==5 ) ) 
           ) )
            &&
            !( 
              width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&  (
              ( tine == 1 && joc [1][0] == 0 ) || 
              ( tine == 4 && joc [1][0] == 0 ) || 
              (tine == 2 && ( joc [1][0] == 0 || joc [1][0] == 1 || joc [1][0] == 4 ) ) ||
              (tine == 5 && ( joc [1][0] == 0 || joc [1][0] == 1 || joc [1][0] == 4 ) ) || 
              ( tine == 3 && ( joc [1][0] == 0 || joc [1][0] == 1 || joc [1][0] == 4 || joc[1][0] ==2 || joc[1][0]==5 ) ) ||
              ( tine == 6 && ( joc [1][0] == 0 || joc [1][0] == 1 || joc [1][0] == 4 || joc[1][0] ==2 || joc[1][0]==5 ) ) 
           ) )
           &&
           !( 
              width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&  (
              ( tine == 1 && joc [1][1] == 0 ) || 
              ( tine == 4 && joc [1][1] == 0 ) || 
              (tine == 2 && ( joc [1][1] == 0 || joc [1][1] == 1 || joc [1][1] == 4 ) ) ||
              (tine == 5 && ( joc [1][1] == 0 || joc [1][1] == 1 || joc [1][1] == 4 ) ) || 
              ( tine == 3 && ( joc [1][1] == 0 || joc [1][1] == 1 || joc [1][1] == 4 || joc[1][1] ==2 || joc[1][1]==5 ) ) ||
              ( tine == 6 && ( joc [1][1] == 0 || joc [1][1] == 1 || joc [1][1] == 4 || joc[1][1] ==2 || joc[1][1]==5 ) ) 
           ) ) 
           &&
           !( 
              width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 && (         
              ( tine == 1 && joc [1][2] == 0 ) || 
              ( tine == 4 && joc [1][2] == 0 ) || 
              (tine == 2 && ( joc [1][2] == 0 || joc [1][2] == 1 || joc [1][2] == 4 ) ) ||
              (tine == 5 && ( joc [1][2] == 0 || joc [1][2] == 1 || joc [1][2] == 4 ) ) || 
              ( tine == 3 && ( joc [1][2] == 0 || joc [1][2] == 1 || joc [1][2] == 4 || joc[1][2] ==2 || joc[1][2]==5 ) ) ||
              ( tine == 6 && ( joc [1][2] == 0 || joc [1][2] == 1 || joc [1][2] == 4 || joc[1][2] ==2 || joc[1][2]==5 ) ) 
           ) )
           &&
            !( 
             width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&  (
              ( tine == 1 && joc [2][0] == 0 ) || 
              ( tine == 4 && joc [2][0] == 0 ) || 
              (tine == 2 && ( joc [2][0] == 0 || joc [2][0] == 1 || joc [2][0] == 4 ) ) ||
              (tine == 5 && ( joc [2][0] == 0 || joc [2][0] == 1 || joc [2][0] == 4 ) ) || 
              ( tine == 3 && ( joc [2][0] == 0 || joc [2][0] == 1 || joc [2][0] == 4 || joc[2][0] ==2 || joc[2][0]==5 ) ) ||
              ( tine == 6 && ( joc [2][0] == 0 || joc [2][0] == 1 || joc [2][0] == 4 || joc[2][0] ==2 || joc[2][0]==5 ) ) 
           ) )
           &&
            !( 
             width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&  (
              ( tine == 1 && joc [2][1] == 0 ) || 
              ( tine == 4 && joc [2][1] == 0 ) || 
              (tine == 2 && ( joc [2][1] == 0 || joc [2][1] == 1 || joc [2][1] == 4 ) ) ||
              (tine == 5 && ( joc [2][1] == 0 || joc [2][1] == 1 || joc [2][1] == 4 ) ) || 
              ( tine == 3 && ( joc [2][1] == 0 || joc [2][1] == 1 || joc [2][1] == 4 || joc[2][1] ==2 || joc[2][1]==5 ) ) ||
              ( tine == 6 && ( joc [2][1] == 0 || joc [2][1] == 1 || joc [2][1] == 4 || joc[2][1] ==2 || joc[2][1]==5 ) ) 
           ) )
           &&
            !( 
            width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&  (
              ( tine == 1 && joc [2][2] == 0 ) || 
              ( tine == 4 && joc [2][2] == 0 ) || 
              (tine == 2 && ( joc [2][2] == 0 || joc [2][2] == 1 || joc [2][2] == 4 ) ) ||
              (tine == 5 && ( joc [2][2] == 0 || joc [2][2] == 1 || joc [2][2] == 4 ) ) || 
              ( tine == 3 && ( joc [2][2] == 0 || joc [2][2] == 1 || joc [2][2] == 4 || joc[2][2] ==2 || joc[2][2]==5 ) ) ||
              ( tine == 6 && ( joc [2][2] == 0 || joc [2][2] == 1 || joc [2][2] == 4 || joc[2][2] ==2 || joc[2][2]==5 ) ) 
           ) )
           )  ) {
             
                 if ( last_piece_x == -2 )  {
                   if ( last_piece_y == 1 )  {
                       nr_of_1 ++ ;
                   }
                   if ( last_piece_y == 2 )  {
                       nr_of_2 ++ ;
                   }
                   if ( last_piece_y == 3 )  {
                       nr_of_3 ++ ;
                   }
                 }
                 if ( last_piece_x == -3 )  {
                   if ( last_piece_y == 1 )  {
                       nr_of_4 ++ ;
                   }
                   if ( last_piece_y == 2 )  {
                       nr_of_5 ++ ;
                   }
                   if ( last_piece_y == 3 )  {
                       nr_of_6 ++ ;
                   }
                 }
                 if ( last_piece_x > -1 )  {
                   joc3 [ last_piece_x ][ last_piece_y ] = joc2 [ last_piece_x ][ last_piece_y ];
                   joc2 [ last_piece_x ][ last_piece_y ] = joc [ last_piece_x ][ last_piece_y ];
                   joc [ last_piece_x ][ last_piece_y ] = tine;
                  
                 }
                  last_piece_x = -1;
                  last_piece_y = -1;
                  tine = 0;
              }

}

void drop_afara_computer ( int x )  {
           if ( !mousePressed && tine_computer != 0 && last_piece_x_computer != -1 && last_piece_y_computer != -1 && (
           !(width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8) &&
           !( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8) &&
           !( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8) &&
           !( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8) &&
           !( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 ) &&
           !( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 ) &&
           !( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 ) &&
           !( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 ) &&
           !( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 ) ||
           
           !(
               width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&  (
              ( tine_computer == 1 && joc_computer [0][0] == 0 ) ||
              ( tine_computer == 4 && joc_computer [0][0] == 0 ) ||
              (tine_computer == 2 && ( joc_computer [0][0] == 0 || joc_computer [0][0] == 1 || joc_computer [0][0] == 4 ) ) ||
              (tine_computer == 5 && ( joc_computer [0][0] == 0 || joc_computer [0][0] == 1 || joc_computer [0][0] == 4 ) ) ||
              ( tine_computer == 3 && ( joc_computer [0][0] == 0 || joc_computer [0][0] == 1 || joc_computer [0][0] == 4 || joc_computer[0][0] ==2 || joc_computer[0][0]==5 ) ) ||
              ( tine_computer == 6 && ( joc_computer [0][0] == 0 || joc_computer [0][0] == 1 || joc_computer [0][0] == 4 || joc_computer[0][0] ==2 || joc_computer[0][0]==5 ) )
           ) )
             &&
           !(
              width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&  (
              ( tine_computer == 1 && joc_computer [0][1] == 0 ) ||
              ( tine_computer == 4 && joc_computer [0][1] == 0 ) ||
              (tine_computer == 2 && ( joc_computer [0][1] == 0 || joc_computer [0][1] == 1 || joc_computer [0][1] == 4 ) ) ||
              (tine_computer == 5 && ( joc_computer [0][1] == 0 || joc_computer [0][1] == 1 || joc_computer [0][1] == 4 ) ) ||
              ( tine_computer == 3 && ( joc_computer [0][1] == 0 || joc_computer [0][1] == 1 || joc_computer [0][1] == 4 || joc_computer[0][1] ==2 || joc_computer[0][1]==5 ) ) ||
              ( tine_computer == 6 && ( joc_computer [0][1] == 0 || joc_computer [0][1] == 1 || joc_computer [0][1] == 4 || joc_computer[0][1] ==2 || joc_computer[0][1]==5 ) )
           ) )
            &&
             !(
              width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&  (
              ( tine_computer == 1 && joc_computer [0][2] == 0 ) ||
              ( tine_computer == 4 && joc_computer [0][2] == 0 ) ||
              (tine_computer == 2 && ( joc_computer [0][2] == 0 || joc_computer [0][2] == 1 || joc_computer [0][2] == 4 ) ) ||
              (tine_computer == 5 && ( joc_computer [0][2] == 0 || joc_computer [0][2] == 1 || joc_computer [0][2] == 4 ) ) ||
              ( tine_computer == 3 && ( joc_computer [0][2] == 0 || joc_computer [0][2] == 1 || joc_computer [0][2] == 4 || joc_computer[0][2] ==2 || joc_computer[0][2]==5 ) ) ||
              ( tine_computer == 6 && ( joc_computer [0][2] == 0 || joc_computer [0][2] == 1 || joc_computer [0][2] == 4 || joc_computer[0][2] ==2 || joc_computer[0][2]==5 ) )
           ) )
            &&
            !(
              width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&  (
              ( tine_computer == 1 && joc_computer [1][0] == 0 ) ||
              ( tine_computer == 4 && joc_computer [1][0] == 0 ) ||
              (tine_computer == 2 && ( joc_computer [1][0] == 0 || joc_computer [1][0] == 1 || joc_computer [1][0] == 4 ) ) ||
              (tine_computer == 5 && ( joc_computer [1][0] == 0 || joc_computer [1][0] == 1 || joc_computer [1][0] == 4 ) ) ||
              ( tine_computer == 3 && ( joc_computer [1][0] == 0 || joc_computer [1][0] == 1 || joc_computer [1][0] == 4 || joc_computer[1][0] ==2 || joc_computer[1][0]==5 ) ) ||
              ( tine_computer == 6 && ( joc_computer [1][0] == 0 || joc_computer [1][0] == 1 || joc_computer [1][0] == 4 || joc_computer[1][0] ==2 || joc_computer[1][0]==5 ) )
           ) )
           &&
           !(
              width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&  (
              ( tine_computer == 1 && joc_computer [1][1] == 0 ) ||
              ( tine_computer == 4 && joc_computer [1][1] == 0 ) ||
              (tine_computer == 2 && ( joc_computer [1][1] == 0 || joc_computer [1][1] == 1 || joc_computer [1][1] == 4 ) ) ||
              (tine_computer == 5 && ( joc_computer [1][1] == 0 || joc_computer [1][1] == 1 || joc_computer [1][1] == 4 ) ) ||
              ( tine_computer == 3 && ( joc_computer [1][1] == 0 || joc_computer [1][1] == 1 || joc_computer [1][1] == 4 || joc_computer[1][1] ==2 || joc_computer[1][1]==5 ) ) ||
              ( tine_computer == 6 && ( joc_computer [1][1] == 0 || joc_computer [1][1] == 1 || joc_computer [1][1] == 4 || joc_computer[1][1] ==2 || joc_computer[1][1]==5 ) )
           ) )
           &&
           !(
              width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 && (        
              ( tine_computer == 1 && joc_computer [1][2] == 0 ) ||
              ( tine_computer == 4 && joc_computer [1][2] == 0 ) ||
              (tine_computer == 2 && ( joc_computer [1][2] == 0 || joc_computer [1][2] == 1 || joc_computer [1][2] == 4 ) ) ||
              (tine_computer == 5 && ( joc_computer [1][2] == 0 || joc_computer [1][2] == 1 || joc_computer [1][2] == 4 ) ) ||
              ( tine_computer == 3 && ( joc_computer [1][2] == 0 || joc_computer [1][2] == 1 || joc_computer [1][2] == 4 || joc_computer[1][2] ==2 || joc_computer[1][2]==5 ) ) ||
              ( tine_computer == 6 && ( joc_computer [1][2] == 0 || joc_computer [1][2] == 1 || joc_computer [1][2] == 4 || joc_computer[1][2] ==2 || joc_computer[1][2]==5 ) )
           ) )
           &&
            !(
             width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&  (
              ( tine_computer == 1 && joc_computer [2][0] == 0 ) ||
              ( tine_computer == 4 && joc_computer [2][0] == 0 ) ||
              (tine_computer == 2 && ( joc_computer[2][0] == 0 || joc_computer [2][0] == 1 || joc_computer[2][0] == 4 ) ) ||
              (tine_computer == 5 && ( joc_computer [2][0] == 0 || joc_computer [2][0] == 1 || joc_computer [2][0] == 4 ) ) ||
              ( tine_computer == 3 && ( joc_computer [2][0] == 0 || joc_computer [2][0] == 1 || joc_computer [2][0] == 4 || joc_computer[2][0] ==2 || joc_computer[2][0]==5 ) ) ||
              ( tine_computer == 6 && ( joc_computer [2][0] == 0 || joc_computer [2][0] == 1 || joc_computer [2][0] == 4 || joc_computer[2][0] ==2 || joc_computer[2][0]==5 ) )
           ) )
           &&
            !(
             width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&  (
              ( tine_computer == 1 && joc_computer [2][1] == 0 ) ||
              ( tine_computer == 4 && joc_computer [2][1] == 0 ) ||
              (tine_computer == 2 && ( joc_computer [2][1] == 0 || joc_computer [2][1] == 1 || joc_computer [2][1] == 4 ) ) ||
              (tine_computer == 5 && ( joc_computer [2][1] == 0 || joc_computer [2][1] == 1 || joc_computer [2][1] == 4 ) ) ||
              ( tine_computer == 3 && ( joc_computer [2][1] == 0 || joc_computer [2][1] == 1 || joc_computer [2][1] == 4 || joc_computer[2][1] ==2 || joc_computer[2][1]==5 ) ) ||
              ( tine_computer == 6 && ( joc_computer [2][1] == 0 || joc_computer [2][1] == 1 || joc_computer [2][1] == 4 || joc_computer[2][1] ==2 || joc_computer[2][1]==5 ) )
           ) )
           &&
            !(
            width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&  (
              ( tine_computer == 1 && joc_computer [2][2] == 0 ) ||
              ( tine_computer == 4 && joc_computer [2][2] == 0 ) ||
              (tine_computer == 2 && ( joc_computer [2][2] == 0 || joc_computer [2][2] == 1 || joc_computer [2][2] == 4 ) ) ||
              (tine_computer == 5 && ( joc_computer [2][2] == 0 || joc_computer [2][2] == 1 || joc_computer [2][2] == 4 ) ) ||
              ( tine_computer == 3 && ( joc_computer [2][2] == 0 || joc_computer [2][2] == 1 || joc_computer [2][2] == 4 || joc_computer[2][2] ==2 || joc_computer[2][2]==5 ) ) ||
              ( tine_computer == 6 && ( joc_computer [2][2] == 0 || joc_computer [2][2] == 1 || joc_computer [2][2] == 4 || joc_computer[2][2] ==2 || joc_computer[2][2]==5 ) )
           ) )
           )  ) {
             
                 if ( last_piece_x_computer == -2 )  {
                   if ( last_piece_y_computer == 1 )  {
                       nr_of_1_computer ++ ;
                   }
                   if ( last_piece_y_computer == 2 )  {
                       nr_of_2_computer ++ ;
                   }
                   if ( last_piece_y_computer == 3 )  {
                       nr_of_3_computer ++ ;
                   }
                 }
                 if ( last_piece_x_computer == -3 )  {
                   if ( last_piece_y_computer == 1 )  {
                       nr_of_4_computer ++ ;
                   }
                   if ( last_piece_y_computer == 2 )  {
                       nr_of_5_computer ++ ;
                   }
                   if ( last_piece_y_computer == 3 )  {
                       nr_of_6_computer ++ ;
                   }
                 }
                 if ( last_piece_x_computer > -1 )
                  joc_computer [ last_piece_x_computer ][ last_piece_y_computer ] = tine;
                  last_piece_x_computer = -1;
                  last_piece_y_computer = -1;
                  tine_computer = 0;
              }
 
}

void easy_comp ( int x ){
           
           BackGround(1);

               if (abs(mouseX - mx) > 0.1) {
                mx = mouseX ;
               }
               if (abs(mouseY - my) > 0.1) {
                my = mouseY;
              }
              mx = constrain(mx, width / 20 , width - width/20);            
              my = constrain(my, height/8, height - height/8);   
             
             image ( move , width / 7 , height / 6 , width / 6, height / 22 );  
              
              pune_imagini_in_play_computer(1);
              pune_piesele_computer (1);
       
             if ( nr_mutari_computer % 2 == 0 )  {  
                    drop_afara_computer( 1); ///
                    cursorul_poarte_imaginea_computer(1);
                    dropeaza_imaginea_computer(1);
                    muta_piesa_de_pe_tabla_computer(1);
                    muta_piesa_de_pe_margine_computer(1);
             }  else    {
                if (  width / 7 <= mouseX && mouseX <=  width / 7 + width / 6 &&  height / 6 <= mouseY && mouseY <=  height / 6 + height / 22 && mousePressed )  {
                  nr_mutari_computer ++ ;
                  used_computer = 1;
                 muta_bot_easy(1);  
              }
               
             }
          image( back , width/20 , height - height/9, width/ 6 , height/13 );
           if ( tine_computer == 0 && mousePressed && width /20 <= mouseX && mouseX <= width / 20 + width/6 && height - height/9 <= mouseY && mouseY <= height - height/9 + height/13  )  {
              sw = 12 ;  
            }            
            buton_undo_computer(1);
            
           verifica_castigator_computer(1); 
           if ( tine_computer == -1 )
           sw = -2;
}

void hard_comp ( int x ){
               BackGround(1);

               if (abs(mouseX - mx) > 0.1) {
                mx = mouseX ;
               }
               if (abs(mouseY - my) > 0.1) {
                my = mouseY;
              }
              mx = constrain(mx, width / 20 , width - width/20);            
              my = constrain(my, height/8, height - height/8);   
             
             image ( move , width / 7 , height / 6 , width / 6, height / 22 );  

              
              pune_imagini_in_play_computer(1);
              pune_piesele_computer (1);
       
             if ( nr_mutari_computer % 2 == 0 )  {  
                    drop_afara_computer( 1); ///
                    cursorul_poarte_imaginea_computer(1);
                    dropeaza_imaginea_computer(1);
                    muta_piesa_de_pe_tabla_computer(1);
                    muta_piesa_de_pe_margine_computer(1);
             }  else    {
                if (  width / 7 <= mouseX && mouseX <=  width / 7 + width / 6 &&  height / 6 <= mouseY && mouseY <=  height / 6 + height / 22 && mousePressed )  {
                  nr_mutari_computer ++ ;
                  used_computer = 1;
                 muta_bot_hard(1);  
              }
               
             }
          image( back , width/20 , height - height/9, width/ 6 , height/13 );
           if ( tine_computer == 0 && mousePressed && width /20 <= mouseX && mouseX <= width / 20 + width/6 && height - height/9 <= mouseY && mouseY <= height - height/9 + height/13  )  {
              sw = 12 ;  
            }            
            buton_undo_computer(1);
            
           verifica_castigator_computer(1); 
           if ( tine_computer == -1 )
           sw = -2;
}
void instructiuni ( int x )  {
                  if (  sw == 3 )  {
                     BackGround(1);

    image(ins_logo,width/2-width/8+width/30-width/45 , 0 ,width/4.8,height/12 );
    if( mouseX>=width/30 && mouseX<=width/30+width/15 && mouseY<=height/80+height/10 && mouseY>=height/80 && mousePressed ){
         sw=0;
   }
   image( back , width/25 , height/50 , width/15 , height/15 );
   image(infos,width/8,height/5,width/2,height);
  }
}
void muta_bot_hard( int x )  {
        
     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 && culoare [ joc_computer [ 2 ][ 2 ] ] == 1 && joc_computer [ 1 ][ 1 ] != 6 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
       if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 && culoare [ joc_computer [ 2 ][ 0 ] ] == 1 && joc_computer [ 1 ][ 1 ] != 6 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 && joc_computer [ 2 ][ 2 ] != 6 && culoare [ joc_computer [ 1 ][ 1 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
       if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 && joc_computer [ 2 ][ 0 ] != 6 && culoare [ joc_computer [ 1 ][ 1 ]  ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 0 ][ 0 ] != 6 && culoare [ joc_computer [ 2 ][ 2 ] ] == 1 && culoare [ joc_computer [ 1 ][ 1 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
       if ( joc_computer [ 0 ][ 2 ] != 6 && culoare [ joc_computer [ 2 ][ 0 ] ] == 1 && culoare [ joc_computer [ 1 ][ 1 ]  ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
  
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 && culoare [ joc_computer [ 0 ][ 1 ] ] == 1 && joc_computer [ 0 ][ 2 ] != 6 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                      joc3_computer [ 0 ][ 2 ] = joc2_computer [ 0 ][ 2 ];
                      joc2_computer [ 0 ][ 2 ] = joc_computer [ 0 ][ 2 ];
                      joc_computer [ 0 ][ 2 ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 1 ][ 0 ] ] == 1 && culoare [ joc_computer [ 1 ][ 1 ] ] == 1 && joc_computer [ 1 ][ 2 ] != 6 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 && culoare [ joc_computer [ 2 ][ 2 ] ] == 1 && joc_computer [ 1 ][ 1 ] != 6 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
       if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 && culoare [ joc_computer [ 2 ][ 0 ] ] == 1 && joc_computer [ 1 ][ 1 ] != 6 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 2 ][ 0 ] ] == 1 && culoare [ joc_computer [ 2 ][ 1 ] ] == 1 && joc_computer [ 2 ][ 2 ] != 6 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 && culoare [ joc_computer [ 1 ][ 0 ] ] == 1 && joc_computer [ 2 ][ 0 ] != 6 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 1 ] ] == 1 && culoare [ joc_computer [ 1 ][ 1 ] ] == 1 && joc_computer [ 2 ][ 1 ] != 6 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 && culoare [ joc_computer [ 1 ][ 2 ] ] == 1 && joc_computer [ 2 ][ 2 ] != 6 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      
      /////
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 && joc_computer [ 0 ][ 1 ] != 1 && culoare [ joc_computer [ 0 ][ 2 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 1 ][ 0 ] ] == 1 && joc_computer [ 1 ][ 1 ] != 1 && culoare [ joc_computer [ 1 ][ 2 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 2 ][ 0 ] ] == 1 && joc_computer [ 2 ][ 1 ] != 1 && culoare [ joc_computer [ 2 ][ 2 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 && joc_computer [ 1 ][ 0 ] != 6 && culoare [ joc_computer [ 2 ][ 0 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 1 ] ] == 1 && joc_computer [ 1 ][ 1 ] != 6 && culoare [ joc_computer [ 2 ][ 1 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 && joc_computer [ 1 ][ 2 ] != 6 && culoare [ joc_computer [ 2 ][ 2 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      
      /////////
      
      if ( joc_computer [ 0 ][ 0 ] != 6 && culoare [ joc_computer [ 0 ][ 1 ] ] == 1 && culoare [ joc_computer [ 0 ][ 2 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 1 ][ 0 ] != 6 && culoare [ joc_computer [ 1 ][ 1 ] ] == 1 && culoare [ joc_computer [ 1 ][ 2 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 2 ][ 0 ] != 6 && culoare [ joc_computer [ 2 ][ 1 ] ] == 1 && culoare [ joc_computer [ 2 ][ 2 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 0 ][ 0 ] != 6 &&  culoare [ joc_computer [ 1 ][ 0 ] ] == 1 && culoare [ joc_computer [ 2 ][ 0 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 0 ][ 1 ] != 6 &&  culoare [ joc_computer [ 1 ][ 1 ] ] == 1 && culoare [ joc_computer [ 2 ][ 1 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 0 ][ 2 ] != 6 &&  culoare [ joc_computer [ 1 ][ 2 ] ] == 1 && culoare [ joc_computer [ 2 ][ 2 ] ] == 1 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      
      //////////////////////////////////////////////
      
       if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 2 && culoare [ joc_computer [ 0 ][ 1 ] ] == 2 && joc_computer [ 0 ][ 2 ] != 3 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                      joc3_computer [ 0 ][ 2 ] = joc2_computer [ 0 ][ 2 ];
                      joc2_computer [ 0 ][ 2 ] = joc_computer [ 0 ][ 2 ];
                      joc_computer [ 0 ][ 2 ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 1 ][ 0 ] ] == 2 && culoare [ joc_computer [ 1 ][ 1 ] ] == 2 && joc_computer [ 1 ][ 2 ] != 3 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 2 ][ 0 ] ] == 2 && culoare [ joc_computer [ 2 ][ 1 ] ] == 2 && joc_computer [ 2 ][ 2 ] != 3 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 2 && culoare [ joc_computer [ 1 ][ 0 ] ] == 2 && joc_computer [ 2 ][ 0 ] != 3 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 1 ] ] == 2 && culoare [ joc_computer [ 1 ][ 1 ] ] == 2 && joc_computer [ 2 ][ 1 ] != 3 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 2 && culoare [ joc_computer [ 1 ][ 2 ] ] == 2 && joc_computer [ 2 ][ 2 ] != 3 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      
      /////
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 2 && joc_computer [ 0 ][ 1 ] != 3 && culoare [ joc_computer [ 0 ][ 2 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 1 ][ 0 ] ] == 2 && joc_computer [ 1 ][ 1 ] != 3 && culoare [ joc_computer [ 1 ][ 2 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 2 ][ 0 ] ] == 2 && joc_computer [ 2 ][ 1 ] != 3 && culoare [ joc_computer [ 2 ][ 2 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 2 && joc_computer [ 1 ][ 0 ] != 3 && culoare [ joc_computer [ 2 ][ 0 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 1 ] ] == 2 && joc_computer [ 1 ][ 1 ] != 3 && culoare [ joc_computer [ 2 ][ 1 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 2 && joc_computer [ 1 ][ 2 ] != 3 && culoare [ joc_computer [ 2 ][ 2 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      
      /////////
      
      if ( joc_computer [ 0 ][ 0 ] != 3 && culoare [ joc_computer [ 0 ][ 1 ] ] == 2 && culoare [ joc_computer [ 0 ][ 2 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 1 ][ 0 ] != 3 && culoare [ joc_computer [ 1 ][ 1 ] ] == 2 && culoare [ joc_computer [ 1 ][ 2 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 2 ][ 0 ] != 3 && culoare [ joc_computer [ 2 ][ 1 ] ] == 2 && culoare [ joc_computer [ 2 ][ 2 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 0 ][ 0 ] != 3 &&  culoare [ joc_computer [ 1 ][ 0 ] ] == 2 && culoare [ joc_computer [ 2 ][ 0 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 0 ][ 1 ] != 3 &&  culoare [ joc_computer [ 1 ][ 1 ] ] == 2 && culoare [ joc_computer [ 2 ][ 1 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 0 ][ 2 ] != 3 &&  culoare [ joc_computer [ 1 ][ 2 ] ] == 2 && culoare [ joc_computer [ 2 ][ 2 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
   
      
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 2 && culoare [ joc_computer [ 2 ][ 2 ] ] == 2 && joc_computer [ 1 ][ 1 ] != 3 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
       if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 2 && culoare [ joc_computer [ 2 ][ 0 ] ] == 2 && joc_computer [ 1 ][ 1 ] != 3 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 1 ;
                 int j = 1 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 1 ;
                int b = 1 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 2 && joc_computer [ 2 ][ 2 ] != 3 && culoare [ joc_computer [ 1 ][ 1 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
       if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 2 && joc_computer [ 2 ][ 0 ] != 3 && culoare [ joc_computer [ 1 ][ 1 ]  ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 2 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 2 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( joc_computer [ 0 ][ 0 ] != 3 && culoare [ joc_computer [ 2 ][ 2 ] ] == 2 && culoare [ joc_computer [ 1 ][ 1 ] ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 0 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 0 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
       if ( joc_computer [ 0 ][ 2 ] != 3 && culoare [ joc_computer [ 2 ][ 0 ] ] == 2 && culoare [ joc_computer [ 1 ][ 1 ]  ] == 2 )  { 
           if ( nr_of_3_computer > 0 )  {
                 int i = 0 ;
                 int j = 2 ;
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ; 
                  return ;
              }
            for ( int i = 0 ; i < 3 ; ++ i )
            for ( int j = 0 ; j < 3 ; ++ j )
              if  ( joc_computer [ i ][ j ] == 3 )  {
                int a = 0 ;
                int b = 2 ;
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;          
              }
      
      }
      if ( nr_of_2_computer > 0 )  {
          for ( int i = 0 ; i < 3 ; ++ i )
          for ( int j = 0 ; j < 3 ; ++ j )  {
              if ( joc_computer [ i ][ j ] == 0 || joc_computer [ i ][ j ] == 4 )  { 
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 2 ;
                  nr_of_2_computer -- ;
                  return ;
              }
          }
        }
       if ( nr_of_1_computer > 0 )  {
          for ( int i = 0 ; i < 3 ; ++ i )
          for ( int j = 0 ; j < 3 ; ++ j )  {
              if ( joc_computer [ i ][ j ] == 0 )  { 
                  joc_computer [ i ][ j ]  = 1 ;
                  nr_of_1_computer -- ;
                  return ;
              }
          }
        }
        
        if ( nr_of_3_computer > 0 )  {
          for ( int i = 0 ; i < 3 ; ++ i )
          for ( int j = 0 ; j < 3 ; ++ j )  {
              if ( joc_computer [ i ][ j ] == 0 || joc_computer [ i ][ j ] == 4 || joc_computer [ i ][ j ] == 5 )  { 
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ;
               
                  
                  return ;
              }
          }
        }
        
          for ( int i = 0 ; i < 3 ; ++ i )
          for ( int j = 0 ; j < 3 ; ++ j )  
              if ( joc_computer [ i ][ j ] == 3 )      
                for ( int a = 0 ; a < 3 ; ++ a )
                for ( int b = 0 ; b < 3 ; ++ b )  
                  if ( joc_computer [ a ][ b ] == 5 || joc_computer [ a ][ b ] == 4 || joc_computer [ a ][ b ] == 0 )    {
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;
                  }     
  
}


void muta_bot_easy( int x )  {
        
        if ( nr_of_1_computer > 0 )  {
          for ( int i = 0 ; i < 3 ; ++ i )
          for ( int j = 0 ; j < 3 ; ++ j )  {
              if ( joc_computer [ i ][ j ] == 0 )  { 
                  joc_computer [ i ][ j ]  = 1 ;
                  nr_of_1_computer -- ;
                  return ;
              }
          }
        }
        if ( nr_of_2_computer > 0 )  {
          for ( int i = 0 ; i < 3 ; ++ i )
          for ( int j = 0 ; j < 3 ; ++ j )  {
              if ( joc_computer [ i ][ j ] == 0 || joc_computer [ i ][ j ] == 4 )  { 
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 2 ;
                  nr_of_2_computer -- ;
                  return ;
              }
          }
        }
        if ( nr_of_3_computer > 0 )  {
          for ( int i = 0 ; i < 3 ; ++ i )
          for ( int j = 0 ; j < 3 ; ++ j )  {
              if ( joc_computer [ i ][ j ] == 0 || joc_computer [ i ][ j ] == 4 || joc_computer [ i ][ j ] == 5 )  { 
                joc3_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                joc2_computer [ i ][ j ] = joc_computer [ i ][ j ];
                joc_computer [ i ][ j ]  = 3 ;
                  nr_of_3_computer -- ;
               
                  
                  return ;
              }
          }
        }
        
          for ( int i = 0 ; i < 3 ; ++ i )
          for ( int j = 0 ; j < 3 ; ++ j )  
              if ( joc_computer [ i ][ j ] == 3 )      
                for ( int a = 0 ; a < 3 ; ++ a )
                for ( int b = 0 ; b < 3 ; ++ b )  
                  if ( joc_computer [ a ][ b ] == 5 || joc_computer [ a ][ b ] == 4 || joc_computer [ a ][ b ] == 0 )    {
                      joc3_computer [ a ][ b ] = joc2_computer [ a ][ b ];
                      joc2_computer [ a ][ b ] = joc_computer [ a ][ b ];
                      joc_computer [ a ][ b ] = joc_computer [ i ][ j ];
                      
                      joc_computer [ i ][ j ] = joc2_computer [ i ][ j ];
                      joc2_computer [ i ][ j ] = joc3_computer [ i ][ j ];
                      joc3_computer [ i ][ j ] = 0;
                      return;
                  }
}

void muta_piesa_de_pe_margine ( int x ){
                if ( tine == 0 && width/30 <= mouseX && mouseX <= width/30 + width/ 23 && height/10 <= mouseY && mouseY < height/10 + height/8 && mousePressed && nr_of_1 > 0 && nr_mutari % 2 == 1 )  {
                        tine = 1 ;
                        nr_of_1 --;
                        last_piece_x = -2;
                        last_piece_y = 1;
                    }
                    if ( tine == 0 && width/30 <= mouseX && mouseX <= width/30 + width/ 23 *1.3 && height/10 *3 <= mouseY && mouseY <= height/10 * 3 + height/8 * 1.3 && mousePressed && nr_of_2 > 0 && nr_mutari % 2 == 1 )  {
                        tine = 2 ;          
                        nr_of_2 --;
                        last_piece_x = -2;
                        last_piece_y = 2;
                    }
                    if ( tine == 0 && width/30 <= mouseX && mouseX <= width/30 + width/ 23 *1.6 && height/10 * 5.5 <= mouseY && mouseY <= height/10 * 5.5 + height/8 * 1.6 && mousePressed && nr_of_3 > 0 && nr_mutari % 2 == 1 )  {
                        tine = 3 ;          
                        nr_of_3 --;
                        last_piece_x = -2;
                        last_piece_y = 3;
                    }
                    if ( tine == 0 && width - width/30 - width/ 23 + width/80 <= mouseX && mouseX <= width - width/30 - width/ 23 + width/80 + width/ 23 && height/10 <= mouseY && mouseY <= height/10 + height/8 && mousePressed && nr_of_4 > 0 && nr_mutari % 2 == 0 )  {
                        tine = 4 ;
                        nr_of_4 --;
                        last_piece_x = -3;
                        last_piece_y = 1;
                    }
                    if ( tine == 0 && width - width/30 - width/ 23 + width/80 <= mouseX && mouseX <= width - width/30 - width/ 23 + width/80 + width/ 23 * 1.3 && height/10 * 3 <= mouseY && mouseY <= height/10 * 3 + height/8 * 1.3 && mousePressed && nr_of_5 >0 && nr_mutari % 2 == 0 )  {
                        tine = 5 ;   
                        nr_of_5 --;
                        last_piece_x = -3;
                        last_piece_y = 2;
                    }
                    if ( tine == 0 && width - width/30 - width/ 23 + width/80 <= mouseX && mouseX <= width - width/30 - width/ 23 + width/80 + width/ 23 * 1.6 && height/10 * 5.5 <= mouseY && mouseY <= height/10 * 5.5 + height/8 * 1.6 && mousePressed && nr_of_6 > 0 && nr_mutari % 2 == 0 )  {
                        tine = 6 ;      
                        nr_of_6 --;
                        last_piece_x = -3;
                        last_piece_y = 3;
                    }
}

void muta_piesa_de_pe_margine_computer ( int x ){
                if ( tine_computer == 0 && width/30 <= mouseX && mouseX <= width/30 + width/ 23 && height/10 <= mouseY && mouseY < height/10 + height/8 && mousePressed && nr_of_1_computer > 0 && nr_mutari_computer % 2 == 1 )  {
                        tine_computer = 1 ;
                        nr_of_1_computer --;
                        last_piece_x_computer = -2;
                        last_piece_y_computer = 1;
                    }
                    if ( tine_computer== 0 && width/30 <= mouseX && mouseX <= width/30 + width/ 23 *1.3 && height/10 *3 <= mouseY && mouseY <= height/10 * 3 + height/8 * 1.3 && mousePressed && nr_of_2_computer > 0 && nr_mutari_computer % 2 == 1 )  {
                        tine_computer = 2 ;          
                        nr_of_2_computer --;
                        last_piece_x_computer = -2;
                        last_piece_y_computer = 2;
                    }
                    if ( tine_computer == 0 && width/30 <= mouseX && mouseX <= width/30 + width/ 23 *1.6 && height/10 * 5.5 <= mouseY && mouseY <= height/10 * 5.5 + height/8 * 1.6 && mousePressed && nr_of_3_computer > 0 && nr_mutari_computer % 2 == 1 )  {
                        tine_computer = 3 ;          
                        nr_of_3_computer --;
                        last_piece_x_computer = -2;
                        last_piece_y_computer = 3;
                    }
                    if ( tine_computer == 0 && width - width/30 - width/ 23 + width/80 <= mouseX && mouseX <= width - width/30 - width/ 23 + width/80 + width/ 23 && height/10 <= mouseY && mouseY <= height/10 + height/8 && mousePressed && nr_of_4_computer > 0 && nr_mutari_computer % 2 == 0 )  {
                        tine_computer = 4 ;
                        nr_of_4_computer --;
                        last_piece_x_computer = -3;
                        last_piece_y_computer = 1;
                    }
                    if ( tine_computer == 0 && width - width/30 - width/ 23 + width/80 <= mouseX && mouseX <= width - width/30 - width/ 23 + width/80 + width/ 23 * 1.3 && height/10 * 3 <= mouseY && mouseY <= height/10 * 3 + height/8 * 1.3 && mousePressed && nr_of_5_computer >0 && nr_mutari_computer % 2 == 0 )  {
                        tine_computer = 5 ;  
                        nr_of_5_computer --;
                        last_piece_x_computer = -3;
                        last_piece_y_computer = 2;
                    }
                    if ( tine_computer == 0 && width - width/30 - width/ 23 + width/80 <= mouseX && mouseX <= width - width/30 - width/ 23 + width/80 + width/ 23 * 1.6 && height/10 * 5.5 <= mouseY && mouseY <= height/10 * 5.5 + height/8 * 1.6 && mousePressed && nr_of_6_computer > 0 && nr_mutari_computer % 2 == 0 )  {
                        tine_computer = 6 ;      
                        nr_of_6_computer --;
                        last_piece_x_computer = -3;
                        last_piece_y_computer = 3;
                    }
}

void salvare ( int x )  {
  BackGround(1);
                  image( save , width / 4 , height / 3, width/ 2 , height/13 );
                  
                  image( yes , width /6 , height / 1.5, width/ 10 , height/20 );
                  
                  if ( width /6 <= mouseX && mouseX <= width /6 + width / 10 && height / 1.5 <= mouseY && mouseY <= height / 1.5 + height/20 && mousePressed )  {
                      sw = 1;
                      prev_game = 1 ;
                  }
                  
                  image( no , width /2.2 , height / 1.5, width/ 30 * 2 , height/20 );
                  
                  if ( width /2.2 <= mouseX && mouseX <= width /2.2 + width/ 30 * 2 && height / 1.5 <= mouseY && mouseY <= height / 1.5 + height/20 && mousePressed )  {   
                    for ( int i = 0 ; i < 3;  ++ i )
                    for ( int j = 0 ; j < 3 ; ++ j )
                      joc [ i ][ j ] = 0;
                     nr_of_1 = 2;
                     nr_of_2 = 2;
                     nr_of_3 = 2;
                     nr_of_4 = 2;
                     nr_of_5 = 2;
                     nr_of_6 = 2;
                    sw = 1;
                    prev_game = 0;
                    nr_mutari = 0;
                    used = 1 ;
                  }
                  
                  image( cancel , width /1.5 , height / 1.5, width/ 5 , height/20 );
                  
                   if ( width /1.5 <= mouseX && mouseX <= width /1.5 + width/ 5 && height / 1.5 <= mouseY && mouseY <= height / 1.5 + height/20 && mousePressed )  {   
                    sw = 5;
                  }        
}


void muta_piesa_de_pe_tabla ( int x ){
  
                if ( mousePressed )  {
                      
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 && joc [ 0 ][ 0 ] != 0 && tine == 0  )  {  
                         
                        
                        if ( ( ( joc[0][0] == 1 || joc[0][0] == 2 || joc[0][0] == 3 ) && nr_mutari % 2 == 1 ) || ( ( joc[0][0] == 4 || joc[0][0] == 5 || joc[0][0] == 6 ) && nr_mutari % 2 == 0 ) )   {
                            tine = joc [ 0 ][ 0 ] ;
                           joc [ 0 ][ 0 ] = joc2[ 0 ][ 0 ] ;
                           joc2[ 0 ][ 0 ] = joc3[ 0 ][ 0 ];
                           joc3[ 0 ][ 0 ] = 0;
                           last_piece_x = 0 ;
                           last_piece_y = 0 ;
                         }
                      }
                      if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 && joc [ 0 ][ 1 ] != 0 && tine == 0 )  { 
                        if ( ( ( joc[0][1] == 1 || joc[0][1] == 2 || joc[0][1] == 3 ) && nr_mutari % 2 == 1 ) || ( ( joc[0][1] == 4 || joc[0][1] == 5 || joc[0][1] == 6 ) && nr_mutari % 2 == 0 ) )   {
                          tine = joc [ 0 ][ 1 ] ;
                         joc [ 0 ][ 1 ] = joc2[ 0 ][ 1 ] ;
                         joc2[ 0 ][ 1 ] = joc3[ 0 ][ 1 ];
                         joc3[ 0 ][ 1 ] = 0;
                         last_piece_x = 0 ;
                         last_piece_y = 1 ;
                        }
                      }
                      if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc [ 0 ][ 2 ] != 0 && tine == 0   )  {  
                        if ( ( ( joc[0][2] == 1 || joc[0][2] == 2 || joc[0][2] == 3 ) && nr_mutari % 2 == 1 ) || ( ( joc[0][2] == 4 || joc[0][2] == 5 || joc[0][2] == 6 ) && nr_mutari % 2 == 0 ) )    {
                         tine = joc [ 0 ][ 2 ] ;
                         joc [ 0 ][ 2 ] = joc2[ 0 ][ 2 ] ;
                         joc2[ 0 ][ 2 ] = joc3[ 0 ][ 2 ];
                         joc3[ 0 ][ 2 ] = 0;
                         last_piece_x = 0 ;
                         last_piece_y = 2 ;
                      }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 && joc [ 1 ][ 0 ] != 0 && tine == 0   )  {  
                     if ( ( ( joc[1][0] == 1 || joc[1][0] == 2 || joc[1][0] == 3 ) && nr_mutari % 2 == 1 ) || ( ( joc[1][0] == 4 || joc[1][0] == 5 || joc[1][0] == 6 ) && nr_mutari % 2 == 0 ) )   { 
                          tine = joc [ 1 ][ 0 ] ;
                         joc [ 1 ][ 0 ] = joc2[ 1 ][ 0 ] ;
                         joc2[ 1 ][ 0 ] = joc3[ 1 ][ 0 ];
                         joc3[ 1 ][ 0 ] = 0;
                         last_piece_x = 1 ;
                         last_piece_y = 0 ;
                      }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc [ 1 ][ 1 ] != 0 && tine == 0  )  {  
                        if ( ( ( joc[1][1] == 1 || joc[1][1] == 2 || joc[1][1] == 3 ) && nr_mutari % 2 == 1 ) || ( ( joc[1][1] == 4 || joc[1][1] == 5 || joc[1][1] == 6 ) && nr_mutari % 2 == 0 ) )   {                         tine = joc [ 1 ][ 1 ] ;
                         joc [ 1 ][ 1 ] = joc2[ 1 ][ 1 ] ;
                         joc2[ 1 ][ 1 ] = joc3[ 1 ][ 1 ];
                         joc3[ 1 ][ 1 ] = 0;
                         last_piece_x = 1 ;
                         last_piece_y = 1 ;
                      }
                      }
                      if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 && joc [ 1 ][ 2 ] != 0 && tine == 0  )  {  
                        if ( ( ( joc[1][2] == 1 || joc[1][2] == 2 || joc[1][2] == 3 ) && nr_mutari % 2 == 1 ) || ( ( joc[1][2] == 4 || joc[1][2] == 5 || joc[1][2] == 6 ) && nr_mutari % 2 == 0 ) )   { 
                        tine = joc [ 1 ][ 2 ] ;
                         joc [ 1 ][ 2 ] = joc2[ 1 ][ 2 ] ;
                         joc2[ 1 ][ 2 ] = joc3[ 1 ][ 2 ];
                         joc3[ 1 ][ 2 ] = 0;
                         last_piece_x = 1 ;
                         last_piece_y = 2 ;
                      }
                      }
                      if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc [ 2 ][ 0 ] != 0 && tine == 0 )  {  
                     if ( ( ( joc[2][0] == 1 || joc[2][0] == 2 || joc[2][0] == 3 ) && nr_mutari % 2 == 1 ) || ( ( joc[2][0] == 4 || joc[2][0] == 5 || joc[2][0] == 6 ) && nr_mutari % 2 == 0 ) )   { 
                        tine = joc [ 2 ][ 0 ] ;
                         joc [ 2 ][ 0 ] = joc2[ 2 ][ 0 ] ;
                         joc2[ 2 ][ 0 ] = joc3[ 2 ][ 0 ];
                         joc3[ 2 ][ 0 ] = 0;
                         last_piece_x = 2 ;
                         last_piece_y = 0 ;
                      }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 && joc [ 2 ][ 1 ] != 0 && tine == 0  )  {  
                       if ( ( ( joc[2][1] == 1 || joc[2][1] == 2 || joc[2][1] == 3 ) && nr_mutari % 2 == 1 ) || ( ( joc[2][1] == 4 || joc[2][1] == 5 || joc[2][1] == 6 ) && nr_mutari % 2 == 0 ) )   { 
                        tine = joc [ 2 ][ 1 ] ;
                         joc [ 2 ][ 1 ] = joc2[ 2 ][ 1 ] ;
                         joc2[ 2 ][ 1 ] = joc3[ 2 ][ 1 ];
                         joc3[ 2 ][ 1 ] = 0;
                         last_piece_x = 2 ;
                         last_piece_y = 1 ;
                      }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 && joc [ 2 ][ 2 ] != 0 && tine == 0 )  {  
                          if ( ( ( joc[2][2] == 1 || joc[2][2] == 2 || joc[2][2] == 3 ) && nr_mutari % 2 == 1 ) || ( ( joc[2][2] == 4 || joc[2][2] == 5 || joc[2][2] == 6 ) && nr_mutari % 2 == 0 ) )   {
                        tine = joc [ 2 ][ 2 ] ;
                         joc [ 2 ][ 2 ] = joc2[ 2 ][ 2 ] ;
                         joc2[ 2 ][ 2 ] = joc3[ 2 ][ 2 ];
                         joc3[ 2 ][ 2 ] = 0;
                         last_piece_x = 2 ;
                         last_piece_y = 2 ;
                      }
                      }
                      
                      
                    }
}

void muta_piesa_de_pe_tabla_computer ( int x ){
 
                if ( mousePressed )  {
                     
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 && joc_computer [ 0 ][ 0 ] != 0 && tine_computer == 0  )  {  
                         
                       
                        if ( ( ( joc_computer[0][0] == 1 || joc_computer[0][0] == 2 || joc_computer[0][0] == 3 ) && nr_mutari_computer % 2 == 1 ) || ( ( joc_computer[0][0] == 4 || joc_computer[0][0] == 5 || joc_computer[0][0] == 6 ) && nr_mutari_computer % 2 == 0 ) )   {
                            tine_computer = joc_computer [ 0 ][ 0 ] ;
                           joc_computer [ 0 ][ 0 ] = joc2_computer[ 0 ][ 0 ] ;
                           joc2_computer[ 0 ][ 0 ] = joc3_computer[ 0 ][ 0 ];
                           joc3_computer[ 0 ][ 0 ] = 0;
                           last_piece_x_computer = 0 ;
                           last_piece_y_computer = 0 ;
                         }
                      }
                      if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 && joc_computer [ 0 ][ 1 ] != 0 && tine_computer == 0 )  {
                        if ( ( ( joc_computer[0][1] == 1 || joc_computer[0][1] == 2 || joc_computer[0][1] == 3 ) && nr_mutari_computer % 2 == 1 ) || ( ( joc_computer[0][1] == 4 || joc_computer[0][1] == 5 || joc_computer[0][1] == 6 ) && nr_mutari_computer % 2 == 0 ) )   {
                          tine_computer = joc_computer [ 0 ][ 1 ] ;
                         joc_computer [ 0 ][ 1 ] = joc2_computer[ 0 ][ 1 ] ;
                         joc2_computer[ 0 ][ 1 ] = joc3_computer[ 0 ][ 1 ];
                         joc3_computer[ 0 ][ 1 ] = 0;
                         last_piece_x_computer = 0 ;
                         last_piece_y_computer = 1 ;
                        }
                      }
                      if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc_computer [ 0 ][ 2 ] != 0 && tine_computer == 0   )  {  
                        if ( ( ( joc_computer[0][2] == 1 || joc_computer[0][2] == 2 || joc_computer[0][2] == 3 ) && nr_mutari_computer % 2 == 1 ) || ( ( joc_computer[0][2] == 4 || joc_computer[0][2] == 5 || joc_computer[0][2] == 6 ) && nr_mutari_computer % 2 == 0 ) )    {
                         tine_computer = joc_computer [ 0 ][ 2 ] ;
                         joc_computer [ 0 ][ 2 ] = joc2_computer[ 0 ][ 2 ] ;
                         joc2_computer[ 0 ][ 2 ] = joc3_computer[ 0 ][ 2 ];
                         joc3_computer[ 0 ][ 2 ] = 0;
                         last_piece_x_computer = 0 ;
                         last_piece_y_computer = 2 ;
                      }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 && joc_computer [ 1 ][ 0 ] != 0 && tine_computer == 0   )  {  
                     if ( ( ( joc_computer[1][0] == 1 || joc_computer[1][0] == 2 || joc_computer[1][0] == 3 ) && nr_mutari_computer % 2 == 1 ) || ( ( joc_computer[1][0] == 4 || joc_computer[1][0] == 5 || joc_computer[1][0] == 6 ) && nr_mutari_computer % 2 == 0 ) )   {
                          tine_computer = joc_computer [ 1 ][ 0 ] ;
                         joc [ 1 ][ 0 ] = joc2[ 1 ][ 0 ] ;
                         joc2_computer[ 1 ][ 0 ] = joc3_computer[ 1 ][ 0 ];
                         joc3_computer[ 1 ][ 0 ] = 0;
                         last_piece_x_computer = 1 ;
                         last_piece_y_computer = 0 ;
                      }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc_computer [ 1 ][ 1 ] != 0 && tine_computer == 0  )  {  
                        if ( ( ( joc_computer[1][1] == 1 || joc_computer[1][1] == 2 || joc_computer[1][1] == 3 ) && nr_mutari_computer % 2 == 1 ) || ( ( joc_computer[1][1] == 4 || joc_computer[1][1] == 5 || joc_computer[1][1] == 6 ) && nr_mutari_computer % 2 == 0 ) )   {                         tine = joc [ 1 ][ 1 ] ;
                         joc_computer [ 1 ][ 1 ] = joc2_computer[ 1 ][ 1 ] ;
                         joc2_computer[ 1 ][ 1 ] = joc3_computer[ 1 ][ 1 ];
                         joc3_computer[ 1 ][ 1 ] = 0;
                         last_piece_x_computer = 1 ;
                         last_piece_y_computer = 1 ;
                      }
                      }
                      if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 && joc_computer [ 1 ][ 2 ] != 0 && tine_computer == 0  )  {  
                        if ( ( ( joc_computer[1][2] == 1 || joc_computer[1][2] == 2 || joc_computer[1][2] == 3 ) && nr_mutari_computer % 2 == 1 ) || ( ( joc_computer[1][2] == 4 || joc_computer[1][2] == 5 || joc_computer[1][2] == 6 ) && nr_mutari_computer % 2 == 0 ) )   {
                        tine_computer = joc_computer [ 1 ][ 2 ] ;
                         joc_computer [ 1 ][ 2 ] = joc2_computer[ 1 ][ 2 ] ;
                         joc2_computer[ 1 ][ 2 ] = joc3_computer[ 1 ][ 2 ];
                         joc3_computer[ 1 ][ 2 ] = 0;
                         last_piece_x_computer = 1 ;
                         last_piece_y_computer = 2 ;
                      }
                      }
                      if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc_computer [ 2 ][ 0 ] != 0 && tine_computer == 0 )  {  
                     if ( ( ( joc_computer[2][0] == 1 || joc_computer[2][0] == 2 || joc_computer[2][0] == 3 ) && nr_mutari_computer % 2 == 1 ) || ( ( joc_computer[2][0] == 4 || joc_computer[2][0] == 5 || joc_computer[2][0] == 6 ) && nr_mutari_computer % 2 == 0 ) )   {
                        tine_computer = joc_computer [ 2 ][ 0 ] ;
                         joc_computer [ 2 ][ 0 ] = joc2_computer[ 2 ][ 0 ] ;
                         joc2_computer[ 2 ][ 0 ] = joc3_computer[ 2 ][ 0 ];
                         joc3_computer[ 2 ][ 0 ] = 0;
                         last_piece_x_computer = 2 ;
                         last_piece_y_computer = 0 ;
                      }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 && joc_computer [ 2 ][ 1 ] != 0 && tine_computer == 0  )  {  
                       if ( ( ( joc_computer[2][1] == 1 || joc_computer[2][1] == 2 || joc_computer[2][1] == 3 ) && nr_mutari_computer % 2 == 1 ) || ( ( joc_computer[2][1] == 4 || joc_computer[2][1] == 5 || joc_computer[2][1] == 6 ) && nr_mutari_computer % 2 == 0 ) )   {
                        tine_computer = joc_computer [ 2 ][ 1 ] ;
                         joc_computer [ 2 ][ 1 ] = joc2_computer[ 2 ][ 1 ] ;
                         joc2_computer[ 2 ][ 1 ] = joc3_computer[ 2 ][ 1 ];
                         joc3_computer[ 2 ][ 1 ] = 0;
                         last_piece_x_computer = 2 ;
                         last_piece_y_computer = 1 ;
                      }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 && joc_computer [ 2 ][ 2 ] != 0 && tine_computer == 0 )  {  
                          if ( ( ( joc_computer[2][2] == 1 || joc_computer[2][2] == 2 || joc_computer[2][2] == 3 ) && nr_mutari_computer % 2 == 1 ) || ( ( joc_computer[2][2] == 4 || joc_computer[2][2] == 5 || joc_computer[2][2] == 6 ) && nr_mutari_computer % 2 == 0 ) )   {
                        tine_computer = joc_computer [ 2 ][ 2 ] ;
                         joc_computer [ 2 ][ 2 ] = joc2_computer[ 2 ][ 2 ] ;
                         joc2_computer[ 2 ][ 2 ] = joc3_computer[ 2 ][ 2 ];
                         joc3_computer[ 2 ][ 2 ] = 0;
                         last_piece_x_computer = 2 ;
                         last_piece_y_computer = 2 ;
                      }
                      }
                     
                     
                    }
}

void dropeaza_imaginea ( int x ){
                  if ( tine == 1 && !mousePressed )  {  /// albastru mic
                 
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&
                      joc [ 0 ][ 0 ] == 0 )  {
                          joc [ 0 ][ 0 ] = 1;
                        if ( ( last_piece_x != 0 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&
                      joc [ 0 ][ 1 ] == 0  )  {
                          joc [ 0 ][ 1 ] = 1;
                        if ( ( last_piece_x != 0 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      joc [ 0 ][ 2 ] == 0 )  {  
                          joc [ 0 ][ 2 ] = 1;
                        if ( ( last_piece_x != 0 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&
                      joc [ 1 ][ 0 ] == 0  )  {  
                          joc [ 1 ][ 0 ] = 1;
                        if ( ( last_piece_x != 1 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      joc [ 1 ][ 1 ] == 0 )  {  
                          joc [ 1 ][ 1 ] = 1;
                        if ( ( last_piece_x != 1 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=1;
                          used=0;
                          }
                      }
                      if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
                      joc [ 1 ][ 2 ] == 0 )  {  
                          joc [ 1 ][ 2 ] = 1;
                        if ( ( last_piece_x != 1 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      joc [ 2 ][ 0 ] == 0  )  {  
                          joc [ 2 ][ 0 ] = 1;
                        if ( ( last_piece_x != 2 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
                      joc [ 2 ][ 1 ] == 0  )  {  
                          joc [ 2 ][ 1 ] = 1;
                        if ( ( last_piece_x != 2 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&
                      joc [ 2 ][ 2 ] == 0 )  {  
                          joc [ 2 ][ 2 ] = 1;
                        if ( ( last_piece_x != 2 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=2;
                          used=0;
                      }  
                    }
                        tine=0;
                    }
                    if ( tine == 2 && !mousePressed )  {  /// albastru mediu
                 
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&
                      ( joc [ 0 ][ 0 ] == 0 || joc [ 0 ][ 0 ] == 1 || joc [ 0 ][ 0 ] == 4 ) )  {  
                        joc3 [ 0 ][ 0 ] = joc2 [ 0 ][ 0 ] ;
                        joc2 [ 0 ][ 0 ] = joc [ 0 ][ 0 ] ;
                        joc [ 0 ][ 0 ] = 2;
                        if ( ( last_piece_x != 0 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&
                      ( joc [ 0 ][ 1 ] == 0 || joc [ 0 ][ 1 ] == 1 || joc [ 0 ][ 1 ] == 4 ) )  {
                        joc3 [ 0 ][ 1 ] = joc2 [ 0 ][ 1 ] ;
                        joc2 [ 0 ][ 1 ] = joc [ 0 ][ 1 ] ;
                        joc [ 0 ][ 1 ] = 2;
                        if ( ( last_piece_x != 0 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 0 ][ 2 ] == 0 || joc [ 0 ][ 2 ] == 1 || joc [ 0 ][ 2 ] == 4 ) ) {
                        joc3 [ 0 ][ 2 ] = joc2 [ 0 ][ 2 ] ;
                        joc2 [ 0 ][ 2 ] = joc [ 0 ][ 2 ] ;
                        joc [ 0 ][ 2 ] = 2;
                        if ( ( last_piece_x != 0 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&
                      ( joc [ 1 ][ 0 ] == 0 || joc [ 1 ][ 0 ] == 1 || joc [ 1 ][ 0 ] == 4 )  ) {
                        joc3 [ 1 ][ 0 ] = joc2 [ 1 ][ 0 ] ;
                        joc2 [ 1 ][ 0 ] = joc [ 1 ][ 0 ] ;
                        joc [ 1 ][ 0 ] = 2;  
                        if ( ( last_piece_x != 1 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 1 ][ 1 ] == 0 || joc [ 1 ][ 1 ] == 1 || joc [ 1 ][ 1 ] == 4 )  )  {
                        joc3 [ 1 ][ 1 ] = joc2 [ 1 ][ 1 ] ;
                        joc2 [ 1 ][ 1 ] = joc [ 1 ][ 1 ] ;
                        joc [ 1 ][ 1 ] = 2;
                        if ( ( last_piece_x != 1 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
                      ( joc [ 1 ][ 2 ] == 0 || joc [ 1 ][ 2 ] == 1 || joc [ 1 ][ 2 ] == 4 )  ) {
                        joc3 [ 1 ][ 2 ] = joc2 [ 1 ][ 2 ] ;
                        joc2 [ 1 ][ 2 ] = joc [ 1 ][ 2 ] ;
                        joc [ 1 ][ 2 ] = 2;
                        if ( ( last_piece_x != 1 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 2 ][ 0 ] == 0 || joc [ 2 ][ 0 ] == 1 || joc [ 2 ][ 0 ] == 4 ) ) {
                        joc3 [ 2 ][ 0 ] = joc2 [ 2 ][ 0 ] ;
                        joc2 [ 2 ][ 0 ] = joc [ 2 ][ 0 ] ;
                        joc [ 2 ][ 0 ] = 2;
                        if ( ( last_piece_x != 2 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
                      ( joc [ 2 ][ 1 ] == 0 || joc [ 2 ][ 1 ] == 1 || joc [ 2 ][ 1 ] == 4 )  ) {  
                        joc3 [ 2 ][ 1 ] = joc2 [ 2 ][ 1 ] ;
                        joc2 [ 2 ][ 1 ] = joc [ 2 ][ 1 ] ;
                        joc [ 2 ][ 1 ] = 2;
                        if ( ( last_piece_x != 2 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&
                      ( joc [ 2 ][ 2 ] == 0 ||joc [ 2 ][ 2 ] == 1 || joc [ 2 ][ 2 ] == 4 ) ) {  
                        joc3 [ 2 ][ 2 ] = joc2 [ 2 ][ 2 ] ;
                        joc2 [ 2 ][ 2 ] = joc [ 2 ][ 2 ] ;
                        joc [ 2 ][ 2 ] = 2;
                        if ( ( last_piece_x != 2 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                        tine=0;
                    }
                    if ( tine == 3 && !mousePressed )  {  /// albastru mare
                 
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&
                      ( joc [ 0 ][ 0 ] == 0 || joc [ 0 ][ 0 ] == 1 || joc [ 0 ][ 0 ] == 4 || joc [ 0 ][ 0 ] == 2 || joc [ 0 ][ 0 ] == 5 ) )  {  
                        joc3 [ 0 ][ 0 ] = joc2 [ 0 ][ 0 ] ;
                        joc2 [ 0 ][ 0 ] = joc [ 0 ][ 0 ] ;
                        joc [ 0 ][ 0 ] = 3;
                        if ( ( last_piece_x != 0 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&
                      ( joc [ 0 ][ 1 ] == 0 || joc [ 0 ][ 1 ] == 1 || joc [ 0 ][ 1 ] == 4|| joc [ 0 ][ 1 ] == 5 || joc [ 0 ][ 1 ] == 2 ) )  {
                        joc3 [ 0 ][ 1 ] = joc2 [ 0 ][ 1 ] ;
                        joc2 [ 0 ][ 1 ] = joc [ 0 ][ 1 ] ;
                        joc [ 0 ][ 1 ] = 3;
                        if ( ( last_piece_x != 0 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 0 ][ 2 ] == 0 || joc [ 0 ][ 2 ] == 1 || joc [ 0 ][ 2 ] == 4 || joc [ 0 ][ 2 ] == 2 || joc [ 0 ][ 2 ] == 5 ) ) {
                          joc3 [ 0 ][ 2 ] = joc2 [ 0 ][ 2 ] ;
                        joc2 [ 0 ][ 2 ] = joc [ 0 ][ 2 ] ;
                        joc [ 0 ][ 2 ] = 3;
                        if ( ( last_piece_x != 0 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&
                      ( joc [ 1 ][ 0 ] == 0 || joc [ 1 ][ 0 ] == 1 || joc [ 1 ][ 0 ] == 4 || joc [ 1 ][ 0 ] == 2 || joc [ 1 ][ 0 ] == 5 ) ) {
                          joc3 [ 1 ][ 0 ] = joc2 [ 1 ][ 0 ] ;
                        joc2 [ 1 ][ 0 ] = joc [ 1 ][ 0 ] ;
                        joc [ 1 ][ 0 ] = 3;
                       if ( ( last_piece_x != 1 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 1 ][ 1 ] == 0 || joc [ 1 ][ 1 ] == 1 || joc [ 1 ][ 1 ] == 4 || joc [ 1 ][ 1 ] == 2 || joc [ 1 ][ 1 ] == 5 ) )  {
                         joc3 [ 1 ][ 1 ] = joc2 [ 1 ][ 1 ] ;
                        joc2 [ 1 ][ 1 ] = joc [ 1 ][ 1 ] ;
                        joc [ 1 ][ 1 ] = 3;
                        if ( ( last_piece_x != 1 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
                      ( joc [ 1 ][ 2 ] == 0 || joc [ 1 ][ 2 ] == 1 || joc [ 1 ][ 2 ] == 4 || joc [ 1 ][ 2 ] == 2 || joc [ 1 ][ 2 ] == 5 ) ) {
                           joc3 [ 1 ][ 2 ] = joc2 [ 1 ][ 2 ] ;
                        if ( ( last_piece_x != 1 || last_piece_y != 2 ) )  {
                        joc2 [ 1 ][ 2 ] = joc [ 1 ][ 2 ] ;
                        joc [ 1 ][ 2 ] = 3;
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 2 ][ 0 ] == 0 || joc [ 2 ][ 0 ] == 1 || joc [ 2 ][ 0 ] == 4 || joc [ 2 ][ 0 ] == 2 || joc [ 2 ][ 0 ] == 5 ) ) {
                          joc3 [ 2 ][ 0 ] = joc2 [ 2 ][ 0 ] ;
                        joc2 [ 2 ][ 0 ] = joc [ 2 ][ 0 ] ;
                        joc [ 2 ][ 0 ] = 3;
                        if ( ( last_piece_x != 2 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
                      ( joc [ 2 ][ 1 ] == 0 || joc [ 2 ][ 1 ] == 1 || joc [ 2 ][ 1 ] == 4 || joc [ 2 ][ 1 ] == 2 || joc [ 2 ][ 1 ] == 5 ) ) {  
                          joc3 [ 2 ][ 1 ] = joc2 [ 2 ][ 1 ] ;
                        joc2 [ 2 ][ 1 ] = joc [ 2 ][ 1 ] ;
                        joc [ 2 ][ 1 ] = 3;
                        if ( ( last_piece_x != 2 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&
                      ( joc [ 2 ][ 2 ] == 0 ||joc [ 2 ][ 2 ] == 1 || joc [ 2 ][ 2 ] == 4 || joc [ 2 ][ 2 ] == 2 || joc [ 2 ][ 2 ] == 5 ) ) {  
                        joc3 [ 2 ][ 2 ] = joc2 [ 2 ][ 2 ] ;
                        joc2 [ 2 ][ 2 ] = joc [ 2 ][ 2 ] ;
                        joc [ 2 ][ 2 ] = 3;
                        if ( ( last_piece_x != 2 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                        tine=0;
                    }
                    if ( tine == 4 && !mousePressed )  {  /// rosu mic
                 
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 && joc [ 0 ][ 0 ] == 0 )  {  
                          joc [ 0 ][ 0 ] = 4;
                        if ( ( last_piece_x != 0 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 && joc [ 0 ][ 1 ] == 0 )  {
                          joc [ 0 ][ 1 ] = 4;
                        if ( ( last_piece_x != 0 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc [ 0 ][ 2 ] == 0 )  {  
                          joc [ 0 ][ 2 ] = 4;
                        if ( ( last_piece_x != 0 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 && joc [ 1 ][ 0 ] == 0 )  {  
                          joc [ 1 ][ 0 ] = 4;
                        if ( ( last_piece_x != 1 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc [ 1 ][ 1 ] == 0 )  {  
                          joc [ 1 ][ 1 ] = 4;
                        if ( ( last_piece_x != 1 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 && joc [ 1 ][ 2 ] == 0 )  {  
                          joc [ 1 ][ 2 ] = 4;
                        if ( ( last_piece_x != 1 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc [ 2 ][ 0 ] == 0 )  {  
                          joc [ 2 ][ 0 ] = 4;
                        if ( ( last_piece_x != 2 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 && joc [ 2 ][ 1 ] == 0 )  {  
                          joc [ 2 ][ 1 ] = 4;
                       if ( ( last_piece_x != 2 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 && joc [ 2 ][ 2 ] == 0 )  {  
                          joc [ 2 ][ 2 ] = 4;
                      if ( ( last_piece_x != 2 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                        tine=0;
                    }
                    if ( tine == 5 && !mousePressed )  {  /// rosu mediu
                 
                     if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&
                      ( joc [ 0 ][ 0 ] == 0 || joc [ 0 ][ 0 ] == 1 || joc [ 0 ][ 0 ] == 4 ) )  {  
                        joc3 [ 0 ][ 0 ] = joc2 [ 0 ][ 0 ] ;
                        joc2 [ 0 ][ 0 ] = joc [ 0 ][ 0 ] ;
                        joc [ 0 ][ 0 ] = 5;
                        if ( ( last_piece_x != 0 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&
                      ( joc [ 0 ][ 1 ] == 0 || joc [ 0 ][ 1 ] == 1 || joc [ 0 ][ 1 ] == 4 ) )  {
                        joc3 [ 0 ][ 1 ] = joc2 [ 0 ][ 1 ] ;
                        joc2 [ 0 ][ 1 ] = joc [ 0 ][ 1 ] ;
                        joc [ 0 ][ 1 ] = 5;
                        if ( ( last_piece_x != 0 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 0 ][ 2 ] == 0 || joc [ 0 ][ 2 ] == 1 || joc [ 0 ][ 2 ] == 4 ) ) {
                        joc3 [ 0 ][ 2 ] = joc2 [ 0 ][ 2 ] ;
                        joc2 [ 0 ][ 2 ] = joc [ 0 ][ 2 ] ;
                        joc [ 0 ][ 2 ] = 5;
                        if ( ( last_piece_x != 0 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&
                      ( joc [ 1 ][ 0 ] == 0 || joc [ 1 ][ 0 ] == 1 || joc [ 1 ][ 0 ] == 4 ) ) {
                        joc3 [ 1 ][ 0 ] = joc2 [ 1 ][ 0 ] ;
                        joc2 [ 1 ][ 0 ] = joc [ 1 ][ 0 ] ;
                        joc [ 1 ][ 0 ] = 5;
                        if ( ( last_piece_x != 1 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 1 ][ 1 ] == 0 || joc [ 1 ][ 1 ] == 1 || joc [ 1 ][ 1 ] == 4 ) )  {
                        joc3 [ 1 ][ 1 ] = joc2 [ 1 ][ 1 ] ;
                        joc2 [ 1 ][ 1 ] = joc [ 1 ][ 1 ] ;
                        joc [ 1 ][ 1 ] = 5;
                        if ( ( last_piece_x != 1 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
                      ( joc [ 1 ][ 2 ] == 0 || joc [ 1 ][ 2 ] == 1 || joc [ 1 ][ 2 ] == 4 ) ) {
                        joc3 [ 1 ][ 2 ] = joc2 [ 1 ][ 2 ] ;
                        joc2 [ 1 ][ 2 ] = joc [ 1 ][ 2 ] ;
                        joc [ 1 ][ 2 ] = 5;
                        if ( ( last_piece_x != 1 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 2 ][ 0 ] == 0 || joc [ 2 ][ 0 ] == 1 || joc [ 2 ][ 0 ] == 4 ) ) {
                        joc3 [ 2 ][ 0 ] = joc2 [ 2 ][ 0 ] ;
                        joc2 [ 2 ][ 0 ] = joc [ 2 ][ 0 ] ;
                        joc [ 2 ][ 0 ] = 5;
                        if ( ( last_piece_x != 2 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
                      ( joc [ 2 ][ 1 ] == 0 || joc [ 2 ][ 1 ] == 1 || joc [ 2 ][ 1 ] == 4 ) ) {  
                        joc3 [ 2 ][ 1 ] = joc2 [ 2 ][ 1 ] ;
                        joc2 [ 2 ][ 1 ] = joc [ 2 ][ 1 ] ;
                        joc [ 2 ][ 1 ] = 5;
                        if ( ( last_piece_x != 2 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&
                      ( joc [ 2 ][ 2 ] == 0 ||joc [ 2 ][ 2 ] == 1 || joc [ 2 ][ 2 ] == 4 ) ) {  
                        joc3 [ 2 ][ 2 ] = joc2 [ 2 ][ 2 ] ;
                        joc2 [ 2 ][ 2 ] = joc [ 2 ][ 2 ] ;
                        joc [ 2 ][ 2 ] = 5;
                        if ( ( last_piece_x != 2 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                        tine=0;
                    }
                    if ( tine == 6 && !mousePressed )  {  /// rosu mare
                 
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&
                      ( joc [ 0 ][ 0 ] == 0 || joc [ 0 ][ 0 ] == 1 || joc [ 0 ][ 0 ] == 4 || joc [ 0 ][ 0 ] == 2 || joc [ 0 ][ 0 ] == 5 ) )  {  
                        joc3 [ 0 ][ 0 ] = joc2 [ 0 ][ 0 ] ;
                        joc2 [ 0 ][ 0 ] = joc [ 0 ][ 0 ] ;
                        joc [ 0 ][ 0 ] = 6;
                        if ( ( last_piece_x != 0 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&
                      ( joc [ 0 ][ 1 ] == 0 || joc [ 0 ][ 1 ] == 1 || joc [ 0 ][ 1 ] == 4|| joc [ 0 ][ 1 ] == 5 || joc [ 0 ][ 1 ] == 2 ) )  {
                        joc3 [ 0 ][ 1 ] = joc2 [ 0 ][ 1 ] ;
                        joc2 [ 0 ][ 1 ] = joc [ 0 ][ 1 ] ;
                        joc [ 0 ][ 1 ] = 6;
                        if ( ( last_piece_x != 0 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 0 ][ 2 ] == 0 || joc [ 0 ][ 2 ] == 1 || joc [ 0 ][ 2 ] == 4 || joc [ 0 ][ 2 ] == 2 || joc [ 0 ][ 2 ] == 5 ) ) {
                          joc3 [ 0 ][ 2 ] = joc2 [ 0 ][ 2 ] ;
                        joc2 [ 0 ][ 2 ] = joc [ 0 ][ 2 ] ;
                        joc [ 0 ][ 2 ] = 6;
                        if ( ( last_piece_x != 0 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=0;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&
                      ( joc [ 1 ][ 0 ] == 0 || joc [ 1 ][ 0 ] == 1 || joc [ 1 ][ 0 ] == 4 || joc [ 1 ][ 0 ] == 2 || joc [ 1 ][ 0 ] == 5 ) ) {
                          joc3 [ 1 ][ 0 ] = joc2 [ 1 ][ 0 ] ;
                        joc2 [ 1 ][ 0 ] = joc [ 1 ][ 0 ] ;
                        joc [ 1 ][ 0 ] = 6;
                        if ( ( last_piece_x != 1 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 1 ][ 1 ] == 0 || joc [ 1 ][ 1 ] == 1 || joc [ 1 ][ 1 ] == 4 || joc [ 1 ][ 1 ] == 2 || joc [ 1 ][ 1 ] == 5 ) )  {
                         joc3 [ 1 ][ 1 ] = joc2 [ 1 ][ 1 ] ;
                        joc2 [ 1 ][ 1 ] = joc [ 1 ][ 1 ] ;
                        joc [ 1 ][ 1 ] = 6;
                        if ( ( last_piece_x != 1 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
                      ( joc [ 1 ][ 2 ] == 0 || joc [ 1 ][ 2 ] == 1 || joc [ 1 ][ 2 ] == 4 || joc [ 1 ][ 2 ] == 2 || joc [ 1 ][ 2 ] == 5 ) ) {
                           joc3 [ 1 ][ 2 ] = joc2 [ 1 ][ 2 ] ;
                        joc2 [ 1 ][ 2 ] = joc [ 1 ][ 2 ] ;
                        joc [ 1 ][ 2 ] = 6;
                        if ( ( last_piece_x != 1 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=1;
                          CURR_Y=2;
                          used=0;
                        }
                      }
                      if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
                      ( joc [ 2 ][ 0 ] == 0 || joc [ 2 ][ 0 ] == 1 || joc [ 2 ][ 0 ] == 4 || joc [ 2 ][ 0 ] == 2 || joc [ 2 ][ 0 ] == 5 ) ) {
                          joc3 [ 2 ][ 0 ] = joc2 [ 2 ][ 0 ] ;
                        joc2 [ 2 ][ 0 ] = joc [ 2 ][ 0 ] ;
                        joc [ 2 ][ 0 ] = 6;
                        if ( ( last_piece_x != 2 || last_piece_y != 0 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=0;
                          used=0;
                        }
                      }
                      if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
                      ( joc [ 2 ][ 1 ] == 0 || joc [ 2 ][ 1 ] == 1 || joc [ 2 ][ 1 ] == 4 || joc [ 2 ][ 1 ] == 2 || joc [ 2 ][ 1 ] == 5 ) ) {  
                          joc3 [ 2 ][ 1 ] = joc2 [ 2 ][ 1 ] ;
                        joc2 [ 2 ][ 1 ] = joc [ 2 ][ 1 ] ;
                        joc [ 2 ][ 1 ] = 6;
                        if ( ( last_piece_x != 2 || last_piece_y != 1 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=1;
                          used=0;
                        }
                      }
                      if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&
                      ( joc [ 2 ][ 2 ] == 0 ||joc [ 2 ][ 2 ] == 1 || joc [ 2 ][ 2 ] == 4 || joc [ 2 ][ 2 ] == 2 || joc [ 2 ][ 2 ] == 5 ) ) {  
                        joc3 [ 2 ][ 2 ] = joc2 [ 2 ][ 2 ] ;
                        joc2 [ 2 ][ 2 ] = joc [ 2 ][ 2 ] ;
                        joc [ 2 ][ 2 ] = 6;
                        if ( ( last_piece_x != 2 || last_piece_y != 2 ) )  {
                          ++ nr_mutari ;
                          LAST_X=last_piece_x;
                          LAST_Y=last_piece_y;
                          CURR_X=2;
                          CURR_Y=2;
                          used=0;
                        }
                    }
                        tine=0;
                    } 
}
void dropeaza_imaginea_computer ( int x ){
    if ( tine_computer == 1 && !mousePressed )  {  /// albastru mic

        if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&
             joc_computer [ 0 ][ 0 ] == 0 )  {
            joc_computer [ 0 ][ 0 ] = 1;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&
             joc_computer [ 0 ][ 1 ] == 0  )  {
            joc_computer [ 0 ][ 1 ] = 1;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             joc_computer [ 0 ][ 2 ] == 0 )  {
            joc_computer [ 0 ][ 2 ] = 1;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&
             joc_computer [ 1 ][ 0 ] == 0  )  {
            joc_computer [ 1 ][ 0 ] = 1;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             joc_computer [ 1 ][ 1 ] == 0 )  {
            joc_computer [ 1 ][ 1 ] = 1;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
             joc_computer [ 1 ][ 2 ] == 0 )  {
            joc_computer [ 1 ][ 2 ] = 1;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             joc_computer [ 2 ][ 0 ] == 0  )  {
            joc_computer [ 2 ][ 0 ] = 1;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
             joc_computer [ 2 ][ 1 ] == 0  )  {
            joc_computer [ 2 ][ 1 ] = 1;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&
             joc_computer [ 2 ][ 2 ] == 0 )  {
            joc_computer [ 2 ][ 2 ] = 1;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        tine_computer=0;
    }
    if ( tine_computer == 2 && !mousePressed )  {  /// albastru mediu

        if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&
             ( joc_computer [ 0 ][ 0 ] == 0 || joc_computer [ 0 ][ 0 ] == 1 || joc_computer [ 0 ][ 0 ] == 4 ) )  {
            joc3_computer [ 0 ][ 0 ] = joc2_computer [ 0 ][ 0 ] ;
            joc2_computer [ 0 ][ 0 ] = joc_computer [ 0 ][ 0 ] ;
            joc_computer [ 0 ][ 0 ] = 2;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&
             ( joc_computer [ 0 ][ 1 ] == 0 || joc_computer [ 0 ][ 1 ] == 1 || joc_computer [ 0 ][ 1 ] == 4 ) )  {
            joc3_computer [ 0 ][ 1 ] = joc2_computer [ 0 ][ 1 ] ;
            joc2_computer [ 0 ][ 1 ] = joc_computer [ 0 ][ 1 ] ;
            joc_computer [ 0 ][ 1 ] = 2;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 0 ][ 2 ] == 0 || joc_computer [ 0 ][ 2 ] == 1 || joc_computer [ 0 ][ 2 ] == 4 ) ) {
            joc3_computer [ 0 ][ 2 ] = joc2_computer [ 0 ][ 2 ] ;
            joc2_computer [ 0 ][ 2 ] = joc_computer [ 0 ][ 2 ] ;
            joc_computer [ 0 ][ 2 ] = 2;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&
             ( joc_computer [ 1 ][ 0 ] == 0 || joc_computer [ 1 ][ 0 ] == 1 || joc_computer [ 1 ][ 0 ] == 4 )  ) {
            joc3_computer [ 1 ][ 0 ] = joc2_computer [ 1 ][ 0 ] ;
            joc2_computer [ 1 ][ 0 ] = joc_computer [ 1 ][ 0 ] ;
            joc_computer [ 1 ][ 0 ] = 2;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 1 ][ 1 ] == 0 || joc_computer [ 1 ][ 1 ] == 1 || joc_computer [ 1 ][ 1 ] == 4 )  )  {
            joc3_computer [ 1 ][ 1 ] = joc2_computer [ 1 ][ 1 ] ;
            joc2_computer [ 1 ][ 1 ] = joc_computer [ 1 ][ 1 ] ;
            joc_computer [ 1 ][ 1 ] = 2;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
             ( joc_computer [ 1 ][ 2 ] == 0 || joc_computer [ 1 ][ 2 ] == 1 || joc_computer [ 1 ][ 2 ] == 4 )  ) {
            joc3_computer [ 1 ][ 2 ] = joc2_computer [ 1 ][ 2 ] ;
            joc2_computer [ 1 ][ 2 ] = joc_computer [ 1 ][ 2 ] ;
            joc_computer [ 1 ][ 2 ] = 2;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 2 ][ 0 ] == 0 || joc_computer [ 2 ][ 0 ] == 1 || joc_computer [ 2 ][ 0 ] == 4 ) ) {
            joc3_computer [ 2 ][ 0 ] = joc2_computer [ 2 ][ 0 ] ;
            joc2_computer [ 2 ][ 0 ] = joc_computer [ 2 ][ 0 ] ;
            joc_computer [ 2 ][ 0 ] = 2;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
             ( joc_computer [ 2 ][ 1 ] == 0 || joc_computer [ 2 ][ 1 ] == 1 || joc_computer [ 2 ][ 1 ] == 4 )  ) {
            joc3_computer [ 2 ][ 1 ] = joc2_computer [ 2 ][ 1 ] ;
            joc2_computer [ 2 ][ 1 ] = joc_computer [ 2 ][ 1 ] ;
            joc_computer [ 2 ][ 1 ] = 2;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&
             ( joc_computer [ 2 ][ 2 ] == 0 ||joc_computer [ 2 ][ 2 ] == 1 || joc_computer [ 2 ][ 2 ] == 4 ) ) {
            joc3_computer [ 2 ][ 2 ] = joc2_computer [ 2 ][ 2 ] ;
            joc2_computer [ 2 ][ 2 ] = joc_computer [ 2 ][ 2 ] ;
            joc_computer [ 2 ][ 2 ] = 2;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        tine_computer=0;
    }
    if ( tine_computer == 3 && !mousePressed )  {  /// albastru mare

        if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&
             ( joc_computer [ 0 ][ 0 ] == 0 || joc_computer [ 0 ][ 0 ] == 1 || joc_computer [ 0 ][ 0 ] == 4 || joc_computer [ 0 ][ 0 ] == 2 || joc_computer [ 0 ][ 0 ] == 5 ) )  {
            joc3_computer [ 0 ][ 0 ] = joc2_computer [ 0 ][ 0 ] ;
            joc2_computer [ 0 ][ 0 ] = joc_computer [ 0 ][ 0 ] ;
            joc_computer [ 0 ][ 0 ] = 3;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&
             ( joc_computer [ 0 ][ 1 ] == 0 || joc_computer [ 0 ][ 1 ] == 1 || joc_computer [ 0 ][ 1 ] == 4|| joc_computer [ 0 ][ 1 ] == 5 || joc_computer [ 0 ][ 1 ] == 2 ) )  {
            joc3_computer [ 0 ][ 1 ] = joc2_computer [ 0 ][ 1 ] ;
            joc2_computer [ 0 ][ 1 ] = joc_computer [ 0 ][ 1 ] ;
            joc_computer [ 0 ][ 1 ] = 3;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 0 ][ 2 ] == 0 || joc_computer [ 0 ][ 2 ] == 1 || joc_computer [ 0 ][ 2 ] == 4 || joc_computer [ 0 ][ 2 ] == 2 || joc_computer [ 0 ][ 2 ] == 5 ) ) {
            joc3_computer [ 0 ][ 2 ] = joc2_computer [ 0 ][ 2 ] ;
            joc2_computer [ 0 ][ 2 ] = joc_computer [ 0 ][ 2 ] ;
            joc_computer [ 0 ][ 2 ] = 3;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&
             ( joc_computer [ 1 ][ 0 ] == 0 || joc_computer [ 1 ][ 0 ] == 1 || joc_computer [ 1 ][ 0 ] == 4 || joc_computer [ 1 ][ 0 ] == 2 || joc_computer [ 1 ][ 0 ] == 5 ) ) {
            joc3_computer [ 1 ][ 0 ] = joc2_computer [ 1 ][ 0 ] ;
            joc2_computer [ 1 ][ 0 ] = joc_computer [ 1 ][ 0 ] ;
            joc_computer [ 1 ][ 0 ] = 3;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 1 ][ 1 ] == 0 || joc_computer [ 1 ][ 1 ] == 1 || joc_computer [ 1 ][ 1 ] == 4 || joc_computer [ 1 ][ 1 ] == 2 || joc_computer [ 1 ][ 1 ] == 5 ) )  {
            joc3_computer [ 1 ][ 1 ] = joc2_computer [ 1 ][ 1 ] ;
            joc2_computer [ 1 ][ 1 ] = joc_computer [ 1 ][ 1 ] ;
            joc_computer [ 1 ][ 1 ] = 3;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
             ( joc_computer [ 1 ][ 2 ] == 0 || joc_computer [ 1 ][ 2 ] == 1 || joc_computer [ 1 ][ 2 ] == 4 || joc_computer [ 1 ][ 2 ] == 2 || joc_computer [ 1 ][ 2 ] == 5 ) ) {
            joc3_computer [ 1 ][ 2 ] = joc2_computer [ 1 ][ 2 ] ;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 2 ) )  {
                joc2_computer [ 1 ][ 2 ] = joc_computer [ 1 ][ 2 ] ;
                joc_computer [ 1 ][ 2 ] = 3;
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 2 ][ 0 ] == 0 || joc_computer [ 2 ][ 0 ] == 1 || joc_computer [ 2 ][ 0 ] == 4 || joc_computer [ 2 ][ 0 ] == 2 || joc_computer [ 2 ][ 0 ] == 5 ) ) {
            joc3_computer [ 2 ][ 0 ] = joc2_computer [ 2 ][ 0 ] ;
            joc2_computer [ 2 ][ 0 ] = joc_computer [ 2 ][ 0 ] ;
            joc_computer [ 2 ][ 0 ] = 3;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
             ( joc_computer [ 2 ][ 1 ] == 0 || joc_computer [ 2 ][ 1 ] == 1 || joc_computer [ 2 ][ 1 ] == 4 || joc_computer [ 2 ][ 1 ] == 2 || joc_computer [ 2 ][ 1 ] == 5 ) ) {
            joc3_computer [ 2 ][ 1 ] = joc2_computer [ 2 ][ 1 ] ;
            joc2_computer [ 2 ][ 1 ] = joc_computer [ 2 ][ 1 ] ;
            joc_computer [ 2 ][ 1 ] = 3;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&
             ( joc_computer [ 2 ][ 2 ] == 0 ||joc_computer [ 2 ][ 2 ] == 1 || joc_computer [ 2 ][ 2 ] == 4 || joc_computer [ 2 ][ 2 ] == 2 || joc_computer [ 2 ][ 2 ] == 5 ) ) {
            joc3_computer [ 2 ][ 2 ] = joc2_computer [ 2 ][ 2 ] ;
            joc2_computer [ 2 ][ 2 ] = joc_computer [ 2 ][ 2 ] ;
            joc_computer [ 2 ][ 2 ] = 3;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        tine_computer=0;
    }
    if ( tine_computer == 4 && !mousePressed )  {  /// rosu mic

        if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 && joc_computer [ 0 ][ 0 ] == 0 )  {
            joc_computer [ 0 ][ 0 ] = 4;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 && joc_computer [ 0 ][ 1 ] == 0 )  {
            joc_computer [ 0 ][ 1 ] = 4;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc_computer [ 0 ][ 2 ] == 0 )  {
            joc_computer [ 0 ][ 2 ] = 4;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 && joc_computer [ 1 ][ 0 ] == 0 )  {
            joc_computer [ 1 ][ 0 ] = 4;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc_computer [ 1 ][ 1 ] == 0 )  {
            joc_computer [ 1 ][ 1 ] = 4;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 && joc_computer [ 1 ][ 2 ] == 0 )  {
            joc_computer [ 1 ][ 2 ] = 4;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 && joc_computer [ 2 ][ 0 ] == 0 )  {
            joc_computer [ 2 ][ 0 ] = 4;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 && joc_computer [ 2 ][ 1 ] == 0 )  {
            joc_computer [ 2 ][ 1 ] = 4;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 && joc_computer [ 2 ][ 2 ] == 0 )  {
            joc_computer [ 2 ][ 2 ] = 4;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        tine_computer=0;
    }
    if ( tine_computer == 5 && !mousePressed )  {  /// rosu mediu

        if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&
             ( joc_computer [ 0 ][ 0 ] == 0 || joc_computer [ 0 ][ 0 ] == 1 || joc_computer [ 0 ][ 0 ] == 4 ) )  {
            joc3_computer [ 0 ][ 0 ] = joc2_computer [ 0 ][ 0 ] ;
            joc2_computer [ 0 ][ 0 ] = joc_computer [ 0 ][ 0 ] ;
            joc_computer [ 0 ][ 0 ] = 5;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&
             ( joc_computer [ 0 ][ 1 ] == 0 || joc_computer [ 0 ][ 1 ] == 1 || joc_computer [ 0 ][ 1 ] == 4 ) )  {
            joc3_computer [ 0 ][ 1 ] = joc2_computer [ 0 ][ 1 ] ;
            joc2_computer [ 0 ][ 1 ] = joc_computer [ 0 ][ 1 ] ;
            joc_computer [ 0 ][ 1 ] = 5;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 0 ][ 2 ] == 0 || joc_computer [ 0 ][ 2 ] == 1 || joc_computer [ 0 ][ 2 ] == 4 ) ) {
            joc3_computer [ 0 ][ 2 ] = joc2_computer [ 0 ][ 2 ] ;
            joc2_computer [ 0 ][ 2 ] = joc_computer [ 0 ][ 2 ] ;
            joc_computer [ 0 ][ 2 ] = 5;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&
             ( joc_computer [ 1 ][ 0 ] == 0 || joc_computer [ 1 ][ 0 ] == 1 || joc_computer [ 1 ][ 0 ] == 4 ) ) {
            joc3_computer [ 1 ][ 0 ] = joc2_computer [ 1 ][ 0 ] ;
            joc2_computer [ 1 ][ 0 ] = joc_computer [ 1 ][ 0 ] ;
            joc_computer [ 1 ][ 0 ] = 5;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 1 ][ 1 ] == 0 || joc_computer [ 1 ][ 1 ] == 1 || joc_computer [ 1 ][ 1 ] == 4 ) )  {
            joc3_computer [ 1 ][ 1 ] = joc2_computer [ 1 ][ 1 ] ;
            joc2_computer [ 1 ][ 1 ] = joc_computer [ 1 ][ 1 ] ;
            joc_computer [ 1 ][ 1 ] = 5;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
             ( joc_computer [ 1 ][ 2 ] == 0 || joc_computer [ 1 ][ 2 ] == 1 || joc_computer [ 1 ][ 2 ] == 4 ) ) {
            joc3_computer [ 1 ][ 2 ] = joc2_computer [ 1 ][ 2 ] ;
            joc2_computer [ 1 ][ 2 ] = joc_computer [ 1 ][ 2 ] ;
            joc_computer [ 1 ][ 2 ] = 5;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 2 ][ 0 ] == 0 || joc_computer [ 2 ][ 0 ] == 1 || joc_computer [ 2 ][ 0 ] == 4 ) ) {
            joc3_computer [ 2 ][ 0 ] = joc2_computer [ 2 ][ 0 ] ;
            joc2_computer [ 2 ][ 0 ] = joc_computer [ 2 ][ 0 ] ;
            joc_computer [ 2 ][ 0 ] = 5;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
             ( joc_computer [ 2 ][ 1 ] == 0 || joc_computer [ 2 ][ 1 ] == 1 || joc_computer [ 2 ][ 1 ] == 4 ) ) {
            joc3_computer [ 2 ][ 1 ] = joc2_computer [ 2 ][ 1 ] ;
            joc2_computer [ 2 ][ 1 ] = joc_computer [ 2 ][ 1 ] ;
            joc_computer [ 2 ][ 1 ] = 5;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&
             ( joc_computer [ 2 ][ 2 ] == 0 ||joc_computer [ 2 ][ 2 ] == 1 || joc_computer [ 2 ][ 2 ] == 4 ) ) {
            joc3_computer [ 2 ][ 2 ] = joc2_computer [ 2 ][ 2 ] ;
            joc2_computer [ 2 ][ 2 ] = joc_computer [ 2 ][ 2 ] ;
            joc_computer [ 2 ][ 2 ] = 5;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        tine_computer=0;
    }
    if ( tine_computer == 6 && !mousePressed )  {  /// rosu mare

        if ( width/2-height/8 <= mouseX && mouseX <= width/2+height/8 && height/5 - height/8 <= mouseY && mouseY <= height/5 + height/8 &&
             ( joc_computer [ 0 ][ 0 ] == 0 || joc_computer [ 0 ][ 0 ] == 1 || joc_computer [ 0 ][ 0 ] == 4 || joc_computer [ 0 ][ 0 ] == 2 || joc_computer [ 0 ][ 0 ] == 5 ) )  {
            joc3_computer [ 0 ][ 0 ] = joc2_computer [ 0 ][ 0 ] ;
            joc2_computer [ 0 ][ 0 ] = joc_computer [ 0 ][ 0 ] ;
            joc_computer [ 0 ][ 0 ] = 6;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/3 + width/30-height/8 <= mouseX && mouseX <= width/3 + width/30+height/8 && height/3 - height/8 <= mouseY && mouseY <= height/3 + height/8 &&
             ( joc_computer [ 0 ][ 1 ] == 0 || joc_computer [ 0 ][ 1 ] == 1 || joc_computer [ 0 ][ 1 ] == 4|| joc_computer [ 0 ][ 1 ] == 5 || joc_computer [ 0 ][ 1 ] == 2 ) )  {
            joc3_computer [ 0 ][ 1 ] = joc2_computer [ 0 ][ 1 ] ;
            joc2_computer [ 0 ][ 1 ] = joc_computer [ 0 ][ 1 ] ;
            joc_computer [ 0 ][ 1 ] = 6;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/5-height/8 <= mouseX && mouseX <= width/5 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 0 ][ 2 ] == 0 || joc_computer [ 0 ][ 2 ] == 1 || joc_computer [ 0 ][ 2 ] == 4 || joc_computer [ 0 ][ 2 ] == 2 || joc_computer [ 0 ][ 2 ] == 5 ) ) {
            joc3_computer [ 0 ][ 2 ] = joc2_computer [ 0 ][ 2 ] ;
            joc2_computer [ 0 ][ 2 ] = joc_computer [ 0 ][ 2 ] ;
            joc_computer [ 0 ][ 2 ] = 6;
            if ( ( last_piece_x_computer != 0 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=0;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/3 - height/8 <= mouseY && mouseY <=  height/3 + height/8 &&
             ( joc_computer [ 1 ][ 0 ] == 0 || joc_computer [ 1 ][ 0 ] == 1 || joc_computer [ 1 ][ 0 ] == 4 || joc_computer [ 1 ][ 0 ] == 2 || joc_computer [ 1 ][ 0 ] == 5 ) ) {
            joc3_computer [ 1 ][ 0 ] = joc2_computer [ 1 ][ 0 ] ;
            joc2_computer [ 1 ][ 0 ] = joc_computer [ 1 ][ 0 ] ;
            joc_computer [ 1 ][ 0 ] = 6;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 1 ][ 1 ] == 0 || joc_computer [ 1 ][ 1 ] == 1 || joc_computer [ 1 ][ 1 ] == 4 || joc_computer [ 1 ][ 1 ] == 2 || joc_computer [ 1 ][ 1 ] == 5 ) )  {
            joc3_computer [ 1 ][ 1 ] = joc2_computer [ 1 ][ 1 ] ;
            joc2_computer [ 1 ][ 1 ] = joc_computer [ 1 ][ 1 ] ;
            joc_computer [ 1 ][ 1 ] = 6;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/3-height/8 <= mouseX && mouseX <= width/3 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
             ( joc_computer [ 1 ][ 2 ] == 0 || joc_computer [ 1 ][ 2 ] == 1 || joc_computer [ 1 ][ 2 ] == 4 || joc_computer [ 1 ][ 2 ] == 2 || joc_computer [ 1 ][ 2 ] == 5 ) ) {
            joc3_computer [ 1 ][ 2 ] = joc2_computer [ 1 ][ 2 ] ;
            joc2_computer [ 1 ][ 2 ] = joc_computer [ 1 ][ 2 ] ;
            joc_computer [ 1 ][ 2 ] = 6;
            if ( ( last_piece_x_computer != 1 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=1;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        if ( width/1.28-height/8 <= mouseX && mouseX <= width/1.28 +height/8 &&  height/2 - height/8 <= mouseY && mouseY <=  height/2 + height/8 &&
             ( joc_computer [ 2 ][ 0 ] == 0 || joc_computer [ 2 ][ 0 ] == 1 || joc_computer [ 2 ][ 0 ] == 4 || joc_computer [ 2 ][ 0 ] == 2 || joc_computer [ 2 ][ 0 ] == 5 ) ) {
            joc3_computer [ 2 ][ 0 ] = joc2_computer [ 2 ][ 0 ] ;
            joc2_computer [ 2 ][ 0 ] = joc_computer [ 2 ][ 0 ] ;
            joc_computer [ 2 ][ 0 ] = 6;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 0 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=0;
                used_computer=0;
            }
        }
        if ( width/1.5-height/8 <= mouseX && mouseX <= width/1.5 +height/8 &&  height/1.5 - height/8 <= mouseY && mouseY <=  height/1.5 + height/8 &&
             ( joc_computer [ 2 ][ 1 ] == 0 || joc_computer [ 2 ][ 1 ] == 1 || joc_computer [ 2 ][ 1 ] == 4 || joc_computer [ 2 ][ 1 ] == 2 || joc_computer [ 2 ][ 1 ] == 5 ) ) {
            joc3_computer [ 2 ][ 1 ] = joc2_computer [ 2 ][ 1 ] ;
            joc2_computer [ 2 ][ 1 ] = joc_computer [ 2 ][ 1 ] ;
            joc_computer [ 2 ][ 1 ] = 6;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 1 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=1;
                used_computer=0;
            }
        }
        if ( width/2-height/8 <= mouseX && mouseX <= width/2 +height/8 &&  height/1.25 - height/8 <= mouseY && mouseY <=  height/1.25 + height/8 &&
             ( joc_computer [ 2 ][ 2 ] == 0 ||joc_computer [ 2 ][ 2 ] == 1 || joc_computer [ 2 ][ 2 ] == 4 || joc_computer [ 2 ][ 2 ] == 2 || joc_computer [ 2 ][ 2 ] == 5 ) ) {
            joc3_computer [ 2 ][ 2 ] = joc2_computer [ 2 ][ 2 ] ;
            joc2_computer [ 2 ][ 2 ] = joc_computer [ 2 ][ 2 ] ;
            joc_computer [ 2 ][ 2 ] = 6;
            if ( ( last_piece_x_computer != 2 || last_piece_y_computer != 2 ) )  {
                ++ nr_mutari_computer ;
                LAST_X_computer=last_piece_x_computer;
                LAST_Y_computer=last_piece_y_computer;
                CURR_X_computer=2;
                CURR_Y_computer=2;
                used_computer=0;
            }
        }
        tine_computer=0;
    }
}

void cursorul_poarte_imaginea ( int x ){
                 if ( mousePressed && tine == 1 )  {
                       image(blue_piece1,mx - width/46, my-height/16, width/ 23, height/8 ); 
                    }
                    if ( mousePressed && tine == 2 )  {
                       image(blue_piece1,mx - width/46 * 1.3, my-height/16 * 1.3, width/ 23 * 1.3, height/8 * 1.3 ); 
                    }
                    if ( mousePressed && tine == 3 )  {
                       image(blue_piece1,mx - width/46 * 1.6, my-height/16 * 1.6, width/ 23 * 1.6, height/8 * 1.6 ); 
                    }
                    if ( mousePressed && tine == 4 )  {
                       image(red_piece1,mx - width/46, my-height/16, width/ 23, height/8 ); 
                    }
                    if ( mousePressed && tine == 5 )  {
                       image(red_piece1,mx - width/46* 1.3, my-height/16* 1.3, width/ 23* 1.3, height/8* 1.3 ); 
                    }
                    if ( mousePressed && tine == 6 )  {
                       image(red_piece1,mx - width/46* 1.6, my-height/16* 1.6, width/ 23* 1.6, height/8* 1.6 ); 
                    }
                     
}
void cursorul_poarte_imaginea_computer ( int x ){
                 if ( mousePressed && tine_computer == 1 )  {
                       image(blue_piece1,mx - width/46, my-height/16, width/ 23, height/8 ); 
                    }
                    if ( mousePressed && tine_computer == 2 )  {
                       image(blue_piece1,mx - width/46 * 1.3, my-height/16 * 1.3, width/ 23 * 1.3, height/8 * 1.3 ); 
                    }
                    if ( mousePressed && tine_computer == 3 )  {
                       image(blue_piece1,mx - width/46 * 1.6, my-height/16 * 1.6, width/ 23 * 1.6, height/8 * 1.6 ); 
                    }
                    if ( mousePressed && tine_computer == 4 )  {
                       image(red_piece1,mx - width/46, my-height/16, width/ 23, height/8 ); 
                    }
                    if ( mousePressed && tine_computer == 5 )  {
                       image(red_piece1,mx - width/46* 1.3, my-height/16* 1.3, width/ 23* 1.3, height/8* 1.3 ); 
                    }
                    if ( mousePressed && tine_computer == 6 )  {
                       image(red_piece1,mx - width/46* 1.6, my-height/16* 1.6, width/ 23* 1.6, height/8* 1.6 ); 
                    }
                     
}



void pune_piesele ( int x )   {
                if ( joc [ 0 ][ 0 ] == 1 )
                    image( blue_piece1 , width/2 - width/20+ width/30, height/8 , width/ 23 , height/8 );
                if ( joc [ 0 ][ 0 ] == 2 )
                    image( blue_piece1 , width/2-width/20+ width/30, height/9, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 0 ][ 0 ] == 3 )
                    image( blue_piece1 , width/2-width/20 + width/30, height/8 - height / 8 * 0.50 , width/ 23  * 1.6, height/8  * 1.6);
                if ( joc [ 0 ][ 0 ] == 4 )
                    image( red_piece1 , width/2 - width/20+ width/30, height/8 , width/ 23 , height/8 );
                if ( joc [ 0 ][ 0 ] == 5 )
                    image( red_piece1 , width/2-width/20+ width/30, height/9, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 0 ][ 0 ] == 6 )
                    image( red_piece1 , width/2-width/20 + width/30, height/8 - height / 8 * 0.50 , width/ 23  * 1.6, height/8  * 1.6);
                  
                if ( joc [ 0 ][ 1 ] == 1 )
                    image( blue_piece1 , width/3, height/3.3, width/ 23 , height/8 );
                if ( joc [ 0 ][ 1 ] == 2 )
                    image( blue_piece1 , width/3 , height/3.8, width/ 23* 1.3 , height/8* 1.3  );
                if ( joc [ 0 ][ 1 ] == 3 )
                    image( blue_piece1 , width/3.1, height/4.7,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc [ 0 ][ 1 ] == 4 )
                    image( red_piece1 , width/3, height/3.3, width/ 23 , height/8 );
                if ( joc [ 0 ][ 1 ] == 5 )
                    image( red_piece1 , width/3 , height/3.8, width/ 23* 1.3 , height/8* 1.3  );
                if ( joc [ 0 ][ 1 ] == 6 )
                    image( red_piece1 , width/3.1, height/4.7,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                if ( joc [ 0 ][ 2 ] == 1 )
                    image( blue_piece1 ,  width/5.2, height/2.4, width/ 23 , height/8 );
                if ( joc [ 0 ][ 2 ] == 2 )
                    image( blue_piece1 ,  width/5.8, height/2.5, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 0 ][ 2 ] == 3 )
                    image( blue_piece1 , width/6.5, height/2.8,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc [ 0 ][ 2 ] == 4 )
                    image( red_piece1 ,  width/5.2, height/2.4, width/ 23 , height/8 );
                if ( joc [ 0 ][ 2 ] == 5 )
                    image( red_piece1 ,  width/5.8, height/2.5, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 0 ][ 2 ] == 6 )
                    image( red_piece1 , width/6.5, height/2.8,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                    
                if ( joc [ 1 ][ 0 ] == 1 )
                    image( blue_piece1 ,  width/1.6, height/3.5, width/ 23 , height/8 );
                if ( joc [ 1 ][ 0 ] == 2 )
                    image( blue_piece1 ,  width/1.6, height/3.8, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 1 ][ 0 ] == 3 )
                    image( blue_piece1 , width/1.6, height/4.8,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc [ 1 ][ 0 ] == 4 )
                    image( red_piece1 ,  width/1.6, height/3.5, width/ 23 , height/8 );
                if ( joc [ 1 ][ 0 ] == 5 )
                    image( red_piece1 ,  width/1.6, height/3.8, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 1 ][ 0 ] == 6 )
                    image( red_piece1 , width/1.6, height/4.8,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                    
                if ( joc [ 1 ][ 1 ] == 1 )
                    image( blue_piece1 ,  width/2.1, height/2.2, width/ 23 , height/8 );
                if ( joc [ 1 ][ 1 ] == 2 )
                    image( blue_piece1 ,  width/2.1, height/2.33, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 1 ][ 1 ] == 3 )
                    image( blue_piece1 , width/2.15, height/2.6,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc [ 1 ][ 1 ] == 4 )
                    image( red_piece1 ,  width/2.1, height/2.2, width/ 23 , height/8 );
                if ( joc [ 1 ][ 1 ] == 5 )
                    image( red_piece1 ,  width/2.1, height/2.33, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 1 ][ 1 ] == 6 )
                    image( red_piece1 , width/2.15, height/2.6,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                if ( joc [ 1 ][ 2 ] == 1 )
                    image( blue_piece1 ,  width/3.1, height/1.7, width/ 23 , height/8 );
                if ( joc [ 1 ][ 2 ] == 2 )
                    image( blue_piece1 ,  width/3.2, height/1.7, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 1 ][ 2 ] == 3 )
                    image( blue_piece1 , width/3.3, height/1.76,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc [ 1 ][ 2 ] == 4 )
                    image( red_piece1 ,  width/3.1, height/1.7, width/ 23 , height/8 );
                if ( joc [ 1 ][ 2 ] == 5 )
                    image( red_piece1 ,  width/3.2, height/1.7, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 1 ][ 2 ] == 6 )
                    image( red_piece1 , width/3.3, height/1.76,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                    
                if ( joc [ 2 ][ 0 ] == 1 )
                    image( blue_piece1 ,  width/1.28, height/2.3, width/ 23 , height/8 );
                if ( joc [ 2 ][ 0 ] == 2 )
                    image( blue_piece1 , width/1.27, height/2.5, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 2 ][ 0 ] == 3 )
                    image( blue_piece1 , width/1.26, height/2.6,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc [ 2 ][ 0 ] == 4 )
                    image( red_piece1 ,  width/1.28, height/2.3,  width/ 23 , height/8 );
                if ( joc [ 2 ][ 0 ] == 5 )
                    image( red_piece1 ,  width/1.27, height/2.5, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 2 ][ 0 ] == 6 )
                    image( red_piece1 , width/1.26, height/2.6,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                if ( joc [ 2 ][ 1 ] == 1 )
                    image( blue_piece1 ,  width/1.55, height/1.65, width/ 23 , height/8 );
                if ( joc [ 2 ][ 1 ] == 2 )
                    image( blue_piece1 , width/1.58, height/1.7, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 2 ][ 1 ] == 3 )
                    image( blue_piece1 , width/1.58, height/1.9,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc [ 2 ][ 1 ] == 4 )
                    image( red_piece1 ,  width/1.55, height/1.65, width/ 23 , height/8 );
                if ( joc [ 2 ][ 1 ] == 5 )
                    image( red_piece1 ,  width/1.58, height/1.7, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 2 ][ 1 ] == 6 )
                    image( red_piece1 , width/1.58, height/1.9,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                if ( joc [ 2 ][ 2 ] == 1 )
                    image( blue_piece1 ,  width/2.1, height/1.3, width/ 23 , height/8 );
                if ( joc [ 2 ][ 2 ] == 2 )
                    image( blue_piece1 , width/2.12, height/1.35, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 2 ][ 2 ] == 3 )
                    image( blue_piece1 , width/2.15, height/1.36,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc [ 2 ][ 2 ] == 4 )
                    image( red_piece1 ,  width/2.1, height/1.3, width/ 23 , height/8 );
                if ( joc [ 2 ][ 2 ] == 5 )
                    image( red_piece1 ,   width/2.12, height/1.35, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc [ 2 ][ 2 ] == 6 )
                    image( red_piece1 , width/2.15, height/1.36,  width/ 23  * 1.6, height/8  * 1.6 );


}
void pune_piesele_computer ( int x )   {
                if ( joc_computer [ 0 ][ 0 ] == 1 )
                    image( blue_piece1 , width/2 - width/20+ width/30, height/8 , width/ 23 , height/8 );
                if ( joc_computer [ 0 ][ 0 ] == 2 )
                    image( blue_piece1 , width/2-width/20+ width/30, height/9, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 0 ][ 0 ] == 3 )
                    image( blue_piece1 , width/2-width/20 + width/30, height/8 - height / 8 * 0.50 , width/ 23  * 1.6, height/8  * 1.6);
                if ( joc_computer [ 0 ][ 0 ] == 4 )
                    image( red_piece1 , width/2 - width/20+ width/30, height/8 , width/ 23 , height/8 );
                if ( joc_computer [ 0 ][ 0 ] == 5 )
                    image( red_piece1 , width/2-width/20+ width/30, height/9, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 0 ][ 0 ] == 6 )
                    image( red_piece1 , width/2-width/20 + width/30, height/8 - height / 8 * 0.50 , width/ 23  * 1.6, height/8  * 1.6);
                  
                if ( joc_computer [ 0 ][ 1 ] == 1 )
                    image( blue_piece1 , width/3, height/3.3, width/ 23 , height/8 );
                if ( joc_computer [ 0 ][ 1 ] == 2 )
                    image( blue_piece1 , width/3 , height/3.8, width/ 23* 1.3 , height/8* 1.3  );
                if ( joc_computer [ 0 ][ 1 ] == 3 )
                    image( blue_piece1 , width/3.1, height/4.7,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc_computer [ 0 ][ 1 ] == 4 )
                    image( red_piece1 , width/3, height/3.3, width/ 23 , height/8 );
                if ( joc_computer [ 0 ][ 1 ] == 5 )
                    image( red_piece1 , width/3 , height/3.8, width/ 23* 1.3 , height/8* 1.3  );
                if ( joc_computer [ 0 ][ 1 ] == 6 )
                    image( red_piece1 , width/3.1, height/4.7,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                if ( joc_computer [ 0 ][ 2 ] == 1 )
                    image( blue_piece1 ,  width/5.2, height/2.4, width/ 23 , height/8 );
                if ( joc_computer [ 0 ][ 2 ] == 2 )
                    image( blue_piece1 ,  width/5.8, height/2.5, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 0 ][ 2 ] == 3 )
                    image( blue_piece1 , width/6.5, height/2.8,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc_computer [ 0 ][ 2 ] == 4 )
                    image( red_piece1 ,  width/5.2, height/2.4, width/ 23 , height/8 );
                if ( joc_computer [ 0 ][ 2 ] == 5 )
                    image( red_piece1 ,  width/5.8, height/2.5, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 0 ][ 2 ] == 6 )
                    image( red_piece1 , width/6.5, height/2.8,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                    
                if ( joc_computer [ 1 ][ 0 ] == 1 )
                    image( blue_piece1 ,  width/1.6, height/3.5, width/ 23 , height/8 );
                if ( joc_computer [ 1 ][ 0 ] == 2 )
                    image( blue_piece1 ,  width/1.6, height/3.8, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 1 ][ 0 ] == 3 )
                    image( blue_piece1 , width/1.6, height/4.8,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc_computer [ 1 ][ 0 ] == 4 )
                    image( red_piece1 ,  width/1.6, height/3.5, width/ 23 , height/8 );
                if ( joc_computer [ 1 ][ 0 ] == 5 )
                    image( red_piece1 ,  width/1.6, height/3.8, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 1 ][ 0 ] == 6 )
                    image( red_piece1 , width/1.6, height/4.8,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                    
                if ( joc_computer [ 1 ][ 1 ] == 1 )
                    image( blue_piece1 ,  width/2.1, height/2.2, width/ 23 , height/8 );
                if ( joc_computer [ 1 ][ 1 ] == 2 )
                    image( blue_piece1 ,  width/2.1, height/2.33, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 1 ][ 1 ] == 3 )
                    image( blue_piece1 , width/2.15, height/2.6,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc_computer [ 1 ][ 1 ] == 4 )
                    image( red_piece1 ,  width/2.1, height/2.2, width/ 23 , height/8 );
                if ( joc_computer [ 1 ][ 1 ] == 5 )
                    image( red_piece1 ,  width/2.1, height/2.33, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 1 ][ 1 ] == 6 )
                    image( red_piece1 , width/2.15, height/2.6,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                if ( joc_computer [ 1 ][ 2 ] == 1 )
                    image( blue_piece1 ,  width/3.1, height/1.7, width/ 23 , height/8 );
                if ( joc_computer [ 1 ][ 2 ] == 2 )
                    image( blue_piece1 ,  width/3.2, height/1.7, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 1 ][ 2 ] == 3 )
                    image( blue_piece1 , width/3.3, height/1.76,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc_computer [ 1 ][ 2 ] == 4 )
                    image( red_piece1 ,  width/3.1, height/1.7, width/ 23 , height/8 );
                if ( joc_computer [ 1 ][ 2 ] == 5 )
                    image( red_piece1 ,  width/3.2, height/1.7, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 1 ][ 2 ] == 6 )
                    image( red_piece1 , width/3.3, height/1.76,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                    
                if ( joc_computer [ 2 ][ 0 ] == 1 )
                    image( blue_piece1 ,  width/1.28, height/2.3, width/ 23 , height/8 );
                if ( joc_computer [ 2 ][ 0 ] == 2 )
                    image( blue_piece1 , width/1.27, height/2.5, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 2 ][ 0 ] == 3 )
                    image( blue_piece1 , width/1.26, height/2.6,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc_computer [ 2 ][ 0 ] == 4 )
                    image( red_piece1 ,  width/1.28, height/2.3,  width/ 23 , height/8 );
                if ( joc_computer [ 2 ][ 0 ] == 5 )
                    image( red_piece1 ,  width/1.27, height/2.5, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 2 ][ 0 ] == 6 )
                    image( red_piece1 , width/1.26, height/2.6,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                if ( joc_computer [ 2 ][ 1 ] == 1 )
                    image( blue_piece1 ,  width/1.55, height/1.65, width/ 23 , height/8 );
                if ( joc_computer [ 2 ][ 1 ] == 2 )
                    image( blue_piece1 , width/1.58, height/1.7, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 2 ][ 1 ] == 3 )
                    image( blue_piece1 , width/1.58, height/1.9,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc_computer [ 2 ][ 1 ] == 4 )
                    image( red_piece1 ,  width/1.55, height/1.65, width/ 23 , height/8 );
                if ( joc_computer [ 2 ][ 1 ] == 5 )
                    image( red_piece1 ,  width/1.58, height/1.7, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 2 ][ 1 ] == 6 )
                    image( red_piece1 , width/1.58, height/1.9,  width/ 23  * 1.6, height/8  * 1.6 );
                    
                if ( joc_computer [ 2 ][ 2 ] == 1 )
                    image( blue_piece1 ,  width/2.1, height/1.3, width/ 23 , height/8 );
                if ( joc_computer [ 2 ][ 2 ] == 2 )
                    image( blue_piece1 , width/2.12, height/1.35, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 2 ][ 2 ] == 3 )
                    image( blue_piece1 , width/2.15, height/1.36,  width/ 23  * 1.6, height/8  * 1.6 );
                if ( joc_computer [ 2 ][ 2 ] == 4 )
                    image( red_piece1 ,  width/2.1, height/1.3, width/ 23 , height/8 );
                if ( joc_computer [ 2 ][ 2 ] == 5 )
                    image( red_piece1 ,   width/2.12, height/1.35, width/ 23* 1.3 , height/8* 1.3 );
                if ( joc_computer [ 2 ][ 2 ] == 6 )
                    image( red_piece1 , width/2.15, height/1.36,  width/ 23  * 1.6, height/8  * 1.6 );


}






void pune_imagini_in_play ( int x )  {
            image( tabla , width / 2 - width / 2.6 , height /8 , width/ 1.3  , height/1.3 );

              image( blue_piece1 , width/30 , height/10, width/ 23 , height/8 );
              
              if ( nr_mutari % 2 == 0 )
                image( turn_red , width/2 , height - height/9, width/ 6 , height/13 );
              else
                image( turn_blue , width/4 , height - height/9, width/ 6 , height/13 );
              
              if ( nr_of_1 == 2)  {
              image( blue_2 , width/23 , height/10 + height/7, width/ 30 , height/25 );
              }
              if ( nr_of_1 == 1)  {
              image( blue_1 , width/23 , height/10 + height/7, width/ 30 , height/25 );
              }
              if ( nr_of_1 == 0)  {
              image( blue_0 , width/23 , height/10 + height/7, width/ 30 , height/25 );
              }
              
              image( blue_piece1 , width/30 , height/10*3, width/ 23 * 1.3 , height/8 * 1.3 );
              
              if ( nr_of_2 == 2)  {
              image( blue_2 , width/21 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              if ( nr_of_2 == 1)  {
              image( blue_1 , width/21 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              if ( nr_of_2 == 0)  {
              image( blue_0 , width/21 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              
              image( blue_piece1 , width/30 , height/10*5.5, width/ 23 * 1.6 , height/8 * 1.6 );
              
              if ( nr_of_3 == 2)  {
              image( blue_2 , width/20 , height/10 *5.5+ height/7*1.6, width/ 30 , height/25 );
              }
              if ( nr_of_3 == 1)  {
              image( blue_1 , width/20 , height/10 *5.5+ height/7*1.6, width/ 30 , height/25 );
              }
              if ( nr_of_3 == 0)  {
              image( blue_0 , width/20 , height/10 *5.5+ height/7*1.6, width/ 30 , height/25 );
              }
              image( red_piece1 , width - width/30 - width/ 23 + width/80 , height/10, width/ 23 , height/8 );
              
              if ( nr_of_4 == 2)  {
              image( red_2 , width - width/30 - width/ 23 + width/80 , height/10 + height/7, width/ 30 , height/25 );
              }
              if ( nr_of_4 == 1)  {
              image( red_1 , width - width/30 - width/ 23 + width/80 , height/10 + height/7, width/ 30 , height/25 );
              }
              if ( nr_of_4 == 0)  {
              image( red_0 , width - width/30 - width/ 23 + width/80 , height/10 + height/7, width/ 30 , height/25 );
              }
              
              image( red_piece1 , width - width/30 - width/ 23 * 1.3 + width/80 , height/10*3, width/ 23 * 1.3 , height/8 * 1.3 );
              
              if ( nr_of_5 == 2)  {
              image( red_2 , width - width/30 - width/ 29 * 1.3 + width/80 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              if ( nr_of_5 == 1)  {
              image( red_1 , width - width/30 - width/ 29 * 1.3 + width/80 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              if ( nr_of_5 == 0)  {
              image( red_0 , width - width/30 - width/ 29 * 1.3 + width/80 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              
              image( red_piece1 , width - width/30 - width/ 23 * 1.6 + width/80 , height/10*5.5, width/ 23 * 1.6 , height/8 * 1.6 );
              
              if ( nr_of_6 == 2)  {
              image( red_2 , width - width/30 - width/ 32 * 1.6 + width/80 , height/10*5.5 + height/7*1.6, width/ 30 , height/25 );
              }
              if ( nr_of_6 == 1)  {
              image( red_1 , width - width/30 - width/ 32 * 1.6 + width/80 , height/10*5.5 + height/7*1.6, width/ 30 , height/25 );
              }
              if ( nr_of_6 == 0)  {
              image( red_0 , width - width/30 - width/ 32 * 1.6 + width/80 , height/10*5.5 + height/7*1.6, width/ 30 , height/25 );
              }

}

void setari ( int x )  {
                         BackGround(1);
                             
                          
                        //  image(blue_piece1, location_settigs.x+ width/10*2,location_settings.y-height/10 - height /16 * 1.6, width/ 30 * 1.6 , height/8 * 1.6 );
                          image( set_logo , width/2-width/8+width/30-width/45 , 0 ,width/4.8,height/12 );
                          if( mouseX>=width/30 && mouseX<=width/30+width/15 && mouseY<=height/80+height/10 && mouseY>=height/80 && mousePressed ){
                               sw=0;
                         }
                         image( back , width/25 , height/50 , width/15 , height/15 );
                         
                        if(bk_color==1){
                      image( music_white , width/2+width/3.5+width/12,height/2+height/3.5 , width/10 , height/10 );
    }
                else{
    
                    image( music_on , width/2+width/3.5+width/12,height/2+height/3.5 , width/10 , height/10 );
                }
                         if( music==0 )
                         {
                           image( music_off , width/2+width/3.5+width/15 , height/2+height/3.5-height/48 , width/7 , height/7 );
                                    //rect(width/2+width/3.5+width/15,height/2+height/3.5-height/48,width/7,height/7);
                         }
                         image( sel_piece , width/2-width/8,height/10 , width/4 ,height/5);
                       
                        if(mouseX>=width/2-width/8 && mouseX<=width/2-width/10+width/4.5 && mouseY<=height/7+height/16 && mouseY>=height/6 && mousePressed)// select piece 
                        {    
                               show_pieces=1;
                              
                             }
                        //rect(width/2-width/4.3,height/6,width/10,height/16); //prima piesa
                        if(show_pieces==1)
                        {
                    //      rect(width/2-width/4.3+width/45,height/9,width/16,height/8);
                          image(purple,width/2-width/4.3+width/45,height/9,width/16,height/8);
                     //     rect(width/2-width/4.3+width/45,height/4,width/16,height/8);
                          image(blue_piece1_copy,width/2-width/4.3+width/45,height/4,width/16,height/8);
                    //      rect(width/2+width/8,height/9,width/16,height/8);
                          image(yellow,width/2+width/8,height/9,width/18,height/9);
                   //       rect(width/2+width/8,height/4,width/16,height/8);
                          image(red_piece1_copy,width/2+width/8,height/4,width/17,height/8);
                          
                        }
                        
                        temp = 0;
                                if ( mouseX>=width/2-width/8 && mouseX<=width/2-width/10+width/4.5 && mouseY<=height/7+height/16 && mouseY>=height/6 )  {
                                    show_pieces = 1;
                                    temp = 1 ;
                                }  
                               
                                 if ( show_pieces == 1 && width/2-width/4.3+width/45 <= mouseX && mouseX <= width/2-width/8 && height/9 <= mouseY && mouseY <= height/4 + height/8 )  {
                                    show_pieces = 1 ;
                                    temp = 1 ;
                                }
                                 if ( show_pieces == 1 && width/2-width/10+width/4.5  <= mouseX && mouseX <= width/2+width/8 + width/18 && height/9 <= mouseY && mouseY <= height/4 + height/8 )  {
                                    show_pieces = 1 ;
                                    temp = 1 ;
                                }
                                show_pieces = temp;
                        
                        
                        if(mouseX>=width/2-width/4.3+width/45 && mouseX<=width/2-width/4.3+width/15 && mouseY<=height/9+height/8 && mouseY>=height/9.5 && mousePressed)
                        {
                          if(show_pieces==1){
                            changed_purple=1;
                            show_pieces=0;
                           blue_piece1=purple;
                          }
                        }
                        if(mouseX>=width/2-width/4.3+width/45 && mouseX<=width/2-width/4.3+width/45+width/16 && mouseY<=height/4+height/8 && mouseY>=height/10 && mousePressed)
                        {
                          if(show_pieces==1){
                          changed_purple=0;
                          show_pieces=0;
                           blue_piece1=blue_piece1_copy;
                          }
                        } 
                       
                        if(mouseX>=width/2+width/8 && mouseX<=width/2+width/8+width/16 && mouseY<=height/9+height/8 && mouseY>=height/9.5 && mousePressed)
                        {
                          if(show_pieces==1)
                          {
                            changed_yellow=1;
                            show_pieces=0;
                            red_piece1=yellow;
                        }
                        } 
                       if(mouseX>=width/2+width/8 && mouseX<=width/2+width/8+width/16 && mouseY<=height/4+height/8 && mouseY>=height/10 && mousePressed)
                       {
                         if(show_pieces==1)
                         {
                           changed_yellow=0;
                           show_pieces=0;
                           red_piece1=red_piece1_copy;
                         }
                       }
                             
                         
                           if(mouseX>=width/2+width/3.5+width/11 && mouseX<=width/2+width/3.5+width/15+width/10 && mouseY<=height/2+height/3.5-height/7+height/20+height/10 && mouseY>=height/3+height/2.8 && mousePressed)
                           {
                             music = 1;
                             music_turn_on();
                            
                           }
                         if(music==0){  
                           image(button_on , width/2+width/3.5+width/11 , height/2+height/3.5-height/7+height/23 , width/12,height/12 );
                       }
                           if(mouseX>=width/2+width/3.5+width/11 && mouseX<= width/2+width/3.5+width/11+width/10 && mouseY<=height/2+height/3.5+height/50+height/15+height/50+height/10 && mouseY>=height/3+height/2.8+height/5 && mousePressed)
                           {
                             music = 0;
                             music_turn_off();
                             
                           }
                           if(music==1){
                           image( button_off , width/2+width/3.5+width/11 , height/2+height/3.5+height/50+height/15+height/50 , width/9, height/9 );
                           }
                             image( bk , width/2-width/10-width/70 , height/6 + height/15 ,width/5 , height/4 );
                          //   rect(width/2-width/10-width/70 ,height/3 ,width/5 , height/12 );
                            temp2 = 0;
                            if( mouseX>=width/2-width/10-width/70 && mouseX<=width/2-width/10-width/70+width/5 && mouseY<=height/3 + height/15 && mouseY>=height/3 )
                            {
                                 temp2 = 1;
                            }  
                           
                            if( show_list == 1 && mouseX>=width/2-width/10-width/70+width/5 && mouseX<= width/1.9 + width/7 && mouseY<=height/3 + height/15  && mouseY>=height/3  )
                            {
                              if(  mousePressed )  {
                                 bk_color=0;
                                 sw=2;
                             }
                             temp2 = 1;
                               
                            }
                       
                           if( show_list == 1 && mouseX>=  width/1.9 + width/7 && mouseX<=  width/1.9 + width/3.5  && mouseY<=height/3+height/12 && mouseY>=height/3 ){
                             if(  mousePressed )  {
                                 bk_color=1;
                                 sw=2;
                             }
                             temp2 = 1;
                           }
                           if( show_list == 1 && mouseX>=width/2-width/10-width/70- width/7 && mouseX<= width/2-width/10-width/70- width/7 + width/7 && mouseY<=height/3 + height/15 && mouseY>=height/3){
                             if(  mousePressed )  {
                                 bk_color=2;
                                 sw=2;
                             }
                             temp2 = 1;
                           }
                           if( show_list == 1 && mouseX>=width/5 && mouseX<= width/5 + width/10 && mouseY<=height/3 + height/15 && mouseY>=height/3){
                             if(  mousePressed )  {
                                 bk_color=3;
                                 sw=2;
                             }
                             temp2 = 1;
                           }
                           show_list = temp2;
                            if(show_list==1)
                            {
                           //   rect(width/2+width/10,height/3, width/10,height/12);
                           //   rect(width/2+width/10+width/10,height/3,width/10,height/12);
                           //   rect(width/2+width/10+width/10+width/10,height/3,width/10,height/12);
                              image(white,width/1.9,height/3-height/15, width/5,height/4);
                              image(black,width/1.6,height/3-height/16.5,width/5,height/4);
                              image(green,width/2-width/10-width/70- width/7,height/3-height/15,width/5,height/4);
                              image(pink,width/5,height/2.9,width/10,height/15);
                            }
                            //rect(width/2-width/10-width/70,height/3.8,width/6,height/16);
                            
                            
}
void pune_imagini_in_play_computer ( int x )  {
            image( tabla , width / 2 - width / 2.6 , height /8 , width/ 1.3  , height/1.3 );

              image( blue_piece1 , width/30 , height/10, width/ 23 , height/8 );
              
              if ( nr_mutari_computer % 2 == 0 )
                image( turn_red , width/2 , height - height/9, width/ 6 , height/13 );
              else
                image( turn_blue , width/4 , height - height/9, width/ 6 , height/13 );
              
              if ( nr_of_1_computer == 2)  {
              image( blue_2 , width/23 , height/10 + height/7, width/ 30 , height/25 );
              }
              if ( nr_of_1_computer == 1)  {
              image( blue_1 , width/23 , height/10 + height/7, width/ 30 , height/25 );
              }
              if ( nr_of_1_computer == 0)  {
              image( blue_0 , width/23 , height/10 + height/7, width/ 30 , height/25 );
              }
              
              image( blue_piece1 , width/30 , height/10*3, width/ 23 * 1.3 , height/8 * 1.3 );
              
              if ( nr_of_2_computer == 2)  {
              image( blue_2 , width/21 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              if ( nr_of_2_computer == 1)  {
              image( blue_1 , width/21 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              if ( nr_of_2_computer == 0)  {
              image( blue_0 , width/21 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              
              image( blue_piece1 , width/30 , height/10*5.5, width/ 23 * 1.6 , height/8 * 1.6 );
              
              if ( nr_of_3_computer == 2)  {
              image( blue_2 , width/20 , height/10 *5.5+ height/7*1.6, width/ 30 , height/25 );
              }
              if ( nr_of_3_computer == 1)  {
              image( blue_1 , width/20 , height/10 *5.5+ height/7*1.6, width/ 30 , height/25 );
              }
              if ( nr_of_3_computer == 0)  {
              image( blue_0 , width/20 , height/10 *5.5+ height/7*1.6, width/ 30 , height/25 );
              }
              image( red_piece1 , width - width/30 - width/ 23 + width/80 , height/10, width/ 23 , height/8 );
              
              if ( nr_of_4_computer == 2)  {
              image( red_2 , width - width/30 - width/ 23 + width/80 , height/10 + height/7, width/ 30 , height/25 );
              }
              if ( nr_of_4_computer == 1)  {
              image( red_1 , width - width/30 - width/ 23 + width/80 , height/10 + height/7, width/ 30 , height/25 );
              }
              if ( nr_of_4_computer == 0)  {
              image( red_0 , width - width/30 - width/ 23 + width/80 , height/10 + height/7, width/ 30 , height/25 );
              }
              
              image( red_piece1 , width - width/30 - width/ 23 * 1.3 + width/80 , height/10*3, width/ 23 * 1.3 , height/8 * 1.3 );
              
              if ( nr_of_5_computer == 2)  {
              image( red_2 , width - width/30 - width/ 29 * 1.3 + width/80 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              if ( nr_of_5_computer == 1)  {
              image( red_1 , width - width/30 - width/ 29 * 1.3 + width/80 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              if ( nr_of_5_computer == 0)  {
              image( red_0 , width - width/30 - width/ 29 * 1.3 + width/80 , height/10*3 + height/7*1.3, width/ 30 , height/25 );
              }
              
              image( red_piece1 , width - width/30 - width/ 23 * 1.6 + width/80 , height/10*5.5, width/ 23 * 1.6 , height/8 * 1.6 );
              
              if ( nr_of_6_computer == 2)  {
              image( red_2 , width - width/30 - width/ 32 * 1.6 + width/80 , height/10*5.5 + height/7*1.6, width/ 30 , height/25 );
              }
              if ( nr_of_6_computer == 1)  {
              image( red_1 , width - width/30 - width/ 32 * 1.6 + width/80 , height/10*5.5 + height/7*1.6, width/ 30 , height/25 );
              }
              if ( nr_of_6_computer == 0)  {
              image( red_0 , width - width/30 - width/ 32 * 1.6 + width/80 , height/10*5.5 + height/7*1.6, width/ 30 , height/25 );
              }

}
void verifica_castigator ( int x ){
            if ( !mousePressed && tine == 0 )  {
              
              if ( last_piece_x == 0 && last_piece_y == 0 )  {
              
                  if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 0 ][ 1 ] ] && culoare [ joc [ 0 ][ 1 ] ] == culoare [ joc [ 0 ][ 2 ] ] && culoare [ joc [ 0 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 1 ][ 0 ] ] && culoare [ joc [ 1 ][ 0 ] ] == culoare [ joc [ 2 ][ 0 ] ] && culoare [ joc [ 2 ][ 0 ] ] != -1  )  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                   if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
             }
             
                            
             if ( last_piece_x == 0 && last_piece_y == 1 )  {
               if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 0 ][ 1 ] ] && culoare [ joc [ 0 ][ 1 ] ] == culoare [ joc [ 0 ][ 2 ] ] && culoare [ joc [ 0 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                 if ( tine == 0 && culoare [ joc [ 0 ][ 1 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 1 ] ] && culoare [ joc [ 2 ][ 1 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 1 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
             }
                
            if ( last_piece_x == 0 && last_piece_y == 2 )  {
              
              if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 0 ][ 1 ] ] && culoare [ joc [ 0 ][ 1 ] ] == culoare [ joc [ 0 ][ 2 ] ] && culoare [ joc [ 0 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
               }
               if ( tine == 0 && culoare [ joc [ 0 ][ 2 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 0 ] ] && culoare [ joc [ 2 ][ 0 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 2 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                }
                if ( tine == 0 && culoare [ joc [ 0 ][ 2 ] ] == culoare [ joc [ 1 ][ 2 ] ] && culoare [ joc [ 1 ][ 2 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc [ 0 ][ 2 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  
            }
            
            if ( last_piece_x == 1 && last_piece_y == 0 )  {
              
              if ( tine == 0 && culoare [ joc [ 1 ][ 0 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 1 ][ 2 ] ] && culoare [ joc [ 1 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 1 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 1 ][ 0 ] ] && culoare [ joc [ 1 ][ 0 ] ] == culoare [ joc [ 2 ][ 0 ] ] && culoare [ joc [ 2 ][ 0 ] ] != -1  )  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }      
            }  
            
            if ( last_piece_x == 1 && last_piece_y == 1 )  {
              if ( tine == 0 && culoare [ joc [ 1 ][ 0 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 1 ][ 2 ] ] && culoare [ joc [ 1 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 1 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 0 ][ 1 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 1 ] ] && culoare [ joc [ 2 ][ 1 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 1 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                   if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 0 ][ 2 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 0 ] ] && culoare [ joc [ 2 ][ 0 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 2 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
              }
              
                if ( last_piece_x == 1 && last_piece_y == 2 )  {
              
                  
                  if ( tine == 0 && culoare [ joc [ 1 ][ 0 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 1 ][ 2 ] ] && culoare [ joc [ 1 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 1 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  
                  if ( tine == 0 && culoare [ joc [ 0 ][ 2 ] ] == culoare [ joc [ 1 ][ 2 ] ] && culoare [ joc [ 1 ][ 2 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc [ 0 ][ 2 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                }
                if ( last_piece_x == 2 && last_piece_y == 0 )  {
                  if ( tine == 0 && culoare [ joc [ 2 ][ 0 ] ] == culoare [ joc [ 2 ][ 1 ] ] && culoare [ joc [ 2 ][ 1 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 2 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 1 ][ 0 ] ] && culoare [ joc [ 1 ][ 0 ] ] == culoare [ joc [ 2 ][ 0 ] ] && culoare [ joc [ 2 ][ 0 ] ] != -1  )  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                   if ( tine == 0 && culoare [ joc [ 0 ][ 2 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 0 ] ] && culoare [ joc [ 2 ][ 0 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 2 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }  
                }
                
               if ( last_piece_x == 2 && last_piece_y == 1 )  {

                if ( tine == 0 && culoare [ joc [ 0 ][ 1 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 1 ] ] && culoare [ joc [ 2 ][ 1 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 1 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  
                  if ( tine == 0 && culoare [ joc [ 2 ][ 0 ] ] == culoare [ joc [ 2 ][ 1 ] ] && culoare [ joc [ 2 ][ 1 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 2 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }  
            }  
               if ( last_piece_x == 2 && last_piece_y == 2 )  {
                   if ( tine == 0 && culoare [ joc [ 2 ][ 0 ] ] == culoare [ joc [ 2 ][ 1 ] ] && culoare [ joc [ 2 ][ 1 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 2 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 0 ][ 2 ] ] == culoare [ joc [ 1 ][ 2 ] ] && culoare [ joc [ 1 ][ 2 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc [ 0 ][ 2 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
               }
                
                  if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 0 ][ 1 ] ] && culoare [ joc [ 0 ][ 1 ] ] == culoare [ joc [ 0 ][ 2 ] ] && culoare [ joc [ 0 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 1 ][ 0 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 1 ][ 2 ] ] && culoare [ joc [ 1 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 1 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  } //
                  if ( tine == 0 && culoare [ joc [ 2 ][ 0 ] ] == culoare [ joc [ 2 ][ 1 ] ] && culoare [ joc [ 2 ][ 1 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 2 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 1 ][ 0 ] ] && culoare [ joc [ 1 ][ 0 ] ] == culoare [ joc [ 2 ][ 0 ] ] && culoare [ joc [ 2 ][ 0 ] ] != -1  )  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 0 ][ 1 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 1 ] ] && culoare [ joc [ 2 ][ 1 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 1 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }//
                  if ( tine == 0 && culoare [ joc [ 0 ][ 2 ] ] == culoare [ joc [ 1 ][ 2 ] ] && culoare [ joc [ 1 ][ 2 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc [ 0 ][ 2 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 0 ][ 0 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 2 ] ] && culoare [ joc [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 0 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
                  if ( tine == 0 && culoare [ joc [ 0 ][ 2 ] ] == culoare [ joc [ 1 ][ 1 ] ] && culoare [ joc [ 1 ][ 1 ] ] == culoare [ joc [ 2 ][ 0 ] ] && culoare [ joc [ 2 ][ 0 ] ] != -1 )  {
                     if ( culoare [ joc [ 0 ][ 2 ] ] == 1 )  {
                         winner = 1 ;
                     }  else    {
                         winner = 2;
                     }
                    tine = -1;
                  }
              } 
}



void verifica_castigator_computer ( int x ){
            if ( !mousePressed && tine_computer == 0 )  {
              
              if ( last_piece_x_computer == 0 && last_piece_y_computer == 0 )  {
              
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 0 ][ 1 ] ] && culoare [ joc_computer [ 0 ][ 1 ] ] == culoare [ joc_computer [ 0 ][ 2 ] ] && culoare [ joc_computer [ 0 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 0 ] ] && culoare [ joc_computer [ 1 ][ 0 ] ] == culoare [ joc_computer [ 2 ][ 0 ] ] && culoare [ joc_computer [ 2 ][ 0 ] ] != -1  )  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                   if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
             }
             
                            
             if ( last_piece_x_computer == 0 && last_piece_y_computer == 1 )  {
               if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 0 ][ 1 ] ] && culoare [ joc_computer [ 0 ][ 1 ] ] == culoare [ joc_computer [ 0 ][ 2 ] ] && culoare [ joc_computer [ 0 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                 if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 1 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 1 ] ] && culoare [ joc_computer [ 2 ][ 1 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 1 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
             }
                
            if ( last_piece_x_computer == 0 && last_piece_y_computer == 2 )  {
              
              if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 0 ][ 1 ] ] && culoare [ joc_computer [ 0 ][ 1 ] ] == culoare [ joc_computer [ 0 ][ 2 ] ] && culoare [ joc_computer [ 0 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
               }
               if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 2 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 0 ] ] && culoare [ joc_computer [ 2 ][ 0 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                }
                if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 2 ] ] == culoare [ joc_computer [ 1 ][ 2 ] ] && culoare [ joc_computer [ 1 ][ 2 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  
            }
            
            if ( last_piece_x_computer == 1 && last_piece_y_computer == 0 )  {
              
              if ( tine_computer == 0 && culoare [ joc_computer [ 1 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 1 ][ 2 ] ] && culoare [ joc_computer [ 1 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 1 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 0 ] ] && culoare [ joc_computer [ 1 ][ 0 ] ] == culoare [ joc_computer [ 2 ][ 0 ] ] && culoare [ joc_computer [ 2 ][ 0 ] ] != -1  )  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }      
            }  
            
            if ( last_piece_x_computer == 1 && last_piece_y_computer == 1 )  {
              if ( tine_computer == 0 && culoare [ joc_computer [ 1 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 1 ][ 2 ] ] && culoare [ joc_computer [ 1 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 1 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 1 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 1 ] ] && culoare [ joc_computer [ 2 ][ 1 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 1 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                   if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 2 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 0 ] ] && culoare [ joc_computer [ 2 ][ 0 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
              }
              
                if ( last_piece_x_computer == 1 && last_piece_y_computer == 2 )  {
              
                  
                  if ( tine_computer == 0 && culoare [ joc_computer [ 1 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 1 ][ 2 ] ] && culoare [ joc_computer [ 1 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 1 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 2 ] ] == culoare [ joc_computer [ 1 ][ 2 ] ] && culoare [ joc_computer [ 1 ][ 2 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                }
                if ( last_piece_x_computer == 2 && last_piece_y_computer == 0 )  {
                  if ( tine_computer == 0 && culoare [ joc_computer [ 2 ][ 0 ] ] == culoare [ joc_computer [ 2 ][ 1 ] ] && culoare [ joc_computer [ 2 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 2 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 0 ] ] && culoare [ joc_computer [ 1 ][ 0 ] ] == culoare [ joc_computer [ 2 ][ 0 ] ] && culoare [ joc_computer [ 2 ][ 0 ] ] != -1  )  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                   if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 2 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 0 ] ] && culoare [ joc_computer [ 2 ][ 0 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }  
                }
                
               if ( last_piece_x_computer == 2 && last_piece_y_computer == 1 )  {

                if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 1 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 1 ] ] && culoare [ joc_computer [ 2 ][ 1 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 1 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  
                  if ( tine_computer == 0 && culoare [ joc_computer [ 2 ][ 0 ] ] == culoare [ joc_computer [ 2 ][ 1 ] ] && culoare [ joc_computer [ 2 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 2 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }  
            }  
               if ( last_piece_x_computer == 2 && last_piece_y_computer == 2 )  {
                   if ( tine_computer == 0 && culoare [ joc_computer [ 2 ][ 0 ] ] == culoare [ joc_computer [ 2 ][ 1 ] ] && culoare [ joc_computer [ 2 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 2 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 2 ] ] == culoare [ joc_computer [ 1 ][ 2 ] ] && culoare [ joc_computer [ 1 ][ 2 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
               }
                
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 0 ][ 1 ] ] && culoare [ joc_computer [ 0 ][ 1 ] ] == culoare [ joc_computer [ 0 ][ 2 ] ] && culoare [ joc_computer [ 0 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 1 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 1 ][ 2 ] ] && culoare [ joc_computer [ 1 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 1 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  } //
                  if ( tine_computer == 0 && culoare [ joc_computer [ 2 ][ 0 ] ] == culoare [ joc_computer [ 2 ][ 1 ] ] && culoare [ joc_computer [ 2 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 2 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 0 ] ] && culoare [ joc_computer [ 1 ][ 0 ] ] == culoare [ joc_computer [ 2 ][ 0 ] ] && culoare [ joc_computer [ 2 ][ 0 ] ] != -1  )  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 1 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 1 ] ] && culoare [ joc_computer [ 2 ][ 1 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 1 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }//
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 2 ] ] == culoare [ joc_computer [ 1 ][ 2 ] ] && culoare [ joc_computer [ 1 ][ 2 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1)  {
                     if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 0 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 2 ] ] && culoare [ joc_computer [ 2 ][ 2 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 0 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
                  if ( tine_computer == 0 && culoare [ joc_computer [ 0 ][ 2 ] ] == culoare [ joc_computer [ 1 ][ 1 ] ] && culoare [ joc_computer [ 1 ][ 1 ] ] == culoare [ joc_computer [ 2 ][ 0 ] ] && culoare [ joc_computer [ 2 ][ 0 ] ] != -1 )  {
                     if ( culoare [ joc_computer [ 0 ][ 2 ] ] == 1 )  {
                         winner_computer = 1 ;
                     }  else    {
                         winner_computer = 2;
                     }
                    tine_computer = -1;
                  }
              } 
}













int[][] c1= { {50,55,100} , {255,204,0} } ;
int[][] c2= { {255,204,0} , {255,0,0} } ;
int nr_of_1=2 ,  nr_of_2=2 ,  nr_of_3=2 ,  nr_of_4=2 ,  nr_of_5=2 ,  nr_of_6=2 ;
int nr_moves= 0, temp, apare = 0 , used=1, last_piece_x=-1, last_piece_y=-1, winner=0, nr_mutari = 0,LAST_X,LAST_Y,CURR_X,CURR_Y,music=1;
int prev_game_computer , used_computer, LAST_X_computer , LAST_Y_computer , CURR_X_computer , CURR_Y_computer, winner_computer, temp2;
int nr_mutari_computer, nr_of_1_computer=2, nr_of_2_computer=2 ,  nr_of_3_computer=2 ,  nr_of_4_computer=2 ,  nr_of_5_computer=2 ,  nr_of_6_computer=2, tine_computer, last_piece_x_computer, last_piece_y_computer;
 float mx;
float my ;
int prev_game = 0 , sw=0,v1= 0,v2=0,ads=0,tine=0, odata_pcr = 0,bk_color=0,show_list=0,show_pieces=0,changed_purple=0,changed_yellow=0;
int[] white1= {50,100,0} , black1 = { 0 , 0 , 0 } , green1 = { 0, 255 , 150 }, white2= {100,50,0}, white3= {50,50,100}, white0 = { 255, 255 , 255 } ;
int [] c_1 = {50, 55, 100} , c_2 = {255, 204, 0} , c_3 = {255,200,200} , c_4 = { 0, 127 , 127 } , c_5 = { 127 , 0 , 127 } , c_6 = { 255, 0 , 0 } ;

int[] culoare = { -1,  1 ,1 , 1, 2 , 2 ,2 } ;
int[][] joc = { { 0,0,0 }, { 0,0,0 } , {0,0,0} }; 
int[][] joc2 = { { 0,0,0 }, { 0,0,0 } , {0,0,0} }; 
int[][] joc3 = { { 0,0,0 }, { 0,0,0 } , {0,0,0} };

int[][] joc_computer = { { 0,0,0 }, { 0,0,0 } , {0,0,0} }; 
int[][] joc2_computer = { { 0,0,0 }, { 0,0,0 } , {0,0,0} }; 
int[][] joc3_computer = { { 0,0,0 }, { 0,0,0 } , {0,0,0} };

PImage pink,infos , sure , move ,easy , hard , cancel, yes, no, save, last_game, last_game_used, new_game, pcr, player_vs_player, player_vs_computer, undo_used,turn_blue, turn_red, undo,back, blue_2 , red_2, red_1, red_0, blue_1, blue_0,RED_WINS,BLUE_WINS,blue_piece0, logo, play_logo,blue_piece1,set_logo,blue_piece2, ins_logo,blue_piece3, red_piece1,exit_logo, dreapta, stanga,tabla,rez,music_on,music_off,bk,button_on,button_off,white,black,green,yellow,purple, red_piece1_copy,blue_piece1_copy,sel_piece,purple_wins,yellow_wins,music_white;

PVector location, location2;  
PVector velocity,velocity2 ;  
PVector gravity,gravity2;



























void music_turn_on()
{
  if(!Player.isPlaying())
  {
    Player.loop();
  }
}
void music_turn_off()
{
  if(Player.isPlaying())
    Player.pause();
}

void fill ( int[] color1, float transparenta )  { 
 fill ( color1[0], color1[1], color1[2], transparenta );  
}
