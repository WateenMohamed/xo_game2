import 'package:flutter/material.dart';
import 'package:xo_game/role_borad.dart';

class SelectOrder extends StatelessWidget {
  static const String routeName = '/';
  const SelectOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff00D2FF), Color(0xff3A7BD5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      child: Column(children: [
        Image.asset("assets/Group 4.png",width: double.infinity,fit: BoxFit.cover,),
      
        Text('Pick who goes first?',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
          color: Colors.white
        ),
        
        ),
          Spacer(),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical:26 ),
             child: Row(
            children: [
              Expanded(child: RoleBorad(role: 'x')),
                SizedBox(width: 15,),
              Expanded(child: RoleBorad(role: 'o')),
            ],
          ),
        )
        ])),
    );
  }
}
