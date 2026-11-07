class Image {
  PImage img;

  Image(PImage img) {
    this.img = img;
  }

  void Render() {
    imageMode(CENTER);
    image(img, width / 2, height / 2, width, height);
    imageMode(CORNER);
  }
}
