import 'dart:js';

import 'package:flame/game.dart';
import 'package:flappy_bird/game/flappy_bird_game.dart';
import 'package:flappy_bird/screens/main_menu_screens.dart';
import 'package:flutter/material.dart';

final game = FlappyBirdGame();
void main() {
  runApp(
    GameWidget(
      game: game,
      initialActiveOverlays: [MainMenuScreen.id],
      overlayBuilderMap: {
        'mainMenu': (context, _) => MainMenuScreen(game: game)
      },
    ),
  );
}
