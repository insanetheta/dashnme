package com.gback;

import nme.display.Sprite;

/**
 * ...
 * @author Greg
 */

class Entity 
{
	
	var _controllers:Array<IController>;
	public var worldDisplay:Sprite;

	public function new() 
	{
		_controllers = new Array<IController>();
		//worldDisplay = world;
	}
	
	// Entity level game logic
	public function addController(controller:IController):Void 
	{
		_controllers.push(controller);
		controller.onSetup(this);
	}

	public function removeController(controller:IController):Void 
	{
		//_controllers.splice(_controllers.(controller), 1);
		controller.onDestroy();
	}
	
	public function onUpdate():Void
	{
		for (ctrl in _controllers)
		{
			ctrl.onUpdate(null);
		}
	}
	
}