class Timer {
  int time = 0;

  start1(int goal) {
    while (goal > time) {
      print(time);
      time += 1;
    }
  }

  start2(int goal) {
    do {
      print(time);
      time += 1;
    } while (goal > time);
  }

  start3(int goal) {
    for (var x = 0; x < goal; x++) {
      print(time);
      time += 1;
    }
  }
}
