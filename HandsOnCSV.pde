void setup() {
  noLoop();
  readPrintModifyCsv();
}

void readPrintModifyCsv() {
  Table table = loadTable("CASchools.csv", "header");
  for (int rowIndex = table.getRowCount() - 1; rowIndex >= 0; rowIndex--) {
    TableRow row = table.getRow(rowIndex);
    String county = row.getString("county");
    if (county.equals("Los Angeles")) {
      table.removeRow(rowIndex);
    }
  }
  
  ArrayList<School> schools = new ArrayList<School>();
  for (TableRow row : table.rows()) {
    String name = row.getString("school");
    String county = row.getString("county");
    int students = row.getInt("students");
    float english = row.getFloat("english");
    float math = row.getFloat("math");
    schools.add(new School(name, county, students, english, math));
  }
  
  int numMathGreaterThanEnglish = 0;
  for (School school : schools) {
    if (school.mathGreaterThanEnglish()) {
      numMathGreaterThanEnglish++;
    }
  }
  print(numMathGreaterThanEnglish);
  println(" schools had math > English scores.\n");
}
