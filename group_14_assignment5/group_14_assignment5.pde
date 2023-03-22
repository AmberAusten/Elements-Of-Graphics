color beige = color(247, 245, 201);
color brown = color(100, 70, 36);
Snowman s1;
Snowman s2;
Snowman s3;

Snowflake snowflake;
Cloud cloud;
Cloud cloud2;

Celestial sun;
Celestial moon;

PShape arm;
void setup() {
  size(500, 500, P3D);
  s1 = new Snowman(200, 200, 10, 1, beige);
  s2 = new Snowman(50, 300, 15, 1, beige);
  s3 = new Snowman(300, 350, 17, 1, beige);
  
  snowflake = new Snowflake(50, 0);
  cloud = new Cloud(500,100,250,0,20);
  cloud2 = new Cloud(500,100,250,10,0);
  
  sun = new Celestial(#FF920D,75,75,50,4.5,#FAF323); // orange sun
  moon = new Celestial(#F2F2E1,450,450,35,-5,#FFFFFF); // white moon
}

void draw() {
  background(230);
  s1.display();
  s1.move();
  
  s2.display();
  s2.move();
  
  s3.display();
  s3.move();
  
  cloud2.display();
  cloud.display();
  
  
  pushStyle();
  sun.display();
  sun.move();
  
  moon.display();
  moon.move();
  popStyle();
}
