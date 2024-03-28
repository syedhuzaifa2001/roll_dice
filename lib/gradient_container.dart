// import "package:first_app/styled_text.dart";
import "package:flutter/material.dart";
import "package:first_app/roll_dice.dart";

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomCenter;

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.color, {super.key});
//   final List<Color> color;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: color,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText("Hello new1"),
//       ),
//     );
//   }
// }
// or we can use named argument like required this.colors or individual color
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        // child: StyledText("Hello new1"),
        child: RollDice(),
      ),
    );
  }
}
