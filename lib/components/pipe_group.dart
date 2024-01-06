import 'dart:math';
import 'package:flame/components.dart';
import 'package:flappy_bird/components/pipe.dart';
import 'package:flappy_bird/game/configuration.dart';
import 'package:flappy_bird/game/flappy_bird_game.dart';
import 'package:flappy_bird/game/pipe_position.dart';
import 'package:flutter/foundation.dart';

class PipeGroup extends PositionComponent with HasGameRef<FlappyBirdGame>{
  PipeGroup();

  final _random = Random();

  @override
  Future<void> onLoad() async {
    position.x = gameRef.size.x;

    final heghtMinusGround = gameRef.size.y - Config.groundHeight;
    final spacing = 100+ _random.nextDouble() * (heghtMinusGround / 4);
    final centrY = spacing + _random.nextDouble() * (heghtMinusGround - spacing);
    addAll([
      Pipe(pipePosition: PipePosition.top, height: centrY - spacing / 2),
      Pipe(pipePosition: PipePosition.bottom, height: heghtMinusGround - (centrY + spacing / 2)),

    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= Config.gameSpeed * dt;

    if (position.x < -10){
      removeFromParent();
      debugPrint('Removed');
    }

    if (gameRef.isHit){
      removeFromParent();
      gameRef.isHit = false;
    }
  }
}