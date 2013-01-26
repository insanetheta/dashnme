package src.com.gback;
import com.gback.Entity;
import com.gback.IController;
import com.gback.KeyboardInput;
import nme.ui.Keyboard;

/**
 * ...
 * @author gback
 */

class InputCtrl implements IController
{
	var keyInput:KeyboardInput;

	public function new(input:KeyboardInput) 
	{
		keyInput = input;
	}
	
	public function onUpdate(msg:Msg):Void
	{
		
	}
	public function onSetup(entity:Entity):Void
	{
		
	}
	public function onDestroy():Void
	{
		
	}
	
}