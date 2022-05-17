package;

import flixel.FlxGame;
import flixel.system.FlxAssets;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();

		// change default font
		// https://www.youtube.com/watch?v=yQeBUvk8O-o
		// FlxAssets.FONT_DEFAULT = "assets/fonts/DOSSaemmul.ttf";

		addChild(new FlxGame(0, 0, PlayState));
	}
}
