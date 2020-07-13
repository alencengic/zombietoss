package  {
	
	import flash.display.MovieClip;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import fl.transitions.TweenEvent;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import com.greensock.*;
	import com.greensock.easing.*;
	import com.greensock.plugins.*;
	

	
	
	public class achivementsShower extends MovieClip {
		
		public var timerCheck:Timer;
		public var achievmentSound:AchievmentSound; 
		public function achivementsShower() {
			// constructor code
			x = 20;
			y = 20;
			alpha = 0;
			timerCheck = new Timer(5000);
			timerCheck.addEventListener(TimerEvent.TIMER, remove);
		}
		
		
		public function showAchivement(achivement:String){
			if(achivement == "plane"){
				gotoAndStop(1);
			}
			if(achivement == "ko"){
				gotoAndStop(12);
			}
			if(achivement == "hr"){
				gotoAndStop(6);
			}
			if(achivement == "str"){
				gotoAndStop(9);
			}
			if(achivement == "circus"){
				gotoAndStop(2);
			}
			if(achivement == "td"){
				gotoAndStop(11);
			}
			if(achivement == "thrown"){
				gotoAndStop(16);
			}
			if(achivement == "foe"){
				gotoAndStop(5);
			}
			if(achivement == "circus"){
				gotoAndStop(2);
			}
			if(achivement == "dog"){
				gotoAndStop(3);
			}
			if(achivement == "drown"){
				gotoAndStop(4);
			}
			if(achivement == "bird"){
				gotoAndStop(7);
			}
			if(achivement == "money"){
				gotoAndStop(8);
			}
			if(achivement == "sunny"){
				gotoAndStop(10);
			}
			if(achivement == "dist1"){
				gotoAndStop(13);
			}
			if(achivement == "dist2"){
				gotoAndStop(14);
			}
			if(achivement == "dist3"){
				gotoAndStop(15);
			}
			
			TweenLite.to(this, 1, {alpha:1, ease:Regular.easeIn});
			//var showTween:Tween = new Tween(this,"alpha", Regular.easeOut,0,1,3,true);
			
    		timerCheck.start();
		}
		
		public function remove(e:TimerEvent){
			
			TweenLite.to(this, 1, {alpha:0, ease:Regular.easeIn});
			//var removeTween:Tween = new Tween(this,"alpha", Regular.easeOut,1,0,3,true);
			timerCheck.stop();
		}
	}
	
}
