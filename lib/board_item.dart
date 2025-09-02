// import 'package:flutter/material.dart';

// class BoardItem extends StatelessWidget {
//   String text;
//   int index;
//   void Function(int) ontap;
//   BoardItem({super.key,required this.index, required this.text, required this.ontap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         ontap(index);
//       },
//       child: Container(
//         color: Colors.white,
//         child: text.isEmpty ? null : Image.asset("assets/$text.png"),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class BoardItem extends StatelessWidget {
//   String text;
//   int index;
//   void Function(int) onItemClicked;

//   BoardItem({super.key, required this.text, required this.index, required this.onItemClicked});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         onItemClicked(index);
//       },

//       child: Container(
//         color: Colors.white,
//         child: text.isEmpty ? null : Image.asset("assets/$text.png"),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class BoardItem extends StatelessWidget {
  String text;
  int index;
  void Function(int) onItemClicked;
  BoardItem({
    required this.text,
    required this.index,
    required this.onItemClicked,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onItemClicked(index);
      },
      child: Container(
        color: Colors.white,
        child: text.isEmpty ? null : Image.asset('assets/$text.png'),
      ),
    );
  }
}
