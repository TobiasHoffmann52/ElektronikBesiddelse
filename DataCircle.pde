class DataCircle {

  int year;
  String item;
  float percentage;



  DataCircle(String c, int y, float p) {
    item  = c;
    year     = y;
    percentage = p;
  }

  void display( int x) {
    float scale = 1;
    fill(255);
    textSize(14);
    text(item + " " + percentage + "%", (x*scale)+(percentage*0.6), (420-(420*percentage/100)+20)+20);

    fill(2, 110, 129);
    if (item.equals("Toerretumbler")) {
      image(dryer, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("Vaskemaskine")) {
      image(washer, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("Opvaskemaskine")) {
      image(dishwasher, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("Mikroboelgeovn")) {
      image(microwave, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("Digitalt videokamera (-2021)")) {
      image(videoCamera, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("Digitalkamera (-2021)")) {
      image(camera, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("CD-afspiller ( -2017)")) {
      image(cdPlayer, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("Tv-harddiskoptager (-2021)")) {
      image(videoTape, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("PC")) {
      image(computer, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("Mobiltelefon")) {
      image(mobilePhone, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("Smartphone")) {
      image(smartphone, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("Fastnettelefon")) {
      image(landline, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("DAB radio")) {
      image(radio, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("GPS navigation")) {
      image(gpsNavigator, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("GPS-ur")) {
      image(watch, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
    if (item.equals("Spillekonsol")) {
      image(videoConsole, x*scale, (420-(420*percentage/100)+20), 0.6 * percentage, 0.6 * percentage);
    }
  }
}
