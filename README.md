---
Author: Martin McConnell 20088021
---

# vap3main

## Run

This was built with processing 3.5.3 and you will need the sound library to run, otherwise
just comment line 27 of vap3main (music.play()) and to slow it down uncomment the frameRate line.

## Premice

Initially this was designed to be an animated vaporwave scene, but devolved into what you see here
after realising that more time that was needed to design this fully.

## Classes

### Pyramid
Declare the class and fill it with variables needed to declare the shape of the object.
The constructor method, getters, setters.The move(); method translates under the nested statement. The
rendering of the object to the screen is handled by the display(); method. The pyramid is built from vectors
given a slight tilt on the X and Z axis.


### Sphere
Declaration of class and fill it with variables which handle :
'''java
  private int radius;
  private float xPos,yPos,zPos;
  private color r,g,b; 
  private float spin;
'''
Radius of the sphere, position (X = across, Y = down, Z = depth) colour in RGB mode and a spin variable to control
of the rotateY(); method
Constructor method, getters, setterslike before. a display method for moving the Sphere into position, rotation
and colour of the object.

### Main

Music was added to demonsrate library importing and usage.

Classes and array of classes declared.

#### void setup()
The sphere is instantiated and given it's parameters. 

The pyramid array is controlled via a for loop efficiently and the size of each vertex is given
as a parameter i.e. (x,y,z).

#### void draw()
background is set to black and redrawn, sphere display() method is called, again a for loop control
is used on the array of pyramids. the push and pop matrix are placed here to handle the translation in both
the move and display methods. 


