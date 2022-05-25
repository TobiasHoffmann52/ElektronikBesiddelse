class DataCircle {

  int year;
  String item;
  float percentage;
  int position;


  DataCircle(String c, int y, float p, int x) {
    item  = c;
    year     = y;
    percentage = p;
    position = x;
  }

  void display(int x, float scaleFactor) {
    fill(0);
    ellipse(x, 525-percentage*scaleFactor, 0.5 * percentage, 0.5 * percentage);  
    fill(255);
    textSize(14);
    text(item + " " + percentage + "%", x+15, 525-percentage*scaleFactor);
  }
}
