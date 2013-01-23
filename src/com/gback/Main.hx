package com.gback;

import format.SWF;
import nme.display.MovieClip;
import nme.display.Sprite;
import nme.events.Event;
import nme.Lib;
import nme.Assets;

/**
 * ...
 * @author Greg
 */

class Main extends Sprite 
{
	
	public function new() 
	{
		super();
		#if iphone
		Lib.current.stage.addEventListener(Event.RESIZE, init);
		#else
		addEventListener(Event.ADDED_TO_STAGE, init);
		#end
	}

	private function init(e) 
	{
		// entry point
		
		// new to Haxe NME? please read *carefully* the readme.txt file!
		//var square:MovieClip = new RedSquare();
		var swf:SWF = new SWF(Assets.getBytes("dashassets.swf"));
	}
	
	static public function main() 
	{
		var stage = Lib.current.stage;
		stage.scaleMode = nme.display.StageScaleMode.NO_SCALE;
		stage.align = nme.display.StageAlign.TOP_LEFT;
		
		Lib.current.addChild(new Main());
	}
	
}
