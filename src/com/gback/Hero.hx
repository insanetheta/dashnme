package com.gback;

import nme.display.Sprite;
import nme.Assets;
import nme.ui.Keyboard;

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
	
	public function update():Void
	{
	
	}
	
}