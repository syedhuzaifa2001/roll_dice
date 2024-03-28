import "package:flutter/material.dart";
import "package:first_app/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 241, 152, 152), Color.fromARGB(255, 160, 6, 6)),
        // backgroundColor: Colors.black,
      ),
    ),
  );
}
