
/******************************************************************/
                              //vap3rror//
                          //Martin McConnell//
                              //20088021//
/******************************************************************/


//import javax.swing.JOptionPane; // import library for joptionPane
//String text;
color b= color(0);

// bring in the classes
Sphere sphere;
Pyramid pyramid;
Pyramid[] pyramids = new Pyramid[5];

void setup()
{
  frameRate(10);
  size(600, 700, P3D);
  
  // User Selected number of pyramids
  // would have been nice but dynamic arrays are weird
  //text = JOptionPane.showInputDialog("How many?");
  //int pyramidNumber = Integer.parseInt(text);

  // instantiate classes
  sphere = new Sphere(100, 1, 50, 100, 50, 300, 350, 0);
  
  // Pyramidal array loop control
  for(int i = 0; i < pyramids.length; i++){
    pyramids[i] = new Pyramid(100,100,100);
  }
}

void draw()
{
  background(b);
  // draw sphere
  sphere.display();
  // loop control again on the array
  for(int i = 0; i < pyramids.length; i++){
    pushMatrix();
    pyramids[i].move();
    pyramids[i].display();
    popMatrix();  
}
}  

//EOF
