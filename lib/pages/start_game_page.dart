import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_a_dice/constants.dart';
import 'package:roll_a_dice/model/game_state.dart';
import 'package:roll_a_dice/pages/dices_game_page.dart';

class InitGamePage extends StatelessWidget {
  static final String route = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Player One',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kColorSide,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                style: TextStyle(
                  color: kColorSide,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                onChanged: (value) {
                  Provider.of<Player1Data>(context, listen: false).name = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Player Two:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kColorSide,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                style: TextStyle(
                  color: kColorSide,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                onChanged: (value) {
                  Provider.of<Player2Data>(context, listen: false).name = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                color: kColorSide,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    DicesGamePage.route,
                  );
                },
                child: Text(
                  'START GAME',
                  style: TextStyle(
                    color: kColorMain,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
