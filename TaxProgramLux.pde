Histogram histogram = new Histogram();
int selectedYear = 1990;
int stepYear = 0;
PImage photo;


void setup() {
  photo = loadImage("infografik.png");
  size(1000, 500);
  histogram.loadData();
  clear();
  histogram.display(selectedYear, 5);
}


void draw() {
  clear();
  if (frameCount%100==0) { 
    selectedYear = selectedYear + stepYear;
  }
  histogram.display(selectedYear, 5);
}

void keyPressed() {
  if (key == '1' && selectedYear > 1990) {
    selectedYear = selectedYear - 1;
  } else if (key == '2' && selectedYear < 2022) {
    selectedYear = selectedYear + 1;
  }
}
