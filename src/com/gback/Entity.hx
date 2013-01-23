package com.gback;

/**
 * ...
 * @author Greg
 */

class Entity 
{
	
	var _controllers:Array<IController> = new Array<IController>();

	public function new() 
	{
		
	}
	
	// Entity level game logic
	public function addController(controller:IController):void 
	{
		_controllers.push(controller);
		controller.onSetup(this);
	}

	public function removeController(controller:IController):void 
	{
		_controllers.splice(_controllers.indexOf(controller), 1);
		controller.onDestroy();
	}
	
}