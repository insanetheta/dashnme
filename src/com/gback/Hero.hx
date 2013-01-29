package com.gback;

import com.gback.components.PositionState;
import nme.display.Sprite;
import nme.Assets;
import nme.ui.Keyboard;
import com.gback.system.Entity.Msg;
import com.gback.system.IController;
import com.gback.system.Entity;

/**
 * ...
 * @author Greg
 */

class Hero implements IController
{
	var world:Sprite;
	var view:Sprite;
	var entity:Entity;

	public function new(gameDisplay:Sprite)
	{
		world = gameDisplay;
		//view = new Sprite();
		//view.addChild(Assets.getMovieClip("dashassets:RedSquare"));
		//world.addChild(view);
		trace("hey");
		//trace(view.x + ", " + view.y);
		
	}
	
	public function onUpdate(msg:Array<Msg>):Void
	{
		//view.x = entityPosition.getX();
		//view.y = entityPosition.getY();
		//trace("onupdate: " + view.x + ", " + view.y);
	}
	public function onSetup(entity:Entity):Void
	{
		this.entity = entity;
		
	}
	public function onDestroy():Void
	{
		
	}
	
	public function getName():String
	{
		return "Hero";
	}
	
}