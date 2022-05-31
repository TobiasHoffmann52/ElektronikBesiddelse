Elektronik elektronik = new Elektronik();
int selectedYear = 1990;
int stepYear = 0;

void setup() {
  loadBilleder();
  size(1000, 500);
  elektronik.loadData();
  clear();
  elektronik.display(selectedYear);
  noStroke();
}

void draw() {
  clear();
  if (frameCount%100==0) { 
    selectedYear = selectedYear + stepYear;
  }
  elektronik.display(selectedYear);
}

void keyPressed() {
  if (key == '1' && selectedYear > 1990) {
    selectedYear = selectedYear - 1;
  } else if (key == '2' && selectedYear < 2022) {
    selectedYear = selectedYear + 1;
  }
}
