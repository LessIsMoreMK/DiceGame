import 'package:flutter/material.dart';
import 'package:roll_a_dice/constants.dart';
import 'package:roll_a_dice/model/game_state.dart';
import 'package:roll_a_dice/widgets/dice.dart';

class DiceSet extends StatelessWidget {
  final bool reversed;
  final Color color;
  final PlayerData playerData;

  DiceSet({
    @required this.playerData,
    this.reversed = false,
    this.color = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          Text(playerData.name),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Dice(data: playerData, index: 0),
              Dice(data: playerData, index: 1),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Dice(data: playerData, index: 2),
              Dice(data: playerData, index: 3),
              Dice(data: playerData, index: 4),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            color: kColorSide,
            onPressed: () {
              playerData.randomizeValues();
            },
            child: Text(
              "ROLL",
              style: TextStyle(
                color: kColorMain,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
