package com.gback;

/**
 * ...
 * @author Greg
 */

interface IController 
{
	function onUpdate(msg:Msg):Void;
	function onSetup(entity:Entity):Void;
	function onDestroy():Void;
}

typedef Msg =
{
	type:String,
	value:String
}