class Histogram {

  HashMap<String, DataCircle> dataList  = new HashMap<String, DataCircle>();

  void loadData() {
    Table table = loadTable("elektronik2.csv", "header");
    int q = 0;
    int[] xPos = new int[16];

    for (int i = 0; i<16; i++) {
      xPos[i] = (i * 50) + 100;
    }

    for (TableRow r : table.rows()) {
      String item  = r.getString("ITEM");
      int year        = r.getInt("TIME");
      float  percentage      = r.getFloat("PERCENTAGE");
      String listeKey = item + year;

      if (q <15) {
        q++;
      }
      DataCircle d          = dataList.get(listeKey);
      if (d == null) {
        dataList.put(listeKey, new DataCircle(item, year, percentage, xPos[q]));
      } else {          
        return;
      }
    }
  }

  void display(int selectedYear, int scaleFactor) {

    background(photo);

    //Årstallet udskrives
    fill(255);
    textSize(25);
    text(selectedYear, 850, 35);

    translate(10, 10);
    for (String k : dataList.keySet()) {
      DataCircle d = dataList.get(k);
      if (d.year == selectedYear)
        d.display(d.position, scaleFactor);
    }
  }
}
