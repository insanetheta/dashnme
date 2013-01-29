package com.gback.system;

import Entity.Msg;
/**
 * ...
 * @author Greg
 */

interface IController 
{
	function onUpdate(msgs:Array<Msg>):Void;
	function onSetup(entity:Entity):Void;
	function onDestroy():Void;
	function getName():String;
}