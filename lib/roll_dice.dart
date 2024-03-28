import "package:first_app/styled_text.dart";
import "package:flutter/material.dart";
import "dart:math";

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});
  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var currentDice = 2;
  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
    // print("changing image...........");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDice.png",
          width: 100,
        ),
        const SizedBox(height: 70),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 57, 43, 185),
              // padding: const EdgeInsets.only(top: 100),
              backgroundColor: Colors.amber,
              textStyle: const TextStyle(fontSize: 90)),
          child: const StyledText("text"),
        ),
        TextButton(onPressed: () {}, child: const StyledText("hello")),
        OutlinedButton(onPressed: () {}, child: const Text("data"))
      ],
    );
  }
}
