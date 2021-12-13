
Table table;

int num_Angles = 10;
float angle = 360/num_Angles;

void setup() {
  size(1000,1500);
  smooth();
  noLoop();
   table = loadTable("table.csv", "header");
}

void draw() {
   
   for (TableRow row : table.rows()) {
    
    int m = row.getInt("pages");
     int d = row.getInt("day");

    float area = sqrt(num_Angles * m/PI)  *100; 
    println(area);
    noStroke();
    float colour = map(m, 0,m*5,0,255);
    fill(colour, 100, colour);
    
    arc(width/2, 500, area, area, radians(270 + (d * angle )), radians((angle * (d+1)) + 270));
  }
 
 String s = "pages of book read for ten days";
  textSize(18);
  fill(250);
  text(s, 10,10, width, 100);
}








 
