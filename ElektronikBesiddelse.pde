Elektronik elektronik = new Elektronik();
int selectedYear = 1990;

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
  elektronik.display(selectedYear);
}

void keyPressed() {
  if (key == '1' && selectedYear > 1990) {
    selectedYear = selectedYear - 1;
  } else if (key == '2' && selectedYear < 2022) {
    selectedYear = selectedYear + 1;
  }
}
