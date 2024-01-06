import 'package:flame/game.dart';

class FlappyBirdGame extends FlameGame {
  late Bird bird;
  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      PipeGroud(),
    ]);
  }
}
