package com.gback;
import nme.display.Sprite;

/**
 * ...
 * @author Greg
 */

class World extends Sprite
{
	public var gameDisplay:Sprite;

	public function new() 
	{
		super();
		gameDisplay = this;
		var hero:Hero = new Hero(gameDisplay);
		
	}
	
}