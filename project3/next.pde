void nextImage() {
  //background(255);
 
  loop();
  frameCount = 0;
  
  img = loadImage(imgcat[imgIndex]);
  img.loadPixels();
  
  imgIndex += 1;
  if (imgIndex >= imgcat.length) {
    imgIndex = 0;
  
  }

}
