import 'package:flutter/material.dart';
import 'package:xo_game/home.dart';

class RoleBorad extends StatelessWidget {
  String role;
  RoleBorad({required this.role});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HomeScreen.routeName, arguments: role);
      },
      child: Container(
        height: MediaQuery.sizeOf(context).height*0.2,
        padding: EdgeInsets.all(32),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Image.asset("assets/$role.png",fit: BoxFit.fill,),
      ),
    );
  }
}
