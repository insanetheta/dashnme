package com.gback;
import com.gback.components.MovieClipCtrl;
import nme.display.Sprite;
import nme.events.Event;
import nme.events.KeyboardEvent;
import com.gback.InputCtrl;
import com.gback.system.Entity;
import com.gback.system.IController;
import nme.Lib;

/**
 * ...
 * @author Greg
 */

class World extends Sprite
{
	public var gameDisplay:Sprite;
	
	public var keyInput:KeyboardInput;
	
	var controllers:Array<IController>;
	var entities:Array<Entity>;

	public function new() 
	{
		super();
		controllers = new Array<IController>();
		entities = new Array<Entity>();
		gameDisplay = this;
		keyInput = new KeyboardInput(Lib.stage);
		var heroEnt:Entity = new Entity();
		var hero:Hero = new Hero(gameDisplay);
		heroEnt.addController(hero);
		heroEnt.addController(new MovieClipCtrl(gameDisplay, "MothSmall"));
		heroEnt.addController(new InputCtrl(keyInput, this));
		entities.push(heroEnt);
		function update(_):Void
		{
			for (ctrl in controllers)
			{
				ctrl.onUpdate(null);
			}
			for (entity in entities)
				entity.onUpdate();
			//hero.update();
			//trace("world update");
		}
		addEventListener(Event.ENTER_FRAME, update);
	}
	
}