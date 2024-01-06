import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flappy_bird/game/configuration.dart';

class FlappyBirdGame extends FlameGame {
  FlappyBirdGame();

  late Bird bird;
  Timer interval = Timer(Config.pipeInterval);

  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      PipeGroup(),
    ]);
  }
}
