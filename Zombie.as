package  {
	
	import flash.display.MovieClip;
	
	
	public class Zombie extends MovieClip {
		
		
		public function Zombie(shape:Number) 
		{
			// constructor code
			x = 200;
			y = 104;
			
			if(shape==1)
			{
				
				gotoAndStop(1)
			}
			if(shape==2)
			{
				gotoAndStop(2)
			}
			if(shape==3)
			{
				gotoAndStop(3)
			}
			if(shape==4)
			{
				
				gotoAndStop(4)
			}
			if(shape==5)
			{
				gotoAndStop(5)
			}
			if(shape==6)
			{
				gotoAndStop(6)
			}
		}
	}
	
}
