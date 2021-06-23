import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_a_dice/constants.dart';
import 'package:roll_a_dice/model/game_state.dart';
import 'package:roll_a_dice/widgets/dice_set.dart';

class DicesGamePage extends StatelessWidget {
  static final String route = '/game';
  @override
  Widget build(BuildContext context) {
    String player1Name = Provider.of<Player1Data>(context, listen: false).name;
    String player2Name = Provider.of<Player2Data>(context, listen: false).name;
    return Scaffold(
      appBar: AppBar(
        title: Text('$player1Name vs $player2Name'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Consumer<Player1Data>(builder: (context, state, child) {
              return DiceSet(
                playerData: state,
                color: kColorMainShade,
              );
            }),
            SizedBox(
              height: 20,
            ),
            Consumer<Player2Data>(builder: (context, state, child) {
              return DiceSet(
                playerData: state,
                color: kColorMainShade,
                reversed: true,
              );
            }),
          ],
        ),
      ),
    );
  }
}
