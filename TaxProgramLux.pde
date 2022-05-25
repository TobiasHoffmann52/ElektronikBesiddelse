Histogram histogram = new Histogram();
int selectedYear = 1990;
int stepYear = 0;

void setup() {
  loadBilleder();
  size(1000, 500);
  histogram.loadData();
  clear();
  histogram.display(selectedYear, 5);
  noStroke();
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
