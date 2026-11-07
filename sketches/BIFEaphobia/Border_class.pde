class Border {
  void Render() {
    fill(255);
    rect(0, 0, width, framesize);
    rect(0, height - framesize, width, framesize);
    rect(0, 0, framesize, height);
    rect(width - framesize, 0, framesize, height);
  }
}
