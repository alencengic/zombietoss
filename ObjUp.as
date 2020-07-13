package  {
	import flash.display.MovieClip;
	
	public class ObjUp extends MovieClip {

		public function ObjUp( startX:Number, startY:Number, shape:Number ) 
		{
			x = startX;
			y = startY;
			if(shape==1)
			{
				x -= 5;
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
				x -= 5;
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
		
		public function moveDown(variable:Number):void 
		{
			x -= variable ;
		}

	}
	
}
