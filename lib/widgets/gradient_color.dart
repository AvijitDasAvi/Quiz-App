import 'package:flutter/material.dart';

LinearGradient createGradient() {
  return LinearGradient(
    colors: [Colors.red, Colors.redAccent, Colors.orange],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
