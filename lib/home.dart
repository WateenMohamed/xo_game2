
import 'package:flutter/material.dart';
import 'package:xo_game/board_item.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> board = List.filled(9, '');
  int player1Score = 0;
  int player2Score = 0;
  late String player1;
  late String player2 = player1 == 'x' ? 'o' : 'x';
  int round = 1;

  @override
  Widget build(BuildContext context) {
   player1= ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff00D2FF), Color(0xff3A7BD5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 76,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(44),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '${player1.toUpperCase()}: $player1Score',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '${player2.toUpperCase()}:  $player2Score',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Player ${round.isOdd? player1.toUpperCase():player2.toUpperCase()} Turn',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                height: MediaQuery.sizeOf(context).height * 0.75,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(44),
                ),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    mainAxisExtent: MediaQuery.sizeOf(context).height * 0.25,
                  ),
                  itemBuilder:
                      (_, index) => BoardItem(
                        text: board[index],
                        index: index,
                        onItemClicked: onItemClicked,
                      ),
                  itemCount: board.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemClicked(int index) {
    if (board[index].isNotEmpty) return;
    if (round.isOdd) {
      board[index] = player1;
      if (checkWinner(player1)) {
        player1Score++;
        clear();
        return;
      }
    } else {
      board[index] = player2;
      if (checkWinner(player2)) {
        player2Score++;
        clear();
        return;
      }
    }
    round++;
    if (round == 10) clear();
    setState(() {});
  }

  void clear() {
    round = 1;
    board = List.filled(9, '');
    setState(() {});
  }

  bool checkWinner(String role) {
    if (round < 5) return false;
    if (board[0] == role && board[4] == role && board[8] == role) return true;
    if (board[2] == role && board[4] == role && board[6] == role) return true;
    for (int i = 0; i < 7; i += 3) {
      if (board[i] == role && board[i + 1] == role && board[i + 2] == role) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (board[i] == role && board[i + 3] == role && board[i + 6] == role) {
        return true;
      }
    }
    return false;
  }
}
