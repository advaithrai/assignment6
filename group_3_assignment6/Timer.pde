class Timer {

  int animationTimer = 0;
  int animationTimerValue;
  
  boolean isPaused = false;
  
Timer(int timerValue) {
  
  this.animationTimerValue = timerValue;

}

boolean go() {
  if (isPaused) {
    return false;
  }
  else if((millis() - animationTimer) >=animationTimerValue) {
      animationTimer = millis();
      return true;
  }
  
  else {
    return false;
  }
}

void pause() {
  isPaused = true;
}

void play() {
  isPaused = false;
}
}
