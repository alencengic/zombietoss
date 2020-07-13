package  {
	
	import flash.display.MovieClip;
	
	
	public class humans extends MovieClip {
		
		
		public function humans(shape:Number) {
			// constructor code
			
			
			if(shape==1)
			{
				x = 110;
				y = 50;
				
				gotoAndStop(1)
			}
			if(shape==2)
			{
				x = 103;
				y = 5;
				gotoAndStop(2)
			}
			if(shape==3)
			{
				x = 110;
				y = 50;
				gotoAndStop(3)
			}
			if(shape==4)
			{
				x = 110;
				y = 50;
				gotoAndStop(4)
			}
			
			if(shape==5)
			{
				x = 110;
				y = 50;
				gotoAndStop(5)
			}

		}
	}
	
}
