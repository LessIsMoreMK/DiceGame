import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_a_dice/constants.dart';
import 'package:roll_a_dice/model/game_state.dart';
import 'package:roll_a_dice/pages/dices_game_page.dart';
import 'package:roll_a_dice/pages/start_game_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Player1Data()),
        ChangeNotifierProvider(create: (context) => Player2Data()),
      ],
      child: MaterialApp(
        title: 'Game of dice',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kColorMain,
          appBarTheme: AppBarTheme(
            color: kColorMain,
            elevation: 0.0,
          ),
        ),
        initialRoute: InitGamePage.route,
        routes: {
          InitGamePage.route: (context) => InitGamePage(),
          DicesGamePage.route: (context) => DicesGamePage(),
        },
      ),
    );
  }
}
