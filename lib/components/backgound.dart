class Background extends SpriteComponent with HasGameRef<FlappyBirdGame>{
    Background();

    @override
    Future<void> onLoad() async {
        final background = await Flame.images.load(Assets.background);
        size = gameRef.size;
        sprite = Sprite(background);
    }
}