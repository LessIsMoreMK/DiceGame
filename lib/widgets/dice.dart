import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roll_a_dice/constants.dart';
import 'package:roll_a_dice/model/game_state.dart';

class Dice extends StatelessWidget {
  static final List<IconData> kDiceIcons = [
    FontAwesomeIcons.diceOne,
    FontAwesomeIcons.diceTwo,
    FontAwesomeIcons.diceThree,
    FontAwesomeIcons.diceFour,
    FontAwesomeIcons.diceFive,
    FontAwesomeIcons.diceSix
  ];

  final PlayerData data;
  final int index;

  Dice({
    this.data,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    int diceIndex = data.values[index] - 1;
    return Container(
      width: 85,
      height: 85,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: kColorSide,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: RawMaterialButton(
        onPressed: () {
          data.toggleLock(index);
        },
        child: Icon(
          kDiceIcons[diceIndex],
          color: data.locks[index] ? Colors.yellow.shade900 : kColorMain,
          size: 80,
        ),
      ),
    );
  }
}
