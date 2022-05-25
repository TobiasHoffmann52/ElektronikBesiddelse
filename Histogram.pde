class Histogram {

  HashMap<String, DataCircle> dataList  = new HashMap<String, DataCircle>();

  void loadData() {
    Table table = loadTable("elektronik2.csv", "header");



    for (TableRow r : table.rows()) {
      String item            = r.getString("ITEM");
      int year               = r.getInt("TIME");
      float  percentage      = r.getFloat("PERCENTAGE");
      String listeKey = item + year;

      DataCircle d           = dataList.get(listeKey);
      if (d == null) {
        dataList.put(listeKey, new DataCircle(item, year, percentage));
      } else {          
        return;
      }
    }
  }



  void display(int selectedYear, int scaleFactor) {
    //Baggrundsbilledet bliver tegnet
    background(photo);

    //Årstallet udskrives
    fill(255);
    textSize(25);
    text(selectedYear, 850, 35);
    int x =150;
    translate(10, 10);
    for (String k : dataList.keySet()) {
      DataCircle d = dataList.get(k);
      if (d.year == selectedYear) {
        d.display( x, scaleFactor);
        x +=50;
      }
    }
  }
}
