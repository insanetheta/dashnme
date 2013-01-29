package com.gback.components;
import com.gback.system.IState;
import nme.geom.Point;

/**
 * ...
 * @author gback
 */


 
class PositionState implements IState
{
	
	var position:Point;

	public function new() 
	{
		position = new Point(0, 0);
	}
	
	public function getX():Int
	{
		return Std.int(position.x);
	}
	
	public function getY():Int
	{
		return Std.int(position.y);
	}
	
	public function setX(newX:Int):Void
	{
		position.x = newX;
	}
	
	public function setY(newY:Int):Void
	{
		position.y = newY;
	}
	
	public function getName():String
	{
		return "Position";
	}
	
}