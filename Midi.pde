
// Fonctions contrôleurs MIDI ***********************************
// Midi
void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);

  int L1 = 0; // Low value to map 
  int H1 = 127; 
  int L2 = 0; 
  int H2 = 255; 

  // *********************************** RVB
  if (number==70) {
    new70 = map(value, L1, H1, L2, H2);
  };
  if (number==71) {
    new71 = map(value, L1, H1, L2, H2);
  };
  if (number==76) {
    new76 = map(value, L1, H1, L2, H2);
  };

  // color of element
  if (number==72) {
    new72 = map(value, L1, H1, L2, H2);
  };
  // *********************************** SPEED

  if (number==80) {
    new80 = map(value, L1, H1, L2, 1);
  };
  if (number==90) {
    new90 = map(value, L1, H1, -1, 1);
  };

  // *********************************** SCALE

  if (number==12) {
    new12 = map(value, L1, H1, 50, 1);
  };
  if (number==73) {
    new73 = map(value, L1, H1, 1, 30);
  };
  if (number==17) {
    new17 = map(value, L1, H1, 500, 1);
  };  
  if (number==18) {
    new18 = map(value, L1, H1, 500, 1);
  };
  if (number==19) {
    new19 = map(value, L1, H1, 500, 1);
  };
  if (number==20) {
    master = map(value, L1, H1, 10, 0);
  };

  // *********************************** TRANSLATE

  if (number==3) {
    new3 = map(value, L1, H1, -1000, 1000);
  };
  if (number==9) {
    new9 = map(value, L1, H1, -1000, 1000);
  }; 

  // *********************************** MODES

  // Stroke mode
  if (number==30) {
    Stroke = !Stroke;
  };

  if (number==31) {             // multiple
    k = !k;
  }

  if (number==69) {             // multiple2
    no_k = !no_k;
  }

  if (number==1) {             // cam
    Malev = !Malev;
  }
  if (number==67) {             // cam
    cam2 = !cam2;
  }
  if (number==68) {            // cam
    cam3 = !cam3;
  }; 


  // Glitch mode
  if (number==8) {
    glitchP5.glitch(int (random (0, W)), int (random (0, H)), W, H, W, H, 1, 1f, 1, 1);
  }; 
  // trigger a glitch: glitchP5.glitch(	posX, 			// 
  //                             	posY, 			// position on screen(int)
  //					posJitterX, 		// Jitter = a glitch zone
  //					posJitterY, 		// max. position offset(int)
  //					sizeX, 			// 
  //					sizeY, 			// size (int)
  //					numberOfGlitches, 	// number of individual glitches (int)
  //					randomness, 		// Variation around the glitch zone Jitter (float)
  //					attack, 		// max time (in frames) until indiv. glitch appears (int)
  //					sustain			// max time until it dies off after appearing (int)
  //				      );

}



