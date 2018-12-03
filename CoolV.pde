PImage earth;
int bars;
ReadData rd;
ArrayList<Debris> chosen;





void setup() {
  size(1500, 900);
  smooth();
  background(255);

  earth = loadImage("earth.jpg");
  showEarth();
  bars = height - 600;
  drawBars();
  rd = new ReadData("Orbit_out.csv");
  rd.organize();
  chosen = rd.allResult;
  display(chosen);
  println(map(39887, 92.322, 39887.652, 700, 0));
}

void draw() {




  for (int k = 0; k< chosen.size(); k++) {

    chosen.get(k).coordinates();
  }
}
void keyPressed() {

  if (key == CODED) {
    if (keyCode == UP) {

      bars+= 100;
      for (int k = 0; k< chosen.size(); k++) {
        chosen.get(k).y += 100;
      }
    } else if (keyCode == DOWN) {

      bars-= 100;
      for (int k = 0; k< chosen.size(); k++) {
        chosen.get(k).y -= 100;
      }
    }
  } else if (key == 'a') {
    println(rd.activeResult.size());
    chosen = rd.activeResult;
  } else if (key == 'i') {
    println(rd.inActiveResult.size());
    chosen = rd.inActiveResult;
  } else if (key == 'u') {
    println(rd.unKnownResult.size());
    chosen = rd.unKnownResult;
  } else if (key == 'A') {
    println(rd.allResult.size());
    chosen = rd.allResult;
  }

  background(255);
  drawBars();
  display(chosen);
  showEarth();
}

void drawBars() {
  for (int i = 0; i <= 4000; i+= 10) {
    stroke(169, 169, 169);
    line(55, bars - (i * 10), width, bars - (i * 10) );
    fill(169, 169, 169);
    text(i * 10 + 300, 0, bars - (i * 10) + 5);
  }
}

void showEarth() {

  tint(255, 126);
  image(earth, 0, height - earth.height, width, earth.height );
  noStroke();
  fill(255, 80);  
  ellipse(width/2, height - earth.height + 790, width + 398, width + 50);
}


void display(ArrayList <Debris> result) {
  for (int k = 0; k< result.size(); k++) {
    result.get(k).display();
  }
}
