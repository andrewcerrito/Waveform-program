void waveform (AudioPlayer t1) {
  fft = new FFT(t1.bufferSize(), t1.sampleRate());
  background(0);
  fft.forward(t1.mix);
  strokeWeight(5);
  stroke(129, 255, 248, 200);
  for (int i = 0; i < t1.left.size() - 1; i++)
  {
    line(i, height/2 + (t1.left.get(i)*50), i+1, ((height/2 + t1.left.get(i+1)*50)));
//    line(i, 150 + i1.right.get(i)*50, i+1, 150 + i1.right.get(i+1)*50);
  }
}
