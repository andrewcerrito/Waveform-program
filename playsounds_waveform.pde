
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
FFT fft;

AudioPlayer i1;
AudioPlayer i2;
AudioPlayer i3;
AudioPlayer i4;
AudioPlayer i5;
AudioPlayer i6;
AudioPlayer i7;

boolean done1, done2, done3, done4, done5, done6  = false;

void setup() {
  size(800, 800);
  // instantiate Minim
  minim = new Minim(this);

  i1 = minim.loadFile("applic1.mp3");
  i2 = minim.loadFile("applic2.mp3");
  i3 = minim.loadFile("applic3.mp3");
  i4 = minim.loadFile("applic4.mp3");
  i5 = minim.loadFile("applic5.mp3");
  i6 = minim.loadFile("applic6.mp3");
  i7 = minim.loadFile("applic7.mp3");
  fft = new FFT(i1.bufferSize(), i1.sampleRate());

  delay(100);
  i1.play(0);
  
  done1 = true;
}

void draw() {
  waveform(i1);
  if (done1); 
  { 
    waveform(i2);
  }
  if (done2); 
  { 
    waveform(i3);
  }
  if (done3); 
  { 
    waveform(i4);
  }
  if (done4); 
  { 
    waveform(i5);
  }
  if (done5); 
  { 
    waveform(i6);
  }
  if (done6); 
  { 
    waveform(i7);
  }
}


// when keys are typed, plays sample and then reloads it to be played again.
void keyTyped () {
  if (done1 == true) {
    if (key == 'w' || key == 'W' ) {
      i2.play(0);
      done1= false;
      done2 = true;
    }
  }

  if (done2 == true) {
    if (key == 'a' || key == 'A' ) {
      i3.play(0);
      done2= false;
      done3 = true;
    }
  }
  if (done3 == true) {
    if (key == 's' || key == 'S' ) {
      i4.play(0);
      done3 = false;
      done4 = true;
    }
  }
  if (done4 == true) {
    if (key == 'd' || key == 'D' ) {
      i5.play(0);
      done4 = false;
      done5 = true;
    }
  }
  if (done5 == true) {
    if (key == 'f' || key == 'F' ) {
      i6.play(0);
      done5= false;
      done6= true;
    }
  }
  if (done6==true) {
    if (key == 'g' || key == 'G' ) {
      i7.play(0);
      done6=false;
    }
  }
}


// stops Minim + audio when program is closed.
void stop() {
  minim.stop();
  super.stop();
}

