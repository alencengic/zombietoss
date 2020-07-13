package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import fl.transitions.TweenEvent;
	import com.greensock.*;
	import com.greensock.easing.*;
	
	
	public class upgradesTab extends MovieClip {
		
		
		public function upgradesTab() {
			// constructor code
			x = 10;
			y = -500;
		}
		public function animateUpgradesTab():void
		{
			TweenLite.to(this, 1.5, {y:10, ease:Bounce.easeOut});
			//var myTween2:Tween = new Tween(this, "y", Bounce.easeOut, -500, 10, 1.5, true);
			//addEventListener(Event.ENTER_FRAME,animation);
			
			
		}
		
		public function animateToAchivements():void
		{
			TweenLite.to(this, 1.5, {y:570, ease:Bounce.easeOut});
		}
		public function animateFromAchivements():void
		{
			TweenLite.to(this, 1.5, {y:10, ease:Bounce.easeOut});
		}
		
		public function animateToRecord():void
		{
			TweenLite.to(this, 1.5, {x:-700, ease:Bounce.easeOut});
			//var myTween3:Tween = new Tween(this, "x", Bounce.easeOut, -16.4, -700, 1.5, true);
		}
		public function animateFromRecord():void
		{
			TweenLite.to(this, 1.5, {x:0, ease:Bounce.easeOut});
			//var myTween3:Tween = new Tween(this, "x", Bounce.easeOut, -710, 0, 1.5, true);
		}
		
		public function animation(event:Event){
			if(y < -100){
				y +=15;
			} else if (y < 10){
				y += 10
			}
		}
	}
	
}
