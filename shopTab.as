package 
{

	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import fl.transitions.TweenEvent;
	import com.greensock.*;
	import com.greensock.easing.*;
	import com.greensock.plugins.*;


	public class shopTab extends MovieClip
	{

		public var cost:Number = 0;



		public function shopTab()
		{
			// constructor code
			x = 0;
			y = 0;

			raketaC1.addEventListener(MouseEvent.CLICK, crnoBijeloC);
			raketaC2.addEventListener(MouseEvent.CLICK, crnoBijelo2C);
			raketaC3.addEventListener(MouseEvent.CLICK, crnoBijelo3C);
			kriloC1.addEventListener(MouseEvent.CLICK, crnoBijelo4C);
			kriloC2.addEventListener(MouseEvent.CLICK, crnoBijelo5C);
			kriloC3.addEventListener(MouseEvent.CLICK, crnoBijelo6C);
			kriloC4.addEventListener(MouseEvent.CLICK, crnoBijelo7C);


			raketaC1.addEventListener(MouseEvent.MOUSE_OVER, crnoBijelo);
			raketaC2.addEventListener(MouseEvent.MOUSE_OVER, crnoBijelo2);
			raketaC3.addEventListener(MouseEvent.MOUSE_OVER, crnoBijelo3);
			kriloC1.addEventListener(MouseEvent.MOUSE_OVER, crnoBijelo4);
			kriloC2.addEventListener(MouseEvent.MOUSE_OVER, crnoBijelo5);
			kriloC3.addEventListener(MouseEvent.MOUSE_OVER, crnoBijelo6);
			kriloC4.addEventListener(MouseEvent.MOUSE_OVER, crnoBijelo7);

			raketaC1.addEventListener(MouseEvent.MOUSE_OUT, bijeloCrno);
			raketaC2.addEventListener(MouseEvent.MOUSE_OUT, bijeloCrno2);
			raketaC3.addEventListener(MouseEvent.MOUSE_OUT, bijeloCrno3);
			kriloC1.addEventListener(MouseEvent.MOUSE_OUT, bijeloCrno4);
			kriloC2.addEventListener(MouseEvent.MOUSE_OUT, bijeloCrno5);
			kriloC3.addEventListener(MouseEvent.MOUSE_OUT, bijeloCrno6);
			kriloC4.addEventListener(MouseEvent.MOUSE_OUT, bijeloCrno7);


			/*wingsPaper.addEventListener(MouseEvent.CLICK, wingsPaperFunctrion);
			wingsWood.addEventListener(MouseEvent.CLICK, wingsWoodFunction);
			wingsMetal.addEventListener(MouseEvent.CLICK, wingsMetalFunction);
			wingsFabric.addEventListener(MouseEvent.CLICK, wingsFabricFunction);
			rocketSmall.addEventListener(MouseEvent.CLICK, rocketSmallFunction);
			rocketMedium.addEventListener(MouseEvent.CLICK, rocketMediumFunction);
			rocketBig.addEventListener(MouseEvent.CLICK, rocketBigFunction);
			*/shoppingCart.addEventListener(MouseEvent.CLICK, shoppingCartFunction);
			meat.addEventListener(MouseEvent.CLICK, meatFunction);
			boxer.addEventListener(MouseEvent.CLICK, boxerFunction);
			baseballPlayer.addEventListener(MouseEvent.CLICK, baseballPlayerFunction);
			rugbyPlayer.addEventListener(MouseEvent.CLICK, rugbyPlayerFunction);
			bodieBuilder.addEventListener(MouseEvent.CLICK, bodieBuilderFunction);
			clown.addEventListener(MouseEvent.CLICK, clownFunction);
			
			baseballPlayer.addEventListener(MouseEvent.MOUSE_OVER, bbo1);
			rugbyPlayer.addEventListener(MouseEvent.MOUSE_OVER, bbo2);
			bodieBuilder.addEventListener(MouseEvent.MOUSE_OVER, bbo3);
			clown.addEventListener(MouseEvent.MOUSE_OVER, bbo4);
			
			baseballPlayer.addEventListener(MouseEvent.MOUSE_OUT, obb1);
			rugbyPlayer.addEventListener(MouseEvent.MOUSE_OUT, obb2);
			bodieBuilder.addEventListener(MouseEvent.MOUSE_OUT, obb3);
			clown.addEventListener(MouseEvent.MOUSE_OUT, obb4);

		}

		public function bbo1(e:MouseEvent)
		{
			baseballPlayer.gotoAndStop(1);
		}
		public function bbo2(e:MouseEvent)
		{
			rugbyPlayer.gotoAndStop(1);
		}
		public function bbo3(e:MouseEvent)
		{
			bodieBuilder.gotoAndStop(1);
		}
		public function bbo4(e:MouseEvent)
		{
			clown.gotoAndStop(1);
		}
		
		public function obb1(e:MouseEvent)
		{
			baseballPlayer.gotoAndStop(2);
		}
		public function obb2(e:MouseEvent)
		{
			rugbyPlayer.gotoAndStop(2);
		}
		public function obb3(e:MouseEvent)
		{
			bodieBuilder.gotoAndStop(2);
		}
		public function obb4(e:MouseEvent)
		{
			clown.gotoAndStop(2);
		}

		
		public function moveToPeople()
		{
			TweenLite.to(this, 0.5, {y:-550, ease:Regular.easeOut});
			TweenLite.to(this.discription, 0.5, {y:600, ease:Regular.easeOut});
			//var myTween:Tween = new Tween(this, "y", Regular.easeOut, 0, -550, .5, true);
			//var myTween:Tween = new Tween(this.discription, "y", Regular.easeOut, 389.55, 600, .5, true);
		}

		public function moveToNotPeople()
		{
			TweenLite.to(this, 0.5, {y:0, ease:Regular.easeOut});
			TweenLite.to(this.discription, 0.5, {y:389.55, ease:Regular.easeOut});
			//var myTween:Tween = new Tween(this, "y", Regular.easeOut, -550, 0, .5, true);
			//var myTween:Tween = new Tween(this.discription, "y", Regular.easeOut, 600, 389.55, .5, true);
		}

		public function crnoBijelo7C(e:MouseEvent)
		{
			discription.gotoAndStop(15);
			cost = 600;
			trace("Cost: "+cost);
		}

		public function crnoBijelo5C(e:MouseEvent)
		{
			discription.gotoAndStop(2);
			cost = 150;
			trace("Cost: "+cost);
		}
		public function crnoBijelo4C(e:MouseEvent)
		{
			discription.gotoAndStop(3);
			cost = 70;
			trace("Cost: "+cost);
		}
		public function crnoBijelo6C(e:MouseEvent)
		{
			discription.gotoAndStop(4);
			cost = 300;
			trace("Cost: "+cost);
		}
		public function crnoBijeloC(e:MouseEvent)
		{
			discription.gotoAndStop(5);
			cost = 100;
			trace("Cost: "+cost);
		}
		public function crnoBijelo2C(e:MouseEvent)
		{
			discription.gotoAndStop(6);
			cost = 500;
			trace("Cost: "+cost);
		}
		public function crnoBijelo3C(e:MouseEvent)
		{
			discription.gotoAndStop(7);
			cost = 1000;
			trace("Cost: "+cost);
		}
		public function shoppingCartFunction(e:MouseEvent)
		{
			discription.gotoAndStop(8);
			cost = 10;
			trace("Cost: "+cost);
		}
		public function meatFunction(e:MouseEvent)
		{
			discription.gotoAndStop(9);
			cost = 10;
			trace("Cost: "+cost);
		}
		public function boxerFunction(e:MouseEvent)
		{
			discription.gotoAndStop(10);
			cost = 10;
			trace("Cost: "+cost);
		}
		public function baseballPlayerFunction(e:MouseEvent)
		{
			discription.gotoAndStop(11);
			cost = 1500;
			trace("Cost: "+cost);
		}
		public function rugbyPlayerFunction(e:MouseEvent)
		{
			discription.gotoAndStop(12);
			cost = 800;
			trace("Cost: "+cost);
		}
		public function bodieBuilderFunction(e:MouseEvent)
		{
			discription.gotoAndStop(13);
			cost = 2200;
			trace("Cost: "+cost);
		}
		public function clownFunction(e:MouseEvent)
		{
			discription.gotoAndStop(14);
			cost = 0;
			trace("Cost: "+cost);
		}


		public function crnoBijelo(mouseEvent:MouseEvent)
		{
			//shoptab.raketaC1.visible = false;
			raketaC1.alpha = 0;
			trace("sex2");
		}
		public function crnoBijelo7(mouseEvent:MouseEvent)
		{
			//shoptab.kriloC4.visible = false;
			kriloC4.alpha = 0;
			trace("sex");
		}
		public function crnoBijelo2(mouseEvent:MouseEvent)
		{
			//shoptab.raketaC2.visible = false;
			raketaC2.alpha = 0;
			trace("sex");
		}
		public function crnoBijelo3(mouseEvent:MouseEvent)
		{
			//shoptab.raketaC3.visible = false;
			raketaC3.alpha = 0;
			trace("sex");
		}
		public function crnoBijelo4(mouseEvent:MouseEvent)
		{
			//shoptab.kriloC1.visible = false;
			kriloC1.alpha = 0;
			trace("sex");
		}
		public function crnoBijelo5(mouseEvent:MouseEvent)
		{
			//shoptab.kriloC2.visible = false;
			kriloC2.alpha = 0;
			trace("sex");
		}
		public function crnoBijelo6(mouseEvent:MouseEvent)
		{
			//shoptab.kriloC3.visible = false;
			kriloC3.alpha = 0;
			trace("sex");
		}


		//////

		public function bijeloCrno(mouseEvent:MouseEvent)
		{
			raketaC1.visible = true;
			raketaC1.alpha = 1;
			trace("sex2");
		}
		public function bijeloCrno7(mouseEvent:MouseEvent)
		{
			kriloC4.visible = true;
			kriloC4.alpha = 1;
			trace("sex");
		}
		public function bijeloCrno2(mouseEvent:MouseEvent)
		{
			raketaC2.visible = true;
			raketaC2.alpha = 1;
			trace("sex");
		}
		public function bijeloCrno3(mouseEvent:MouseEvent)
		{
			raketaC3.visible = true;
			raketaC3.alpha = 1;
			trace("sex");
		}
		public function bijeloCrno4(mouseEvent:MouseEvent)
		{
			kriloC1.visible = true;
			kriloC1.alpha = 1;
			trace("sex");
		}
		public function bijeloCrno5(mouseEvent:MouseEvent)
		{
			kriloC2.visible = true;
			kriloC2.alpha = 1;
			trace("sex");
		}
		public function bijeloCrno6(mouseEvent:MouseEvent)
		{
			kriloC3.visible = true;
			kriloC3.alpha = 1;
			trace("sex");
		}

		//////
	}

}