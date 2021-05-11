Graph g;

void setup()
{
  size(600,600);
  g = new Graph(6);
  g.knotenEinfuegen("N",300,100);
  g.knotenEinfuegen("R",450,250);
  g.knotenEinfuegen("IN",300,300);
  g.knotenEinfuegen("M", 300, 500);
  g.knotenEinfuegen("DAH", 250, 400);
  g.knotenEinfuegen("A", 150, 350);
   
  g.kanteEinfuegen("N","R");
  //g.kanteEinfuegen("N","IN");
  g.kanteEinfuegen("IN","DAH");
  g.kanteEinfuegen("DAH","M");
  g.kanteEinfuegen("IN","M");
  g.kanteEinfuegen("DAH","A");
 
    
  

}

void draw()
{
   background(200);
   g.zeichnen();
}

void mousePressed()
{
  // Falls die Maus über einem Knoten steht, 
  // wird der Tiefensuchealgorithmus mit diesem 
  // Knoten als Startknoten ausgeführt
  g.mousePressed();
}
