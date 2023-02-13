import 'package:flutter/material.dart';

import '../widgets/tictactoe.dart';
import './high_score.dart';

class StaticScreen extends StatelessWidget {
  const StaticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Attack on Tic Tac Toe',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const TicTacToe(),
          OutlinedButton(
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HighScores(),
                    ),
                  ),
              child: Text('View High Scores'))
        ],
      ),
    );
  }
}
