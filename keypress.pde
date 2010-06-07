
void keyPressed() {

  //----------------------------------------------------------------------------

  if (bgc1 < 0 ){ 
    bgc1=0;
  }
  if (bgc2 < 0 ){ 
    bgc2=0;
  }
  if (bgc3 < 0 ){ 
    bgc3=0;
  }
  if (bgc1 > 255 ){ 
    bgc1=255;
  }
  if (bgc2 > 255 ){ 
    bgc2=255;
  }
  if (bgc3 > 255 ){ 
    bgc3=255;
  }


  if (cam1) {
    camera(width/2.0, mouseX*2, mouseX*2, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
  }
  else if(cam2){ 
    camera(mouseX*2, height/2.0,  tan(PI*60.0 / 360.0), 0.0, 5.0, 5.0, 0.0, 1.0, 0.0);
  }
  else if(cam3){ 
    camera(width/6.0, mouseX*6, (height/2.0) / tan(PI*60.0 / 360.0), 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
  }
  else{
    camera(width/2.0, height/2.0, (height/2.0) / tan(PI*60.0 / 360.0), width/2.0, height/2.0, 0, 0, 1, 0);
  }


  if (capture) {
    if (key == 'p') {
      mm.finish();  // Finish the movie if "p" is pressed!
      println("******************** movie recorded **");
      exit();
    }
  }
  

  
} // end keypess

