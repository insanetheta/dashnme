package com.gback.system;

import nme.display.Sprite;

/**
 * ...
 * @author Greg
 */

class Entity 
{
	
	var _controllers:Array<IController>;
	var _states:Array<IState>;
	public var worldDisplay:Sprite;
	//public var states:Array;
	var msgQueue:Array<Msg>;

	public function new() 
	{
		_controllers = new Array<IController>();
		_states = new Array<IState>();
		msgQueue = new Array<Msg>();
		//worldDisplay = world;
	}
	
	// Entity level game logic
	public function addController(controller:IController):Void 
	{
		_controllers.push(controller);
		controller.onSetup(this);
		trace("controller added: " + controller.getName());
	}

	public function removeController(controller:IController):Void 
	{
		//_controllers.splice(_controllers.(controller), 1);
		controller.onDestroy();
		_controllers.remove(controller);
	}
	
	public function getController(name:String):IController
	{
		for (controller in _controllers)
			if (controller.getName() == name) return controller;
		return null;
	}
	
	public function addState(state:IState):Void
	{
		_states.push(state);
	}
	
	public function removeState(state:IState):Void
	{
		_states.remove(state);
	}
	
	public function getState(name:String):IState
	{
		for (state in _states)
			if (state.getName() == name) return state;
		return null;
	}
	
	public function sendMsg(msg:Msg):Void
	{
		msgQueue.push(msg);
	}
	
	public function onUpdate():Void
	{
		for (ctrl in _controllers)
		{
			ctrl.onUpdate(msgQueue);
		}
		msgQueue = [];
	}
	
}

typedef Msg =
{
	var type:String;
	var value:String;
}