package com.gback;

import nme.display.Sprite;
import nme.Assets;
import nme.ui.Keyboard;
import com.gback.IController.Msg;

/**
 * ...
 * @author Greg
 */

class Hero implements IController
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
	
	public function onUpdate(msg:Msg):Void
	{
		
	}
	public function onSetup(entity:Entity):Void
	{
		
	}
	public function onDestroy():Void
	{
		
	}
	
}