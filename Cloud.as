package  {
	
	import flash.display.MovieClip;
	
	public class Cloud extends MovieClip {
		
		
		public function Cloud( startX:Number, startY:Number, scale:Number)  
		{
			x = startX;
			y = startY;
			height = height-scale;
			scaleX = scaleY;
		}
		
		public function moveCloud()
		{
			x -= 1;
			
		}
		
		
	}
	
}
