void setup() {
  size(1920, 1080);
  background(0);
}

void draw() {

  translate(width/2, height/2);
  /* move ellipse from l to right with wave motion */
  float wave_magnitude = (width / 2);
  float w_m = wave_magnitude;
  float size = 125;
  noStroke();
  for (int i = 0; i < width; i ++) {
    float organic_wave = map(sin(radians(frameCount * 2 + i)), -1, 1, -w_m, w_m);
    float o_w = organic_wave;

    float wave_1 = map(tan(radians(frameCount * 0.8 + i + o_w)), -1, 1, -w_m, w_m);
    float wave_2 = map(sin(radians(frameCount * 1.5 + i)), -1, 1, -w_m, w_m);

    float fill_color = map(cos(radians(frameCount * .15 + i)), -1, 1, 0, 255); // fade from 0 to 255
    fill(fill_color);

    rect(wave_1, wave_2, size, size / i);
    ellipse(wave_2, wave_1, size / i, size);
  }
}
