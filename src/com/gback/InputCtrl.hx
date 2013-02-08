package com.gback;

import com.gback.components.PositionState;
import com.gback.system.Entity;
import com.gback.system.IController;
import com.gback.KeyboardInput;
import nme.display.Sprite;
import nme.ui.Keyboard;
import nme.events.KeyboardEvent;

/**
 * ...
 * @author gback
 */

class InputCtrl implements IController
{
	
	var keyInput:KeyboardInput;
	var worldView:Sprite;
	var entity:Entity;
	var entityPosition:PositionState;
	
	var xSpeed:Float;
	var xAccel:Float;
	inline static var friction = 2;

	public function new(input:KeyboardInput, view:Sprite) 
	{
		keyInput = input;
		worldView = view;
		xAccel = 0;
		xSpeed = 0;
	}
	
	public function onUpdate(msgs:Array<Msg>):Void
	{
		//var inputMsg:Msg = {type:"",value:""};
		//inputMsg.type = "force";
		xAccel = 0;
		if (keyInput.getKeyDown(Keyboard.RIGHT)) 
		{
			xAccel += 5;
			//trace("key right pressed");
		}
		if (keyInput.getKeyDown(Keyboard.LEFT))
		{
			xAccel -= 5;
		}
		xSpeed += xAccel;
		//trace("xSpeed: " + xSpeed + "xAccel: " + xAccel );
		if (xSpeed > 0)
		{
			//trace("xSpeed: " + xSpeed);
			xSpeed -= friction;
			if (xSpeed < 0) xSpeed = 0;
			if (xSpeed > 15) xSpeed = 15;
			//trace("xSpeed Increases: " + xSpeed);
		}else if (xSpeed < 0)
		{
			xSpeed += friction;
			if (xSpeed > 0) xSpeed = 0;
			if (xSpeed < -15) xSpeed = -15;
			//trace("xSpeed Increases: " + xSpeed);
		}
		
		entityPosition.setX(entityPosition.getX() + Std.int(xSpeed));
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
	}
	
	public function onDestroy():Void
	{
		
	}
	
	public function getName():String
	{
		return "Input";
	}
}