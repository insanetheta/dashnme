package com.gback.components;
import com.gback.system.Entity;
import com.gback.system.IController;
import format.display.MovieClip;
import nme.display.Sprite;
import nme.Assets;

/**
 * ...
 * @author gback
 */

class MovieClipCtrl implements IController
{
	public var repeat:Bool;
	
	var world:Sprite;
	var view:MovieClip;
	var entity:Entity;
	var entityPosition:PositionState;

	public function new(worldDisplay:Sprite, clipName:String) 
	{
		this.world = worldDisplay;
		trace(clipName);
		view = (Assets.getMovieClip("dashassets:" + clipName));
		repeat = false;
		trace(view);
		//view.stop();
	}
	
	public function play():Void
	{
		view.play();
	}
	
	
	public function onUpdate(msgs:Array<Msg>):Void
	{
		if (repeat)
		{
			if (view.currentFrame == view.totalFrames - 1)
				view.gotoAndPlay(0);
		}
		view.x = entityPosition.getX();
		view.y = entityPosition.getY();
	}
	public function onSetup(entity:Entity):Void
	{
		this.entity = entity;
		//entityPosition = cast(entity.getState("Position"),PositionState);
		if (entityPosition == null) 
		{
			entityPosition = new PositionState();
			entity.addState(entityPosition);
		}
		entityPosition.setX(100);
		entityPosition.setY(100);
		world.addChild(view);
	}
	public function onDestroy():Void
	{
		
	}
	public function getName():String
	{
		return "MovieClip";
	}
	
}