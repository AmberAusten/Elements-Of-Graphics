class GUI_button{
  ///INSTANCE VARIABLES
  float x,y; //position
  float w,h; //size
  boolean selected; //is the button selected / on? true/false
  color selectedColor, defaultColor, currentColor;
  
  
  GUI_button(float x, float y, float w, float h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    selected = false;
    selectedColor = color( 255, 100, 100); ///must be HSB color
    defaultColor = color( 100,255,100); //slightly darker?
    currentColor = defaultColor; 
  }
  
  
    GUI_button() {}
    
    
  void display(){
    String toggle = "TOGGLE";
    String music = "MUSIC";
    fill(210);
    rect(x-14,y-17,62,53);
    textSize(14);
    fill(0);
    text(toggle,x-10,y-2);
    text(music,x-4,y+34);
    fill( currentColor);
    rect( x, y, w, h);
  }
  
  void clicked( int mx, int my){
    if( mx > x && mx < x + w  && my > y && my < y+h && mousePressed == true){
      //mouse has been clicked
      selected = !selected;  //toggle the value between true and false
      if( selected){
          currentColor = selectedColor;
          background_music.pause();
      }else{
          currentColor = defaultColor;
          background_music.play();
          background_music.loop();
      }
    }
  }
}
