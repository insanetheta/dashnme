package com.gback;
import nme.display.Sprite;
import nme.events.Event;
import nme.events.KeyboardEvent;

/**
 * ...
 * @author Greg
 */

class World extends Sprite
{
	public var gameDisplay:Sprite;
	
	public var keyInput:KeyboardInput;

	public function new() 
	{
		super();
		gameDisplay = this;
		keyInput = new KeyboardInput(gameDisplay);
		var hero:Hero = new Hero(gameDisplay);
		function update(_):Void
		{
			hero.update();
		}
		addEventListener(Event.ENTER_FRAME, update);
	}
	
}