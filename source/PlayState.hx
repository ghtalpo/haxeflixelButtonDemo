package;

import flixel.FlxState;
import flixel.addons.ui.FlxUI9SliceSprite;
import flixel.addons.ui.FlxUISpriteButton;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		// https://snippets.haxeflixel.com/text/flxtext/
		var text = new FlxText();
		text.text = "Hello, 세계!"; // set text's text to say "Hello, World!"
		// text.color = FlxColor.CYAN; // set the color to cyan
		// text.size = 32; // set the text's size to 32px
		// text.alignment = FlxTextAlign.CENTER; // center the text
		// text.setBorderStyle(FlxTextBorderStyle.SHADOW, FlxColor.BLUE, 4); // give the text a 4-pixel deep, blue shadow

		text.setFormat("assets/fonts/DOSSaemmul.ttf", 32);

		// http://coinflipstudios.com/devblog/?p=243
		var _slice:Array<Int> = [10, 10, 40, 40];
		var _sliceArray:Array<Array<Int>> = [_slice, _slice, _slice]; // all 3 buttons have same slicing
		var _graphic_sheet:String = "assets/images/sheet_button.png";
		var myButtonSprite = new FlxUISpriteButton(0, 0, text);
		myButtonSprite.loadGraphicSlice9([_graphic_sheet], 300, 80, _sliceArray, FlxUI9SliceSprite.TILE_NONE, -1, false, 49, 49);

		myButtonSprite.autoCenterLabel();
		myButtonSprite.screenCenter();

		add(myButtonSprite);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
