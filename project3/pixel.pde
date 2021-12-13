void pixel(){
translate(width/2, height/2+40);
  
  int index = 0;
  
  for (int y = 0; y < img.height; y+=1) {
    for (int x = 0; x < img.width; x+=1) {
      int odds = (int)random(20000);
      
      if (odds < 1) {
        color pixelColor = img.pixels[index];
        println(pixelColor);
        pixelColor = color(red(pixelColor), green(pixelColor), blue(pixelColor), 100);
        
        pushMatrix();
        translate(x-img.width/2, y-img.height/2);
        rotate(radians(random(-90, 90)));
        
       
        if (frameCount < 20) {
 
          paintStroke(random(100, 200), pixelColor, (int)random(20, 40));
        } else if (frameCount < 50) {
          
          paintStroke(random(50, 100), pixelColor, (int)random(8, 12));
        } else if (frameCount < 100) {
      
          paintStroke(random(20, 40), pixelColor, (int)random(1, 4));
        } else if (frameCount < 200) {
          // Big dots
          paintStroke(random(5, 20), pixelColor, (int)random(2, 10));
        } else if (frameCount < 300) {
          
          paintStroke(random(1, 10), pixelColor, (int)random(1, 5));
        }else if (frameCount < 350) {
          
          paintStroke(random(0.7, 2), pixelColor, (int)random(0.5, 2));
        }
        
        popMatrix();
      }
      
      index += 1;
    }
  }
  
  if (frameCount > 350) {
    noLoop();
  }
}
