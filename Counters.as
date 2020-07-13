 package
{
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	import flash.display.SimpleButton;
	public class Counters extends MovieClip
	{
		public var currentValue:Number;
 
		public function Counters()
		{
 			reset(); 
		}
 
		public function addToValue( amountToAdd:Number ):void
		{
 			currentValue = currentValue + amountToAdd;
			updateDisplay();
		}
 
		public function reset():void
		{
			currentValue = 0; 
			updateDisplay();
		}
 
		public function updateDisplay():void
		{
 
		}
		
		public function setValue( amount:Number ):void
		{
			currentValue = amount;
			updateDisplay();
		}
		
		
	}
}