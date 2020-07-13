package  {
	import flash.display.MovieClip;
	
	public class ObjDown extends MovieClip {

		public function ObjDown( startX:Number, startY:Number, shape:Number) 
		{
			x = startX;
			y = startY;
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
			
		}
		
		public function moveDown(variable:Number):void 
		{
			x -= variable ;
		}

	}
	
}
