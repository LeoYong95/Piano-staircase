//Auth: Loe Yong
//----Importing necessary libraries----
import ddf.minim.*;

float max_dist = 20;

//=====BEGIN PLAYER CLASS=====
class Player {
  
public

Minim minim;
AudioPlayer player; 
int On = 1; 
 
//----Constructor
Player( AudioPlayer plyr ) {
   player = plyr;
}
  
//----Function 
 void Play(float num ) { 
 
   if (num <= max_dist) {
   player.play();
    
  }else if ( (player.position() == player.length()) &&  (num <= max_dist) )
  {
    if(On==1)
    {
    player.rewind();
    player.play();
     On = 0;
    }
}else if(num >= max_dist) {
    
   if ( player.isPlaying() )
  {
  //do nothing
  } else if ( player.position() == player.length() )
  {
   player.rewind(); 
   On=1;
  }
  }

 }
  
  
};
//=====END CLASS======
