import 'package:flutter/material.dart';

LinearGradient firstContainer() {
  return LinearGradient(
    colors: [
      const Color.fromARGB(255, 248, 59, 46),
      const Color.fromARGB(255, 236, 78, 78),
      Color.fromARGB(255, 255, 136, 0)
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

LinearGradient secondContainer() {
  return LinearGradient(
    colors: [
      Color.fromARGB(255, 9, 140, 247),
      Color.fromARGB(255, 31, 184, 245),
      const Color.fromARGB(255, 3, 216, 244)
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

LinearGradient thirdContainer() {
  return LinearGradient(
    colors: [
      Color.fromARGB(255, 243, 20, 20),
      Color.fromARGB(255, 255, 47, 134),
      Color.fromARGB(255, 244, 3, 172)
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
