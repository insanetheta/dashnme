package com.gback;
import nme.display.Sprite;
import nme.events.Event;
import nme.events.KeyboardEvent;
import src.com.gback.InputCtrl;

/**
 * ...
 * @author Greg
 */

class World extends Sprite
{
	public var gameDisplay:Sprite;
	
	public var keyInput:KeyboardInput;
	
	var controllers:Array<IController>;

	public function new() 
	{
		super();
		controllers = new Array<IController>();
		gameDisplay = this;
		keyInput = new KeyboardInput(gameDisplay);
		var heroEnt:Entity = new Entity();
		var hero:Hero = new Hero(gameDisplay);
		heroEnt.addController(hero);
		heroEnt.addController(new InputCtrl(keyInput));
		function update(_):Void
		{
			for (ctrl in controllers)
			{
				ctrl.onUpdate(null);
			}
			//hero.update();
		}
		addEventListener(Event.ENTER_FRAME, update);
	}
	
}