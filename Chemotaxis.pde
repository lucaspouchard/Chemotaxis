bacteria[] germs = new bacteria[50];

void setup() {
  size(800, 600);


  for (int i = 0; i < germs.length; i++) {
    germs[i] = new bacteria((int)(Math.random() * width),(int)(Math.random() * height), color( (int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256) )  );

  }
}

void draw() {
  background(20);

  
  for (int i = 0; i < germs.length; i++) {
    germs[i].move();
    germs[i].show();
  }
}

class bacteria {
  int myX, myY, myColor;

  bacteria(int x, int y, int col) {
    myX = x;
    myY = y;
    myColor = col;
  }

  void move() {
    
    myX += (int)(Math.random() * 7) - 3;
    myY += (int)(Math.random() * 7) - 3;

   
    if (mouseX > myX) {
      myX += 1;
    } else if (mouseX < myX) {
      myX -= 1;
    }

    if (mouseY > myY) {
      myY += 1;
    } else if (mouseY < myY) {
      myY -= 1;
    }

   
    myX = constrain(myX, 15, width - 15);
    myY = constrain(myY, 15, height - 15);
  }

  void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 30, 30);
  }
}
