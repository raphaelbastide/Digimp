void draw() { 

  // Control colors with midi
  bgc1=round(new70);
  bgc2=round(new71);
  bgc3=round(new76);
  fill(c);
  c=round(new72);

  // Control speed with midi
  speed=new80 * new90;
  
  // Control Scale with midi
  t1=round(new17*master);
  t2=round(new18*master);
  t3=round(new19*master);

  translate(new3, new9);

  // Control number of elements with midi
  num=round(new12);

  background(bgc1, bgc2, bgc3);
  a += speed;
  
float offset = PI/new73;            // Angle offset between boxes


  //--------------------------Stroke MODE-----------------------------------------------

  if (Stroke) {
    stroke(255);
    //  strokeWeight(5);
    noFill();
  }
  else{
    noStroke();    
  }
  //--------------------------Malev MODE (white square)-----------------------------------------------

  if (Malev) {
    fill(255);
    float new12= 1;
    new3=0;
    new9=0;
    num=1;
    rotateY(0);
    rotateX(0);
  }

  //--------------------------anti-KALEIDOSCOP--------------------------------------------------

  if (no_k) {
    translate(00, 00);                    // Star 1
    for(int i = 0; i < num; i++) {
      //stroke(0);
      fill(c);
      rotateY(-a + offset*i);
      rotateZ(a/2 + offset*i);
      box(t2, t1, t3);

    }

    translate(width/2,  height/2);                              // INITIAL
    for(int i = 0; i < num; i++) {
      pushMatrix();
      //stroke(0);
      fill(c);
      rotateY(-a + offset*i);
      rotateX(a/2 + offset*i);
      box(t2, t1, t3);
      popMatrix();
    }
  }
  else{
    translate(width/2,  height/2);
    for(int i = 0; i < num; i++) {
      pushMatrix();
      rotateY(a + offset*i);
      rotateX(a/2 + offset*i);
      box(t1, t2, t3);
      popMatrix();
    }
  }

  if (capture) {
    mm.addFrame();              // Add window's pixels to movie
  }

  glitchP5.run(); // this needs to be at the end of draw(). anything after it will not be drawn to the screen
  

  if (screenShots) {
    float f = frameCount;
    if (f % 60 == 0) {
      saveFrame("motion/dgpCut-####.tif");
    }
  }  
}// End Draw

