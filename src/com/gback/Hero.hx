package com.gback;
import nme.display.Sprite;
import nme.Assets;

/**
 * ...
 * @author Greg
 */

class Hero 
{
	var world:Sprite;
	var display:Sprite;

	public function new(gameDisplay:Sprite)
	{
		world = gameDisplay;
		display = new Sprite();
		display.addChild(Assets.getMovieClip("dashassets:RedSquare"));
		world.addChild(display);
	}
	
}