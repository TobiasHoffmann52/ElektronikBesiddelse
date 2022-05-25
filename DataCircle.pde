class DataCircle {

  int year;
  String item;
  float percentage;



  DataCircle(String c, int y, float p) {
    item  = c;
    year     = y;
    percentage = p;
  }

  void display( int x, float scaleFactor) {
    fill(255);
    textSize(14);
    text(item + " " + percentage + "%", x+percentage*0.6, (420-(420*percentage/100)+40)+20);

    fill(2, 110, 129);
    if (item.equals("Toerretumbler")) {
      image(dryer, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("Vaskemaskine")) {
      image(washer, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("Opvaskemaskine")) {
      image(dishwasher, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("Mikroboelgeovn")) {
      image(microwave, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("Digitalt videokamera (-2021)")) {
      image(videoCamera, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("Digitalkamera (-2021)")) {
      image(camera, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("CD-afspiller ( -2017)")) {
      image(cdPlayer, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("Tv-harddiskoptager (-2021)")) {
      image(videoTape, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("PC")) {
      image(computer, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("Mobiltelefon")) {
      image(mobilePhone, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("Smartphone")) {
      image(smartphone, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("Fastnettelefon")) {
      image(landline, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("DAB radio")) {
      image(radio, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("GPS navigation")) {
      image(gpsNavigator, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("GPS-ur")) {
      image(watch, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
    if (item.equals("Spillekonsol")) {
      image(videoConsole, x, (420-(420*percentage/100)+40), 0.5 * percentage, 0.5 * percentage);
    }
  }
}
