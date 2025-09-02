// import 'package:flutter/material.dart';
// import 'package:xo_game/home.dart';

// void main() {
//   runApp(XOGame());
// }

// class XOGame extends StatelessWidget {
//   const XOGame({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes: {
//      HomeScreen.routeName:(_)=>HomeScreen(),

//       },
//       initialRoute: HomeScreen.routeName,
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:xo_game/home.dart';

// void main() {
//   runApp(XOGame());
// }

// class XOGame extends StatelessWidget {
//   const XOGame({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//      routes: {
//        HomeScreen.routeName:(_)=> HomeScreen()
//      },
//       initialRoute: HomeScreen.routeName,
//     );

//   }
// }
import 'package:flutter/material.dart';
import 'package:xo_game/home.dart';
import 'package:xo_game/select_order.dart';

void main() {
  runApp(XOGame());
}

class XOGame extends StatelessWidget {
  const XOGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 debugShowCheckedModeBanner: false,
 routes: {
  HomeScreen.routeName:(_)=>HomeScreen(),
  SelectOrder.routeName:(_)=>SelectOrder(),

 },
 initialRoute: SelectOrder.routeName,

    );
  }
}
