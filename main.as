package
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.getTimer;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.KeyboardEvent;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.SharedObject;
	import flash.media.SoundMixer;
	import Playtomic.*;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import mochi.as3.*;

	
	public class main extends MovieClip
	{
		public var angOrPow:Number = 0;
		public var power:Number = 0;
		public var angle:Number = 0;
		public var dirX:Number = 0;
		public var dirY:Number = 0;
		public var dirYm:Number = 0;
		public var dist:Number = 0;
		public var gravity:Number = 10;
		public var initialPower:Number = 1;
		public var slowDownValueY:Number = 1.2;
		public var slowDownValueX:Number = 1.3;
		public var zombieShape:Number = 1;
		public var begin:Boolean = true;
		public var bgCheck:Boolean = true;
		public var subCheck:Boolean = true;
		public var eatenDog:Boolean = false;
		public var upObjectsNumber:Number = 0;
		public var downObjectsNumber:Number = 0;
		public var roundEnd = false;
		public var devidedBy:Number = 250;
		public var blodFrame:Number = 1;
		public var gamebgCheck:Number = 0;
		public var money:Number = 0;
		public var dist2:Number = 0;
		public var distY:Number = 0;
		public var soundDist:Number = 0;
		public var totalMoney:Number = 0;
		public var totalGameMoney:Number = 0;
		public var dirYMax:Number = 0;
		public var dataLoadedd:Array;
		public var humanShape:Number = 1;
		public var angleLoaded:Number = 0;
		public var powerLoaded:Number = 0;
		public var initialPowerLoaded:Number = 1;
		public var faller:Number = 1;
		
		public var fireCheck:Boolean = false;
		public var changableText:String = "";
		
		public var levelData:String = "";
		
		public var playingReplay:Boolean = false;
		public var fuelLevel:Boolean = true;
		public var rocketSafe:Boolean = false;
		public var raketaAktivna:Boolean = false;
		public var directionSafe:Boolean = false;
		public var reply:Boolean = false;
		public var upgradeWingsPaper:Boolean = false;
		public var upgradeWingsWood:Boolean = false;
		public var upgradeWingsMetal:Boolean = false;
		public var upgradeRocketSmall:Boolean = false;
		public var upgradeRocketMedium:Boolean = false;
		public var upgradeRocketBig:Boolean = false;
		public var upgradeShoppingCart:Boolean = false;
		public var upgradeMeat:Boolean = false;
		public var upgradeBoxer:Boolean = false;
		public var upgradeBaseballPlayer:Boolean = false;
		public var upgradeRugbyPlayer:Boolean = false;
		public var upgradeBodieBuilder:Boolean = false;
		public var upgradeClown:Boolean = false;
		public var upgradeFabricWings:Boolean = false;
		
		public var timerRakete:Timer;
		
		
		public var Fire:fire;
		public var Humans:humans;
		public var shoptab:shopTab;
		public var distancetext:distanceText;
		public var distancetracker:distanceTracker;
		public var timerEndCheck2:Timer = new Timer(500);
		public var movingTimer:Timer;
		public var cloudTimer:Timer;
		public var DT:Number;
		public var TimeLastFrame:Number;
		public var endChecker:Array;
		public var pickupPosY:Array;
		public var cloudPosY:Array;
		public var cloudSpeed:Array;
		public var army:Array;
		public var army2:Array;
		public var army3:Array;
		public var level:Array;
		public var objdown:ObjDown;
		public var objup:ObjUp;
		public var zombiebeyondrange:zombieBeyondRange;
		public var zombie:Zombie;
		public var anglebar:angleBar;
		public var powerbar:powerBar;
		public var gamebackground:Background;
		public var gamebackground2:repeatingBg;
		public var gamebackground3:repeatingBg;
		public var upgradestab:upgradesTab;
		public var cloud:Cloud;
		public var Blod:blod;
		public var BT:Boolean = false;
		public var bloodBug:Boolean = false;
		public var pelCheck:Boolean = false;
		public var stored:Boolean = false;
		public var storedY:Boolean = false;
		public var storedSound:Boolean = false;
		public var realBackground:RealBackground;
		public var realBackground2:RealBackground;
		public var realBackground3:bg3rpt;
		public var achivementsshower:achivementsShower;
		public var ranShape:Number = 0;
		public var buttonstoolbar:buttonsToolbar;
		public var moregamestoolbar:moreGamesToolbar;
		public var hitTest=0;
		public var splashTest=0;
		
		public var dogZaRaketu:Boolean = false;
		
		public var FSupgradeWingsPaper:Boolean = false;
		public var FSupgradeWingsWood:Boolean = false;
		public var FSupgradeWingsMetal:Boolean = false;
		public var FSupgradeRocketSmall:Boolean = false;
		public var FSupgradeRocketMedium:Boolean = false;
		public var FSupgradeRocketBig:Boolean = false;
		public var FSupgradeFabricWings:Boolean = false;
		
		
		///cookies 
		public var cupgradeWingsPaper:String;
		public var cupgradeWingsWood:String;
		public var cupgradeWingsMetal:String;
		public var cupgradeRocketSmall:String;
		public var cupgradeRocketMedium:String;
		public var cupgradeRocketBig:String;
		public var cupgradeBaseballPlayer:String;
		public var cupgradeRugbyPlayer:String;
		public var cupgradeBodieBuilder:String;
		public var cupgradeClown:String;
		public var cupgradeFabricWings:String;
		public var cachKnockout:String;
		public var cachTouchdown:String;
		public var cachHomerun:String;
		public var cachStrenght:String;
		public var cachCircusInTown:String;
		public var cachDistance1:String;
		public var cachDistance2:String;
		public var cachDistance3:String;
		public var cachThrown:String;
		public var cachDog:String;
		public var cachFOE:String;
		public var cachDrowned:String;
		public var cachHungryBird:String;
		public var cachMoney:String;
		public var cachSun:String;
		public var cachBuyATicket:String;
		public var cTGM:String;
		
		public var chitGuy:String;
		public var chitDog:String;
		public var chitFOE:String;
		public var chitDrowned:String;
		public var chitBird:String;
		public var chitMoney:String;
		public var chitBaloon:String;
		public var chitPlane:String;
		
		public var checkAchivementsPlane:Boolean = false;
		public var checkAchivementsPuddle:Boolean = false;
		public var checkAchivementsBird:Boolean = false;
		public var checkAchivementsMoney:Boolean = false;
		public var checkAchivementsBaloon:Boolean = false;
		public var checkAchivementsGuy:Boolean = false;
		public var checkAchivementsDog:Boolean = false;
		public var checkAchivementsFOE:Boolean = false;
		public var checkAchivementsDrowned:Boolean = false;
		
		/////ACHIVEMENTS
		public var achBuyATicket:Boolean = false;
		public var achCircusInTown:Boolean = false;
		public var achDistance1:Boolean = false;
		public var achDistance2:Boolean = false;
		public var achDistance3:Boolean = false;
		public var achDog:Boolean = false;
		public var achDrowned:Boolean = false;
		public var achFOE:Boolean = false;
		public var achHomerun:Boolean = false;
		public var achHungryBird:Boolean = false;
		public var achKnockout:Boolean = false;
		public var achMoney:Boolean = false;
		public var achStrenght:Boolean = false;
		public var achSun:Boolean = false;
		public var achThrown:Boolean = false;
		public var achTouchdown:Boolean = false;
		
		public var hitPlane:Number = 0;
		public var hitPuddle:Number = 0;
		public var hitBird:Number = 0;
		public var hitMoney:Number = 0;
		public var hitBaloon:Number = 0;
		public var hitGuy:Number = 0;
		public var hitDog:Number = 0;
		public var hitFOE:Number = 0;
		public var hitDrowned:Number = 0;
		public var myLocalSO:SharedObject = SharedObject.getLocal("zombietoss");

		////SAVE FILE :D
		//public var saveFile:SharedObject = SharedObject.getLocal("zombietoss");
		
		///SONG
		public var buttonsound:buttonSound;
		public var gamesong:gameSong;
		public var songHit:gameMusicHit;
		public var dogSound:DogSound; 
		public var moneySound:MoneySound; 
		public var punchSound:PunchSound; 
		public var balloonSound:BalloonSound;
		public var splashSound:SplashSound;
		public var pelicanSound:PelicanSound;
		public var clownSound:ClownSound; 
		public var achievmentSound:AchievmentSound; 
		public var baseballSound:BaseballSound;
		public var nflSound:NflSound; 
		public var bigZombieSound:BigZombieSound; 
		public var fuelSound:FuelSound; 
		public var builderSound:BuilderSound; 
		public var sfxSoundChanel:SoundChannel;
		public var soundEfectSoundChanel:SoundChannel;
		
		//sound effects
		
		
		
		public function main()
		
		{
			
			///shared object za saveanje
			
			
			reply = false;
			
			playingReplay = false;
			
			
			gamesong = new gameSong();
			songHit = new gameMusicHit();
			buttonsound = new buttonSound();
			dogSound = new DogSound();
			moneySound = new MoneySound();
			punchSound = new PunchSound();
			balloonSound = new BalloonSound();
			splashSound = new SplashSound();
			pelicanSound = new PelicanSound();
			clownSound = new ClownSound();
			fuelSound = new FuelSound();
			builderSound = new BuilderSound();
			bigZombieSound = new BigZombieSound();
			baseballSound = new BaseballSound();
			nflSound = new NflSound();
			achievmentSound = new AchievmentSound();
			soundEfectSoundChanel = gamesong.play(0,int.MAX_VALUE);
			
			//soundEfectSoundChanel = songHit.play();
			
			
			
			realBackground = new RealBackground();
			addChild( realBackground );
			
			realBackground2 = new RealBackground();
			realBackground2.x = realBackground.x + realBackground.width -5;
			addChild( realBackground2 );
	
			
			realBackground3 = new bg3rpt();
			realBackground3.x = realBackground2.x + realBackground2.width -5;
			addChild(realBackground3);
			
			gamebackground = new Background();
			addChild( gamebackground );
			
			
			gamebackground2 = new repeatingBg();
			gamebackground2.x = 1090;
			addChild( gamebackground2 );
			
			gamebackground3 = new repeatingBg();
			gamebackground3.x = gamebackground2.width -1;
			addChild( gamebackground3 );
			
			//gamebackground.visible = false;
			//gamebackground2.visible = false;
			
			
			////NOVOVOVOVOVOOVOVOVOOVOVOVO
			
			achivementsshower = new achivementsShower();
			addChild( achivementsshower );
			
			
			buttonstoolbar = new buttonsToolbar();
			addChild( buttonstoolbar );
			buttonstoolbar.menuButton.addEventListener(MouseEvent.CLICK, mainMenuFunc);
			
			moregamestoolbar = new moreGamesToolbar();
			addChild( moregamestoolbar );
			moregamestoolbar.moregames.addEventListener(MouseEvent.CLICK, moreGames5);
			///////////////////////////////
			
			
			zombie = new Zombie(zombieShape);
			zombie.gotoAndStop(zombieShape);
			if (humanShape == 4 || humanShape == 5){
				zombie.visible = false;
			}
			addChild( zombie );
			
			anglebar = new angleBar();
			addChild( anglebar );
			
			powerbar = new powerBar();
			addChild( powerbar );
			
			distancetracker = new distanceTracker();
			addChild ( distancetracker );
			
			distancetext = new distanceText();
			addChild ( distancetext );
			distancetext.distanceTxt.text = "0 m";
			
			zombiebeyondrange = new zombieBeyondRange();
			addChild( zombiebeyondrange );
			zombiebeyondrange.visible = false;
			
			Humans = new humans(humanShape);
			
			addChild( Humans );
			
			
			
			
			
			var timerEndCheck:Timer = new Timer(1000);
    		timerEndCheck.addEventListener(TimerEvent.TIMER, endCheck);
    		timerEndCheck.start();
			
			pickupPosY = new Array();
			cloudPosY = new Array();
			cloudSpeed = new Array();
			army = new Array();
			army2 = new Array();
			army3= new Array();
			endChecker = new Array();
			
			dataLoadedd = new Array();
			
			
			powerbar.stop();
			distancetext.fuelBar.visible=false;
			if(upgradeRocketSmall){
				distancetext.fuelBar.visible=true;
			}
			fuelLevel = true;
			
			///ucitavanje podataka cookie			
			///////tu si stao provjerit varijable i sta koja radi
			cupgradeWingsPaper = getVal("upgradeWingsPaper");
			cupgradeWingsWood = getVal("upgradeWingsWood");
			cupgradeWingsMetal = getVal("upgradeWingsMetal");
			cupgradeRocketSmall = getVal("upgradeRocketSmall");
			cupgradeRocketMedium = getVal("upgradeRocketMedium");
			cupgradeRocketBig = getVal("upgradeRocketBig");
			cupgradeBaseballPlayer = getVal("upgradeBaseballPlayer");
			cupgradeRugbyPlayer  = getVal("upgradeRugbyPlayer");
			cupgradeBodieBuilder = getVal("upgradeBodieBuilder");
			cupgradeClown = getVal("upgradeClown");
			cupgradeFabricWings = getVal("upgradeFabricWings");
			
			
			if(cupgradeRocketSmall == "t"){
				
				FSupgradeRocketSmall = true;
				
			}
			if(cupgradeRocketMedium == "t"){
				
				FSupgradeRocketSmall = false;
				FSupgradeRocketMedium = true;
				
			}
			if(cupgradeRocketBig == "t"){
				
				FSupgradeRocketSmall = false;
				FSupgradeRocketMedium = false;
				FSupgradeRocketBig = true;
				
			}
			if(cupgradeWingsWood == "t"){
				
				FSupgradeWingsWood = true;
				
			}
			
			if(cupgradeWingsPaper == "t"){
				
				FSupgradeWingsWood = false;
				FSupgradeWingsPaper = true;
				
			}
			
			if(cupgradeWingsMetal == "t"){
				
				FSupgradeWingsWood = false;
				FSupgradeWingsPaper = false;
				FSupgradeWingsMetal = true;
				
			}
			
			if(cupgradeFabricWings == "t"){
				
				FSupgradeWingsWood = false;
				FSupgradeWingsPaper = false;
				FSupgradeWingsMetal = false;
				FSupgradeFabricWings = true;
				
			}
			
			/////Pocetak sranja s tocim govnima
			
			
			if(FSupgradeRocketSmall){
				zombie.gotoAndStop(18)
				zombieShape = 18;
				upgradeRocketSmall = true;
			}
			
			if(FSupgradeRocketMedium){
				zombie.gotoAndStop(19)
				zombieShape = 19;
				upgradeRocketMedium = true;
			}
			
			if(FSupgradeRocketBig){
				zombie.gotoAndStop(20)
				zombieShape = 20;
				upgradeRocketBig = true;
			}
			
			if(FSupgradeWingsWood){
				upgradeWingsWood = true;
				
				if(FSupgradeRocketSmall)
				{
					zombie.gotoAndStop(15)
					zombieShape = 15;
				}
				else if(FSupgradeRocketMedium)
				{
					zombie.gotoAndStop(16)
					zombieShape = 16;
				}
				else if(FSupgradeRocketBig)
				{
					zombie.gotoAndStop(17)
					zombieShape = 17;
				}
				else{
					zombie.gotoAndStop(3)
					zombieShape = 3;
				}
			}
			
			if(FSupgradeWingsPaper){
				upgradeWingsPaper = true;
				
				if(FSupgradeRocketSmall)
				{
					zombie.gotoAndStop(6)
				zombieShape = 6;
				}
				else if(FSupgradeRocketMedium){
					zombie.gotoAndStop(7)
				zombieShape = 7;
				}
				else if(FSupgradeRocketBig)
				{
					zombie.gotoAndStop(8)
				zombieShape = 8;
				}
				else{
					zombie.gotoAndStop(2)
				zombieShape = 2;
				}
			}
			
			if(FSupgradeWingsMetal){
				upgradeWingsMetal = true;
				
				if(FSupgradeRocketSmall)
				{
					zombie.gotoAndStop(12)
					zombieShape = 12;
				}
				else if(FSupgradeRocketMedium)
				{
					zombie.gotoAndStop(13)
					zombieShape = 13;
				}
				else if(FSupgradeRocketBig)
				{
					zombie.gotoAndStop(14)
					zombieShape = 14;
				}
				else{
					zombie.gotoAndStop(4)
					zombieShape = 4;
				}
			}
			
			if(FSupgradeFabricWings){
				upgradeFabricWings = true;
				
				if(FSupgradeRocketSmall)
				{
					zombie.gotoAndStop(9)
					zombieShape = 9;
				}
				else if(FSupgradeRocketMedium)
				{
					zombie.gotoAndStop(10)
					zombieShape = 10;
				}
				else if(FSupgradeRocketBig)
				{
					zombie.gotoAndStop(11)
					zombieShape = 11;
				}
				else{
					zombie.gotoAndStop(5)
					zombieShape = 5;
				}
			}
			/////Kraj sranja s tocnim govnima
			
			
			
			
			if(cupgradeRugbyPlayer == "t"){
				upgradeRugbyPlayer = true;
				
				Humans.gotoAndStop(2)
				Humans.y -= 46;
				humanShape = 2;
				initialPower = 2;
			}
			if(cupgradeBaseballPlayer == "t"){
				upgradeBaseballPlayer = true;
				
				Humans.gotoAndStop(3)
				Humans.y += 46;
				humanShape = 3;
				initialPower = 3;
			}
			if(cupgradeBodieBuilder == "t"){
				upgradeBodieBuilder = true;
				
				Humans.gotoAndStop(4)
				humanShape = 4;
				initialPower = 4;
				zombie.visible = false;
			}
			if(cupgradeClown == "t"){
				upgradeClown = true;
				
				Humans.gotoAndStop(5)
				humanShape = 5;
				initialPower = 5;
			}
			
			
			////////////////////////////////////////////////////
			chitGuy = getVal("hitGuy");
			chitDog = getVal("hitDog");
			chitFOE = getVal("hitFOE");
			chitDrowned = getVal("hitDrowned");
			chitBird = getVal("hitBird");
			chitMoney = getVal("hitMoney");
			chitBaloon = getVal("hitBaloon");
			chitPlane = getVal("hitPlane");
			
			
			if(chitGuy != null){
				hitGuy = Number(chitGuy);
			}
			if(chitDog != null){
				hitDog = Number(chitDog);
			}
			if(chitFOE != null){
				hitFOE = Number(chitFOE);
			}
			if(chitDrowned != null){
				hitDrowned = Number(chitDrowned);
			}
			if(chitBird != null){
				hitBird = Number(chitBird);
			}
			if(chitMoney != null){
				hitMoney = Number(chitMoney);
			}
			if(chitBaloon != null){
				hitBaloon = Number(chitBaloon);
			}
			if(chitPlane != null){
				hitPlane = Number(chitPlane);
			}
			
			
			
			
			
			
			//////////////////////////////////////
			cachKnockout = getVal("achKnockout");
			cachTouchdown = getVal("achTouchdown");
			cachHomerun = getVal("achHomerun");
			cachStrenght = getVal("achStrenght");
			cachCircusInTown = getVal("achCircusInTown");
			cachDistance1 = getVal("achDistance1");
			cachDistance2 = getVal("achDistance2");
			cachDistance3 = getVal("achDistance3");
			cachThrown = getVal("achThrown");
			cachDog = getVal("achDog");
			cachFOE = getVal("achFOE");
			cachDrowned = getVal("achDrowned");
			cachHungryBird = getVal("achHungryBird");
			cachMoney = getVal("achMoney");
			cachSun = getVal("achSun");
			cachBuyATicket = getVal("achBuyATicket");
			
			cTGM = getVal("TGM");
			if(cTGM != null){
				totalGameMoney = Number(cTGM);
			}
			
			if(cachKnockout == "t"){
				achKnockout = true;
			}
			if(cachTouchdown == "t"){
				achTouchdown = true;
			}
			if(cachHomerun == "t"){
				achHomerun = true;
			}
			if(cachStrenght == "t"){
				achStrenght = true;
			}
			if(cachCircusInTown == "t"){
				achCircusInTown = true;
			}
			if(cachDistance1 == "t"){
				achDistance1 = true;
			}
			if(cachDistance2 == "t"){
				achDistance2 = true;
			}
			if(cachDistance3 == "t"){
				achDistance3 = true;
			}
			if(cachThrown == "t"){
				achThrown = true;
			}
			if(cachDog == "t"){
				achDog = true;
			}
			if(cachFOE == "t"){
				achFOE = true;
			}
			if(cachDrowned == "t"){
				achDrowned = true;
			}
			if(cachHungryBird == "t"){
				achHungryBird = true;
			}
			if(cachMoney == "t"){
				achMoney = true;
			}
			if(cachSun == "t"){
				achSun = true;
			}
			if(cachBuyATicket == "t"){
				achBuyATicket = true;
			}
			
			
			addEventListener(MouseEvent.CLICK, onClickPowerAngle);
			
			
			
		}
		
		
		public function playClick(e:MouseEvent){
			soundEfectSoundChanel = buttonsound.play(100,1);
		}
		
		
		function setVal(key:String, val:String) {
			myLocalSO.data[key] = val;
			trace(key +" set to "+val);
			//flush the SO, write the SO to disk
			myLocalSO.flush();
			}
		
		public function replayLoadedData(level:PlayerLevel, response:Object):void
		{
			if(response.Success)
    		{
      		  
			  levelData = level.Data;
			  playReplay();
			  trace("Level has been loaded, now you can begin playing it");
    		}
    		else
   		 {
       		 // level failed to load because of response.ErrorCode
   		 }
		}
		
		function getVal(key:String) {
			return myLocalSO.data[key];
			trace(myLocalSO.data[key] +" received from "+key);
			}
		
		
		
		///////REPLAY/////////////////////////
		
		public function playReplay()
		{
			
			
			playingReplay = true;
			dataLoadedd = levelData.split("$");
			trace("Level data: "+levelData);
			reply = true;
			
			removeChild(gamebackground);
			removeChild(gamebackground2);
			removeChild(gamebackground3);
			removeChild(zombie);
			removeChild(anglebar);
			removeChild(powerbar);
			removeChild(distancetracker);
			removeChild(distancetext);
			removeChild(zombiebeyondrange);
			
			while (numChildren > 0){ removeChildAt(0); }
			
			realBackground = new RealBackground();
			addChild( realBackground );
			
			realBackground2 = new RealBackground();
			realBackground2.x =  realBackground.x + realBackground2.width -5;
			addChild( realBackground2 );
			
			realBackground3 = new bg3rpt();
			realBackground3.x = realBackground2.x + realBackground2.width -5;
			addChild(realBackground3);
			
			trace("In main: "+totalMoney);
			gamebackground = new Background();
			addChild( gamebackground );
			
			
			gamebackground2 = new repeatingBg();
			gamebackground2.x = 1090;
			addChild( gamebackground2 );
			
			gamebackground3 = new repeatingBg();
			gamebackground3.x = gamebackground2.width -1;
			addChild( gamebackground3 );
			
			//gamebackground.visible = false;
			//gamebackground2.visible = false;
			
			zombie = new Zombie(zombieShape);
			zombie.gotoAndStop(zombieShape);
			zombie.x = 200;
			zombie.y = 104;
			if (humanShape == 4 || humanShape == 5){
				zombie.visible = false;
			}
			addChild( zombie );
			
			anglebar = new angleBar();
			addChild( anglebar );
			anglebar.stop();
			
			powerbar = new powerBar();
			addChild( powerbar );
			powerbar.stop();
			
			distancetracker = new distanceTracker();
			addChild ( distancetracker );
			
			distancetext = new distanceText();
			addChild ( distancetext );
			distancetext.distanceTxt.text = "0 m";
			
			zombiebeyondrange = new zombieBeyondRange();
			addChild( zombiebeyondrange );
			zombiebeyondrange.visible = false;
			
			Humans = new humans(humanShape);
			
			addChild( Humans );
			
			var timerEndCheck:Timer = new Timer(1000);
    		timerEndCheck.addEventListener(TimerEvent.TIMER, endCheck);
    		timerEndCheck.start();
			
			pickupPosY = new Array();
			cloudPosY = new Array();
			cloudSpeed = new Array();
			army = new Array();
			army2 = new Array();
			army3 = new Array();
			endChecker = new Array();
			
			levelData = "";
			
			raketaAktivna = false;
			powerbar.stop();
			money = 0;
			pelCheck = false;
			begin = true;
			roundEnd = false;
			angOrPow = 5;
			trace("angOrPow = "+angOrPow);
			
			/////LOADANJE VARIJABLI
			angleLoaded = Number(dataLoadedd[0]);
			anglebar.angleArrowRotation.rotation = angleLoaded;
			
			powerLoaded = Number(dataLoadedd[1]);
			powerbar.powerValue.x = powerLoaded/1.7/initialPowerLoaded;
			
			for (var i:Number=0; i<=3;i++){ 
				if(dataLoadedd[i] == "rocketPressed="){
					trace("jebo te bog");
				}
				
				
				trace("data: "+dataLoadedd[i]);
			}
			
			
			trace("srch: ");
			trace("Jebena raketa: "+dataLoadedd.rocketPressed);
			///////////////////////
			distancetext.fuelBar.visible=false;
			if(upgradeRocketSmall || upgradeRocketMedium || upgradeRocketBig){
				distancetext.fuelBar.visible=true;
			}
			fuelLevel = true;
			addEventListener(MouseEvent.CLICK, onClickPowerAngle);
		}
		
		////////end of replay
		
		/////////
		public function onClickMoveToPeople(mouseEvent:MouseEvent)
		{
			shoptab.moveToPeople();
		}
		public function onClickMoveNotToPeople(mouseEvent:MouseEvent)
		{
			shoptab.moveToNotPeople();
		}
		
		
		
		
		
		
		public function shop(mouseEvent:MouseEvent){
			//while (numChildren > 0){ removeChildAt(0); }
			
			shoptab = new shopTab();
			addChild( shoptab );
			shoptab.walletMoney.text = "$"+String(totalGameMoney);
			shoptab.walletMoney2.text = "$"+String(totalGameMoney);
			shoptab.retryButton.addEventListener(MouseEvent.CLICK, onClickRetry2);
			shoptab.discription.buyButton.addEventListener(MouseEvent.CLICK, buyFunction);
			shoptab.peopleButton.addEventListener(MouseEvent.CLICK, onClickMoveToPeople);
			shoptab.notPeopleButton.addEventListener(MouseEvent.CLICK, onClickMoveNotToPeople);
			shoptab.moregames.addEventListener(MouseEvent.CLICK, moreGames);
			shoptab.moregames2.addEventListener(MouseEvent.CLICK, moreGames4);
			
			if(FSupgradeWingsWood){
				shoptab.kriloC1.visible = false;
			}
			if(FSupgradeWingsPaper){
				shoptab.kriloC2.visible = false;
			}
			if(FSupgradeWingsMetal){
				shoptab.kriloC3.visible = false;
			}
			if(FSupgradeFabricWings){
				shoptab.kriloC4.visible = false;
			}
			if(FSupgradeRocketSmall){
				shoptab.raketaC1.visible = false;
			}
			if(FSupgradeRocketMedium){
				shoptab.raketaC2.visible = false;
			}
			if(FSupgradeRocketBig){
				shoptab.raketaC3.visible = false;
			}
			
			if(upgradeBaseballPlayer){
				shoptab.baseballPlayer.gotoAndStop(1);
			}else{shoptab.baseballPlayer.gotoAndStop(2);}
			if(upgradeRugbyPlayer){
				shoptab.rugbyPlayer.gotoAndStop(1);
			}else{shoptab.rugbyPlayer.gotoAndStop(2);}
			if(upgradeBodieBuilder){
				shoptab.bodieBuilder.gotoAndStop(1);
			}else{shoptab.bodieBuilder.gotoAndStop(2);}
			if(upgradeClown){
				shoptab.clown.gotoAndStop(1);
			}else{shoptab.clown.gotoAndStop(2);}
			
		}
		
		public function gameRestarter(){
			
			removeChild(gamebackground);
			removeChild(gamebackground2);
			removeChild(gamebackground3);
			removeChild(zombie);
			removeChild(anglebar);
			removeChild(powerbar);
			removeChild(distancetracker);
			removeChild(distancetext);
			removeChild(zombiebeyondrange);
			
			while (numChildren > 0){ removeChildAt(0); }
			
			realBackground = new RealBackground();
			addChild( realBackground );
			
			realBackground2 = new RealBackground();
			realBackground2.x =  realBackground.x + realBackground2.width -5;
			addChild( realBackground2 );
			
			realBackground3 = new bg3rpt();
			realBackground3.x = realBackground2.x + realBackground2.width -5;
			addChild(realBackground3);
			
			trace("In main: "+totalMoney);
			gamebackground = new Background();
			addChild( gamebackground );
			
			
			gamebackground2 = new repeatingBg();
			gamebackground2.x = 1090;
			addChild( gamebackground2 );
			
			gamebackground3 = new repeatingBg();
			gamebackground3.x = gamebackground2.width -1;
			addChild( gamebackground3 );
			
			//gamebackground.visible = false;
			//gamebackground2.visible = false;
			
			achivementsshower = new achivementsShower();
			addChild( achivementsshower );
			
			buttonstoolbar = new buttonsToolbar();
			addChild( buttonstoolbar );
			
			buttonstoolbar.menuButton.addEventListener(MouseEvent.CLICK, mainMenuFunc);
			
			moregamestoolbar = new moreGamesToolbar();
			addChild( moregamestoolbar );
			
			moregamestoolbar.moregames.addEventListener(MouseEvent.CLICK, moreGames5);
			
			dogZaRaketu = false;
			
			zombie = new Zombie(zombieShape);
			zombie.gotoAndStop(zombieShape);
			zombie.x = 200;
			zombie.y = 104;
			if (humanShape == 4 || humanShape == 5){
				zombie.visible = false;
			}
			addChild( zombie );
			
			anglebar = new angleBar();
			addChild( anglebar );
			
			powerbar = new powerBar();
			addChild( powerbar );
			
			distancetracker = new distanceTracker();
			addChild ( distancetracker );
			
			distancetext = new distanceText();
			addChild ( distancetext );
			distancetext.distanceTxt.text = "0 m";
			
			zombiebeyondrange = new zombieBeyondRange();
			addChild( zombiebeyondrange );
			zombiebeyondrange.visible = false;
			
			Humans = new humans(humanShape);
			
			addChild( Humans );
			
			var timerEndCheck:Timer = new Timer(1000);
    		timerEndCheck.addEventListener(TimerEvent.TIMER, endCheck);
    		timerEndCheck.start();
			
			pickupPosY = new Array();
			cloudPosY = new Array();
			cloudSpeed = new Array();
			army = new Array();
			army2 = new Array();
			army3 = new Array();
			endChecker = new Array();
			
			levelData = "";
			setVal("TGM",String(totalGameMoney));
			raketaAktivna = false;
			powerbar.stop();
			money = 0;
			pelCheck = false;
			begin = true;
			roundEnd = false;
			angOrPow = -1;
			trace("angOrPow = "+angOrPow);
			reply = false;
			distancetext.fuelBar.visible=false;
			if(upgradeRocketSmall || upgradeRocketMedium || upgradeRocketBig){
				distancetext.fuelBar.visible=true;
			}
			fuelLevel = true;
			addEventListener(MouseEvent.CLICK, onClickPowerAngle);
		}
		
		public function mainMenuFunc(e:MouseEvent):void
		{
			soundEfectSoundChanel.stop();
			removeEventListener(Event.ENTER_FRAME,zombieFly);
			removeEventListener(MouseEvent.CLICK, onClickPowerAngle);
			stage.removeEventListener(MouseEvent.CLICK, rocketPowerStarter);
			removeEventListener(Event.ENTER_FRAME,zombieFly);
			stage.removeEventListener(Event.ENTER_FRAME,rocketPower);
			removeChild(gamebackground);
			removeChild(gamebackground2);
			removeChild(gamebackground3);
			removeChild(zombie);
			removeChild(anglebar);
			removeChild(powerbar);
			removeChild(distancetracker);
			removeChild(distancetext);
			removeChild(zombiebeyondrange);
			
			while (numChildren > 0){ removeChildAt(0); }
			dispatchEvent(new NavigationEvent(NavigationEvent.MENU));
		}
		
		public function moreGames(event:MouseEvent):void
		{
			
			navigateToURL(new URLRequest('http://www.zayplay.com?utm_source="host_url"&utm_medium=flashgame&utm_content=shopPeople_moregames&utm_campaign=Zombie-Toss'));
		}
		
		public function moreGames2(event:MouseEvent):void
		{
			
			navigateToURL(new URLRequest('http://www.zayplay.com?utm_source="host_url"&utm_medium=flashgame&utm_content=gameover_moregames&utm_campaign=Zombie-Toss'));
		}
		
		
		public function moreGames3(event:MouseEvent):void
		{
			
			navigateToURL(new URLRequest('http://www.zayplay.com?utm_source="host_url"&utm_medium=flashgame&utm_content=achievement_moregames&utm_campaign=Zombie-Toss'));
		}
		
		public function moreGames4(event:MouseEvent):void
		{
			
			navigateToURL(new URLRequest('http://www.zayplay.com?utm_source="host_url"&utm_medium=flashgame&utm_content=shop_moregames&utm_campaign=Zombie-Toss'));
		}
		
		public function moreGames5(event:MouseEvent):void
		{
			
			navigateToURL(new URLRequest('http://www.zayplay.com?utm_source="host_url"&utm_medium=flashgame&utm_content=gameplay_moregames&utm_campaign=Zombie-Toss'));
		}
		
		
		
		
		public function endCheck(e:TimerEvent){
			if(zombie.y >= 500)
		{
			
    		timerEndCheck2.addEventListener(TimerEvent.TIMER, endCheck2);
    		timerEndCheck2.start();
			//trace("sex");
		}
		}
		
		public function mOutExplane(e:MouseEvent){
			upgradestab.achExp.visible = false;
		}
		
		public function mOverExplane(e:MouseEvent){
			switch(e.target)
			{
				case upgradestab.ach_ko:
				upgradestab.achExp.x = upgradestab.ach_ko.x;
				upgradestab.achExp.y = upgradestab.ach_ko.y;
				upgradestab.achExp.gotoAndStop(1);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_touchdown:
				upgradestab.achExp.x = upgradestab.ach_touchdown.x;
				upgradestab.achExp.y = upgradestab.ach_touchdown.y;
				upgradestab.achExp.gotoAndStop(2);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_homerun:
				upgradestab.achExp.x = upgradestab.ach_homerun.x;
				upgradestab.achExp.y = upgradestab.ach_homerun.y;
				upgradestab.achExp.gotoAndStop(3);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_strongest:
				upgradestab.achExp.x = upgradestab.ach_strongest.x;
				upgradestab.achExp.y = upgradestab.ach_strongest.y;
				upgradestab.achExp.gotoAndStop(4);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_circusInTown:
				upgradestab.achExp.x = upgradestab.ach_circusInTown.x;
				upgradestab.achExp.y = upgradestab.ach_circusInTown.y;
				upgradestab.achExp.gotoAndStop(5);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_hungrieDog:
				upgradestab.achExp.x = upgradestab.ach_hungrieDog.x;
				upgradestab.achExp.y = upgradestab.ach_hungrieDog.y;
				upgradestab.achExp.gotoAndStop(6);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_Drowned:
				upgradestab.achExp.x = upgradestab.ach_Drowned.x-50;
				upgradestab.achExp.y = upgradestab.ach_Drowned.y;
				upgradestab.achExp.gotoAndStop(7);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_FOE:
				upgradestab.achExp.x = upgradestab.ach_FOE.x;
				upgradestab.achExp.y = upgradestab.ach_FOE.y;
				upgradestab.achExp.gotoAndStop(8);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_thrown:
				upgradestab.achExp.x = upgradestab.ach_thrown.x;
				upgradestab.achExp.y = upgradestab.ach_thrown.y;
				upgradestab.achExp.gotoAndStop(9);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_money:
				upgradestab.achExp.x = upgradestab.ach_money.x;
				upgradestab.achExp.y = upgradestab.ach_money.y;
				upgradestab.achExp.gotoAndStop(10);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_buyATicket:
				upgradestab.achExp.x = upgradestab.ach_buyATicket.x;
				upgradestab.achExp.y = upgradestab.ach_buyATicket.y;
				upgradestab.achExp.gotoAndStop(11);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_sunny:
				upgradestab.achExp.x = upgradestab.ach_sunny.x;
				upgradestab.achExp.y = upgradestab.ach_sunny.y;
				upgradestab.achExp.gotoAndStop(12);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_hungrieBird:
				upgradestab.achExp.x = upgradestab.ach_hungrieBird.x;
				upgradestab.achExp.y = upgradestab.ach_hungrieBird.y;
				upgradestab.achExp.gotoAndStop(13);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_dist1:
				upgradestab.achExp.x = upgradestab.ach_dist1.x;
				upgradestab.achExp.y = upgradestab.ach_dist1.y;
				upgradestab.achExp.gotoAndStop(14);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_dist2:
				upgradestab.achExp.x = upgradestab.ach_dist2.x;
				upgradestab.achExp.y = upgradestab.ach_dist2.y;
				upgradestab.achExp.gotoAndStop(15);
				upgradestab.achExp.visible = true;
				break;
				
				case upgradestab.ach_dist3:
				upgradestab.achExp.x = upgradestab.ach_dist3.x;
				upgradestab.achExp.y = upgradestab.ach_dist3.y;
				upgradestab.achExp.gotoAndStop(16);
				upgradestab.achExp.visible = true;
				break;
				
				default:
				trace("Ostalo");
				break;
			}
			
		}
		public function endCheck2(e:TimerEvent){
			timerEndCheck2.stop();
			if(zombie.y >= 500)
			{
			//trace("dick");
			if (roundEnd == false){
				
				totalMoney = Math.round(dist/10+money);
				totalGameMoney += totalMoney;
			trace("TGM: "+totalGameMoney);
			upgradestab = new upgradesTab();
			addChild( upgradestab );
			upgradestab.animateUpgradesTab();
			upgradestab.distanceTxt.text = String(dist)+" m";
			upgradestab.moneyTxt.text = "$"+String(money);//
			upgradestab.totalTxt.text = "$"+String(Math.round(dist/10+money));//
			upgradestab.walletMoney.text = "$"+String(totalGameMoney);
			upgradestab.retryButton.addEventListener(MouseEvent.CLICK, onClickRetry);
			upgradestab.shopButton.addEventListener(MouseEvent.CLICK, shop);
			upgradestab.moregames.addEventListener(MouseEvent.CLICK, moreGames2);
			upgradestab.moregames2.addEventListener(MouseEvent.CLICK, moreGames3);
			upgradestab.recordButton.addEventListener(MouseEvent.CLICK, recordAnim);
			upgradestab.backButtonUpgrades.addEventListener(MouseEvent.CLICK, recordAnimBack);
			upgradestab.recordButtonŞave.addEventListener(MouseEvent.CLICK, saveFinnaly);
			upgradestab.achiveButton.addEventListener(MouseEvent.CLICK, achiveAnim);
			upgradestab.backButtonAchivements.addEventListener(MouseEvent.CLICK, fromAchiveAnim);
			upgradestab.subScoreButton.addEventListener(MouseEvent.CLICK, mochiScoreSubmit);
			
			upgradestab.subScoreButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			upgradestab.retryButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			upgradestab.shopButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			upgradestab.moregames.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			upgradestab.moregames2.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			upgradestab.recordButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			upgradestab.backButtonUpgrades.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			upgradestab.recordButtonŞave.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			upgradestab.achiveButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			upgradestab.backButtonAchivements.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			
			
			upgradestab.achExp.visible = false;
			
			upgradestab.ach_ko.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_touchdown.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_homerun.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_strongest.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_circusInTown.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_hungrieDog.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_Drowned.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_FOE.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_thrown.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_money.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_buyATicket.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_sunny.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_hungrieBird.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_dist1.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_dist2.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			upgradestab.ach_dist3.addEventListener(MouseEvent.MOUSE_OVER, mOverExplane);
			
			upgradestab.ach_ko.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_touchdown.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_homerun.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_strongest.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_circusInTown.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_hungrieDog.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_Drowned.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_FOE.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_thrown.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_money.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_buyATicket.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_sunny.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_hungrieBird.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_dist1.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_dist2.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			upgradestab.ach_dist3.addEventListener(MouseEvent.MOUSE_OUT, mOutExplane);
			
			if(achKnockout)
			{
				upgradestab.ach_ko.alpha = 1;
			}else{upgradestab.ach_ko.alpha = .5;}
			if(achTouchdown)
			{
				upgradestab.ach_touchdown.alpha = 1;
			}else{upgradestab.ach_touchdown.alpha = .5;}
			if(achHomerun)
			{
				upgradestab.ach_homerun.alpha = 1;
			}else{upgradestab.ach_homerun.alpha = .5;}
			if(achStrenght)
			{
				upgradestab.ach_strongest.alpha = 1;
			}else{upgradestab.ach_strongest.alpha = .5;}
			if(achCircusInTown)
			{
				upgradestab.ach_circusInTown.alpha = 1;
			}else{upgradestab.ach_circusInTown.alpha = .5;}
			if(achDog)
			{
				upgradestab.ach_hungrieDog.alpha = 1;
			}else{upgradestab.ach_hungrieDog.alpha = .5;}
			if(achDrowned)
			{
				upgradestab.ach_Drowned.alpha = 1;
			}else{upgradestab.ach_Drowned.alpha = .5;}
			if(achFOE){
				upgradestab.ach_FOE.alpha = 1;
			}else{upgradestab.ach_FOE.alpha = .5;}
			if(achThrown){
				upgradestab.ach_thrown.alpha = 1;
			}else{upgradestab.ach_thrown.alpha = .5;}
			if(achMoney){
				upgradestab.ach_money.alpha = 1;
			}else{upgradestab.ach_money.alpha = .5;}
			if(achBuyATicket){
				upgradestab.ach_buyATicket.alpha = 1;
			}else{upgradestab.ach_buyATicket.alpha = .5;}
			if(achSun){
				upgradestab.ach_sunny.alpha = 1;
			}else{upgradestab.ach_sunny.alpha = .5;}
			if(achHungryBird){
				upgradestab.ach_hungrieBird.alpha = 1;
			}else{upgradestab.ach_hungrieBird.alpha = .5;}
			if(achDistance1){
				upgradestab.ach_dist1.alpha = 1;
			}else{upgradestab.ach_dist1.alpha = .5;}
			if(achDistance2){
				upgradestab.ach_dist2.alpha = 1;
			}else{upgradestab.ach_dist2.alpha = .5;}
			if(achDistance3){
				upgradestab.ach_dist3.alpha = 1;
			}else{upgradestab.ach_dist3.alpha = .5;}
						
		
			
			dirX = 0;
			dirY = 0;
			
			gamebgCheck = gamebackground.x;
			}
			roundEnd = true;
			}
		}
		public function saveFinnaly(mouseEvent:MouseEvent)
		{
			
			upgradestab.recordInfo.text = "Please fill all fields!";
			if(upgradestab.replyName.text != null || upgradestab.playerName.text){
			var level:PlayerLevel = new PlayerLevel();
    		level.Name = upgradestab.replyName.text;
			level.PlayerName = upgradestab.playerName.text;
    		level.Data = levelData; // level data is a string and can be up to about 3 megabytes
			var my_thumbnail = null;
			
   		 PlayerLevels.Save(level, my_thumbnail, this.SaveComplete);
		 
			}else{
				
			}
			
		}
		
		function SaveComplete(level:PlayerLevel, response:Object):void
		{
    		if(response.Success)
    		{
				upgradestab.recordInfo.text = level.LevelId;
				upgradestab.recordInfo2.text = "Copy this id and give it to your friend:";
      		  trace("Level saved successfully, the level parameter is ready for use!");
  		  }
  		  else
  		  {
       		 // failed because of response.ErrorCode
   		 }
		}
		
		public function recordAnim(e:MouseEvent)
		{
			upgradestab.animateToRecord();
		}
		public function recordAnimBack(e:MouseEvent)
		{
			upgradestab.animateFromRecord();
		}
		public function achiveAnim(e:MouseEvent)
		{
			upgradestab.animateToAchivements();
		}
		public function fromAchiveAnim(e:MouseEvent)
		{
			upgradestab.animateFromAchivements();
		}
		
		public function buyFunction(e:MouseEvent)
		{
			switch (shoptab.discription.currentFrame)
			{
				case 1:
				trace ("nista nije oznaceono");
				
				break;
				case 2:
				trace ("paper wings");
				
				if(upgradeWingsMetal == false && upgradeFabricWings == false){
				if(upgradeWingsPaper)
				{
					trace("upgrade vec kupljen");
				}else{
					
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney);
					
					FSupgradeWingsWood = false;
					upgradeWingsPaper = true;
					FSupgradeWingsPaper = true;
					shoptab.kriloC2.visible = false;
					
					setVal("upgradeWingsPaper","t");
					
					if(FSupgradeRocketSmall)
				{
					zombieShape = 6;
				}
				else if(FSupgradeRocketMedium)
				{
					zombieShape = 7;
				}
				else if(FSupgradeRocketBig)
				{
					zombieShape = 8;
				}
				else{
					zombieShape = 2;
				}
					
					}
					}
					
				}
				
				break;
				case 3:
				trace ("wood wings");
				if(upgradeWingsPaper == false && upgradeWingsMetal == false && upgradeFabricWings == false){
				if(upgradeWingsWood)
				{
					trace("upgrade vec kupljen");
				}else{
					
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										
										FSupgradeWingsWood = true;
										upgradeWingsWood = true;
										shoptab.kriloC1.visible = false;
										setVal("upgradeWingsWood","t");
										trace("URS: "+upgradeRocketSmall);
				if(FSupgradeRocketSmall)
				{
					zombieShape = 15;
				}
				else if(FSupgradeRocketMedium)
				{
					zombieShape = 16;
				}
				else if(FSupgradeRocketBig)
				{
					zombieShape = 17;
				}
				else{
					zombieShape = 3;
				}
										
					}

					}
				}
				break;
				case 4:
				trace ("metal wings");
				if(upgradeFabricWings == false){
				if(upgradeWingsMetal)
				{
					trace("upgrade vec kupljen");
				}else{
					
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										
										FSupgradeWingsWood = false;
				FSupgradeWingsPaper = false;
				FSupgradeWingsMetal = true;
				shoptab.kriloC3.visible = false;
										upgradeWingsMetal = true;
										setVal("upgradeWingsMetal","t");
										
				if(FSupgradeRocketSmall)
				{
					zombieShape = 12;
				}
				else if(FSupgradeRocketMedium)
				{
					zombieShape = 13;
				}
				else if(FSupgradeRocketBig)
				{
					zombieShape = 14;
				}
				else{
					zombieShape = 4;
				}
										
										
					}
					}
				}
				break;
				case 5:
				trace ("small rocket");
				if(upgradeRocketMedium == false && upgradeRocketBig == false){
				if(upgradeRocketSmall)
				{
					trace("upgrade vec kupljen");
				}else{
					
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										shoptab.raketaC1.visible = false;
										FSupgradeRocketSmall = true;
										upgradeRocketSmall = true;
										setVal("upgradeRocketSmall","t");
										
										if(FSupgradeWingsPaper){
											zombieShape = 6;
										}else if(FSupgradeWingsMetal) {
											zombieShape = 12;
										}else if(FSupgradeWingsWood) {
											zombieShape = 15;
										}else if(FSupgradeFabricWings){
											zombieShape = 9;
										}else{
										zombieShape = 18;
										}
					}
				}}
				break;
				case 6:
				trace ("medium rocket");
				if(upgradeRocketBig == false){
				if(upgradeRocketMedium)
				{
					trace("upgrade vec kupljen");
				}else{
					
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										
										FSupgradeRocketSmall = false;
				FSupgradeRocketMedium = true;
				shoptab.raketaC2.visible = false;
										upgradeRocketMedium = true;
										setVal("upgradeRocketMedium","t");
										if(FSupgradeWingsPaper){
											zombieShape = 7;
										}else if(FSupgradeWingsMetal) {
											zombieShape = 13;
										}else if(FSupgradeWingsWood) {
											zombieShape = 16;
										}else if(FSupgradeFabricWings){
											zombieShape = 10;
										}else{
										zombieShape = 19;
										}
					}
				}}
				break;
				case 7:
				trace ("big rocket");
				if(upgradeRocketBig)
				{
					trace("upgrade vec kupljen");
				}else{
					
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										
										FSupgradeRocketSmall = false;
				FSupgradeRocketMedium = false;
				FSupgradeRocketBig = true;
				shoptab.raketaC3.visible = false;
										upgradeRocketBig = true;
										setVal("upgradeRocketBig","t");
										if(FSupgradeWingsPaper){
											zombieShape = 8;
										}else if(FSupgradeWingsMetal) {
											zombieShape = 14;
										}else if(FSupgradeWingsWood) {
											zombieShape = 17;
										}else if(FSupgradeFabricWings){
											zombieShape = 11;
										}else{
										zombieShape = 20;
										}
					}
				}
				break;
				case 8:
				trace ("shopping cart");
				if(upgradeShoppingCart)
				{
					trace("upgrade vec kupljen");
				}else{
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										upgradeShoppingCart = true;

					}
				}
				break;
				case 9:
				trace ("meat");
				if(upgradeMeat)
				{
					trace("upgrade vec kupljen");
				}else{
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										upgradeMeat = true;

					}
				}
				break;
				case 10:
				trace ("boxer");
				if(upgradeBoxer)
				{
					trace("upgrade vec kupljen");
				}else{
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										upgradeBoxer = true;

					}
				}
				break;
				case 11:
				trace ("baseball player");
				if(upgradeBaseballPlayer)
				{
					trace("upgrade vec kupljen");
				}else{
					
					if (upgradeRugbyPlayer){
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										upgradeBaseballPlayer = true;
										shoptab.baseballPlayer.gotoAndStop(1);
										setVal("upgradeBaseballPlayer","t");
										humanShape = 3;
										initialPower = 3;

					}}
				}
				break;
				case 12:
				trace ("rugby player");
				if(upgradeRugbyPlayer)
				{
					trace("upgrade vec kupljen");
				}else{
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										upgradeRugbyPlayer = true;
										shoptab.rugbyPlayer.gotoAndStop(1);
										setVal("upgradeRugbyPlayer","t");
										humanShape = 2;
										initialPower = 2;
										
					}

				}
				break;
				case 13:
				trace ("bodie builder");
				if(upgradeBodieBuilder)
				{
					trace("upgrade vec kupljen");
				}else{
					if (upgradeBaseballPlayer){
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										upgradeBodieBuilder = true;
										shoptab.bodieBuilder.gotoAndStop(1);
										setVal("upgradeBodieBuilder","t");
										humanShape = 4;
										initialPower = 4;
										

					}}
				}
				break;
				case 14:
				trace ("clown");
				if(upgradeClown)
				{
					trace("upgrade vec kupljen");
				}else{
					if (upgradeBodieBuilder){
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										upgradeClown = true;
										shoptab.clown.gotoAndStop(1);
										setVal("upgradeClown","t");
										humanShape = 5;
										initialPower = 5;
										

					}}
				}
				break;
				case 15:
				trace ("fabric wings");
				if(upgradeFabricWings)
				{
					trace("upgrade vec kupljen");
				}else{
					
					if(shoptab.cost <= totalGameMoney){
					totalGameMoney -= shoptab.cost;
					trace(totalGameMoney);
					shoptab.walletMoney.text = "$"+String(totalGameMoney);
					shoptab.walletMoney2.text = "$"+String(totalGameMoney)
										
										FSupgradeWingsWood = false;
				FSupgradeWingsPaper = false;
				FSupgradeWingsMetal = false;
				FSupgradeFabricWings = true;
										
										upgradeFabricWings = true;
										shoptab.kriloC4.visible = false;
										setVal("upgradeFabricWings","t");
				if(FSupgradeRocketSmall)
				{
					zombieShape = 9;
				}
				else if(FSupgradeRocketMedium)
				{
					zombieShape = 10;
				}
				else if(FSupgradeRocketBig)
				{
					zombieShape = 11;
				}
				else{
					zombieShape = 5;
				}
										
										
					}

				}
				break;
				default:
				trace ("")
			}
			
			
		}
		
		public function onClickRetry2(mouseEvent:MouseEvent)
		{
			trace("sex");
			shoptab.retryButton.removeEventListener(MouseEvent.CLICK, onClickRetry2);
			
			dispatchEvent(new NavigationEvent(NavigationEvent.RESTART));
		}
		
		
		
		public function mochiScoreSubmit(mouseEvent:MouseEvent)
		{
			trace("sexy");
			
			
var o:Object = { n: [7, 4, 7, 0, 2, 11, 7, 13, 5, 8, 14, 15, 12, 6, 6, 9], f: function (i:Number,s:String):String { if (s.length == 16) return s; return this.f(i+1,s + this.n[i].toString(16));}};
var boardID:String = o.f(0,"");
MochiScores.showLeaderboard({boardID: boardID, score: dist,onClose: function() {}});
		}
		
		public function onClickRetry(mouseEvent:MouseEvent)
		{
			trace("sex");
			
			upgradestab.retryButton.removeEventListener(MouseEvent.CLICK, onClickRetry);
			dispatchEvent(new NavigationEvent(NavigationEvent.RESTART));
		}
		
		public function FrameDif()
		{
			DT = getTimer() - TimeLastFrame; 
			TimeLastFrame=getTimer();
			
		}
	
	public function onClickPowerAngle(event:Event){
		if(begin == true)//???
		{
		if (angOrPow == -1){
			angOrPow ++;
			
		}else if(angOrPow == 0){
			powerbar.play();
			anglebar.stop();
			angOrPow++;
			trace("Angle: "+anglebar.angleArrowRotation.rotation);
		} else if(angOrPow == 1){
			
			powerbar.stop();
			angOrPow++;
			power = powerbar.powerValue.x * 1.7 * initialPower;
			
			soundEfectSoundChanel.stop();
			SoundMixer.stopAll();
			soundEfectSoundChanel = songHit.play(0,int.MAX_VALUE);
				if (humanShape == 1)
				{
					
					Humans.boxer.gotoAndStop(2);//skizit anim  -.- neda mi se sad, sutra -.-
					sfxSoundChanel = punchSound.play();
					if(achKnockout == false){
					if(anglebar.angleArrowRotation.rotation>-55 && anglebar.angleArrowRotation.rotation<-45 && powerbar.powerValue.x > 110)
					{
						achKnockout = true;
						achivementsshower.showAchivement("ko");
						setVal("achKnockout","t");
					}}
				}
				
				if (humanShape == 2)
				{
					Humans.footballer.gotoAndStop(2);//skizit anim  -.- neda mi se sad, sutra -.-
					sfxSoundChanel = nflSound.play();
					if(achTouchdown == false){
					if(anglebar.angleArrowRotation.rotation>-55 && anglebar.angleArrowRotation.rotation<-45 && powerbar.powerValue.x > 110)
					{
						achTouchdown = true;
						achivementsshower.showAchivement("td");
						setVal("achTouchdown","t");
					}}
				}
				
				if (humanShape == 3)
				{
					Humans.baseball.gotoAndStop(2);//skizit anim  -.- neda mi se sad, sutra -.-
				    sfxSoundChanel = baseballSound.play();
					if(achHomerun == false){
					if(anglebar.angleArrowRotation.rotation>-55 && anglebar.angleArrowRotation.rotation<-45 && powerbar.powerValue.x > 110)
					{
						achHomerun = true;
						achivementsshower.showAchivement("hr");
						setVal("achHomerun","t");
					}}
				}
				
				if (humanShape == 4)
				{
					Humans.builder.gotoAndStop(2);//skizit anim  -.- neda mi se sad, sutra -.-
					sfxSoundChanel = builderSound.play();
					if(achStrenght == false){
					if(anglebar.angleArrowRotation.rotation>-55 && anglebar.angleArrowRotation.rotation<-45 && power > 800)
					{
						achStrenght = true;
						achivementsshower.showAchivement("str");
						setVal("achStrenght","t");
						
					}}
				}
				
				if (humanShape == 5)
				{
					Humans.clown.gotoAndStop(2);//skizit anim  -.- neda mi se sad, sutra -.-
					sfxSoundChanel = clownSound.play();
					
					if(achCircusInTown == false){
					if(anglebar.angleArrowRotation.rotation>-55 && anglebar.angleArrowRotation.rotation<-45 && power > 1000)
					{
						achCircusInTown = true;
						achivementsshower.showAchivement("circus");
						setVal("achCircusInTown","t");
					}}
				}
			
			
			angle = anglebar.angleArrowRotation.rotation;
			
			power = powerbar.powerValue.x * 1.7 * initialPower;
			power = powerbar.powerValue.x * 1.7 * initialPower;
			trace("Power: "+power);
			
			levelData = angle+"$"+power;
			if(power <= 0)
			{
				power = 0;
			}
			
			
			trace(angle);
			trace(power);
			FrameDif();	
			//trace ("DT: "+DT);
			
			dirX = Math.cos(angle*Math.PI/180)*power*2.5;
			dirY = Math.sin(angle*Math.PI/180)*power*2.5;
		
			trace("dirX: " +dirX);
			trace("dirY: " +dirY);
			
			powerbar.visible = false;
			anglebar.visible = false;
			zombie.visible = true;
			
			switch (zombieShape){
				case 1:
				zombie.zombieWithoutUpgrades.gotoAndStop(2);
				break;
				case 2:
				zombie.zombiePaperWings.gotoAndStop(2);
				break;
				case 3:
				zombie.zombieWoodWings.gotoAndStop(2);
				break;
				case 4:
				zombie.zombieMetalWings.gotoAndStop(2);
				break;
				case 5:
				zombie.zombieWings.gotoAndStop(2);
				break;
				case 6:
				zombie.zombiepaps.gotoAndStop(2);
				break;
				case 7:
				zombie.zombiepapm.gotoAndStop(2);
				break;
				case 8:
				zombie.zombiepapb.gotoAndStop(2);
				break;
				case 9:
				zombie.zombiewins.gotoAndStop(2);
				break;
				case 10:
				zombie.zombiewinm.gotoAndStop(2);
				break;
				case 11:
				zombie.zombiewinb.gotoAndStop(2);
				break;
				case 12:
				zombie.zombiemets.gotoAndStop(2);
				break;
				case 13:
				zombie.zombiemetm.gotoAndStop(2);
				break;
				case 14:
				zombie.zombiemetb.gotoAndStop(2);
				break;
				case 15:
				zombie.zombiewods.gotoAndStop(2);
				break;
				case 16:
				zombie.zombiewodm.gotoAndStop(2);
				break;
				case 17:
				zombie.zombiewodb.gotoAndStop(2);
				break;
				case 18:
				zombie.zombies.gotoAndStop(2);
				break;
				case 19:
				zombie.zombiem.gotoAndStop(2);
				break;
				case 20:
				zombie.zombieb.gotoAndStop(2);
				break;
				
				
			}
				
			
			addEventListener(Event.ENTER_FRAME,zombieFly);
			
			
			
		} else if (angOrPow == 2){
			
			
		} else if (angOrPow == 6){
			
		}else if (angOrPow == 5)
		{
			trace("wtf");
			
			
			
			angOrPow++;
			
			soundEfectSoundChanel.stop();
			SoundMixer.stopAll();
			soundEfectSoundChanel = songHit.play(0,int.MAX_VALUE);
				if (humanShape == 1)
				{
					
					Humans.boxer.gotoAndStop(2);//skizit anim  -.- neda mi se sad, sutra -.-
					if(achKnockout == false){
					if(anglebar.angleArrowRotation.rotation>-55 && anglebar.angleArrowRotation.rotation<-45 && powerbar.powerValue.x > 110)
					{
						achKnockout = true;
						achivementsshower.showAchivement("ko");
						setVal("achKnockout","t");
						sfxSoundChanel = achievmentSound.play();
					}}
				}
				
				if (humanShape == 2)
				{
					Humans.footballer.gotoAndStop(2);//skizit anim  -.- neda mi se sad, sutra -.-
					if(achTouchdown == false){
					if(anglebar.angleArrowRotation.rotation>-55 && anglebar.angleArrowRotation.rotation<-45 && powerbar.powerValue.x > 110)
					{
						achTouchdown = true;
						achivementsshower.showAchivement("td");
						setVal("achTouchdown","t");
						sfxSoundChanel = achievmentSound.play();
					}}
				}
				
				if (humanShape == 3)
				{
					Humans.baseball.gotoAndStop(2);//skizit anim  -.- neda mi se sad, sutra -.-
					if(achHomerun == false){
					if(anglebar.angleArrowRotation.rotation>-55 && anglebar.angleArrowRotation.rotation<-45 && powerbar.powerValue.x > 110)
					{
						achHomerun = true;
						achivementsshower.showAchivement("hr");
						setVal("achHomerun","t");
						sfxSoundChanel = achievmentSound.play();
					}}
				}
				
				if (humanShape == 4)
				{
					Humans.builder.gotoAndStop(2);//skizit anim  -.- neda mi se sad, sutra -.-
					if(achStrenght == false){
					if(anglebar.angleArrowRotation.rotation>-55 && anglebar.angleArrowRotation.rotation<-45 && power > 800)
					{
						achStrenght = true;
						achivementsshower.showAchivement("str");
						setVal("achStrenght","t");
						sfxSoundChanel = achievmentSound.play();
					}}
				}
				
				if (humanShape == 5)
				{
					Humans.clown.gotoAndStop(2);//skizit anim  -.- neda mi se sad, sutra -.-
					if(achCircusInTown == false){
					if(anglebar.angleArrowRotation.rotation>-55 && anglebar.angleArrowRotation.rotation<-45 && power > 1000)
					{
						achCircusInTown = true;
						achivementsshower.showAchivement("circus");
						setVal("achCircusInTown","t");
						sfxSoundChanel = achievmentSound.play();
					}}
				}
			
			
			levelData = angle+"$"+power;
			if(power <= 0)
			{
				power = 0;
			}
			
			
			trace(angle);
			trace(power);
			FrameDif();	
			//trace ("DT: "+DT);
			
			dirX = Math.cos(angleLoaded*Math.PI/180)*powerLoaded*2.5;
			dirY = Math.sin(angleLoaded*Math.PI/180)*powerLoaded*2.5;
		
			trace("dirX: " +dirX);
			trace("dirY: " +dirY);
			
			powerbar.visible = false;
			anglebar.visible = false;
			zombie.visible = true;
			
			switch (zombieShape){
				case 1:
				zombie.zombieWithoutUpgrades.gotoAndStop(2);
				break;
				case 2:
				zombie.zombiePaperWings.gotoAndStop(2);
				break;
				case 3:
				zombie.zombieWoodWings.gotoAndStop(2);
				break;
				case 4:
				zombie.zombieMetalWings.gotoAndStop(2);
				break;
				case 5:
				zombie.zombieWings.gotoAndStop(2);
				break;
				case 6:
				zombie.zombiepaps.gotoAndStop(2);
				break;
				case 7:
				zombie.zombiepapm.gotoAndStop(2);
				break;
				case 8:
				zombie.zombiepapb.gotoAndStop(2);
				break;
				case 9:
				zombie.zombiewins.gotoAndStop(2);
				break;
				case 10:
				zombie.zombiewinm.gotoAndStop(2);
				break;
				case 11:
				zombie.zombiewinb.gotoAndStop(2);
				break;
				case 12:
				zombie.zombiemets.gotoAndStop(2);
				break;
				case 13:
				zombie.zombiemetm.gotoAndStop(2);
				break;
				case 14:
				zombie.zombiemetb.gotoAndStop(2);
				break;
				case 15:
				zombie.zombiewods.gotoAndStop(2);
				break;
				case 16:
				zombie.zombiewodm.gotoAndStop(2);
				break;
				case 17:
				zombie.zombiewodb.gotoAndStop(2);
				break;
				case 18:
				zombie.zombies.gotoAndStop(2);
				break;
				case 19:
				zombie.zombiem.gotoAndStop(2);
				break;
				case 20:
				zombie.zombieb.gotoAndStop(2);
				break;
				
				
			}
				
			
			addEventListener(Event.ENTER_FRAME,zombieFly);
		}
		}/*?????*/
	}
	
	
	public function rocketPowerStarter(event:Event){
		if (eatenDog == false) {
		if(raketaAktivna == false && fuelLevel == true){
			
			if (upgradeRocketSmall){
				if(upgradeRocketMedium == false && upgradeRocketBig == false){
		stage.addEventListener(Event.ENTER_FRAME,rocketPower);
		distancetext.fuelBar.bar1.play();
		 timerRakete = new Timer(1000, 1);
    		timerRakete.addEventListener(TimerEvent.TIMER, stopRakete);
    		timerRakete.start();
			
			levelData = levelData+"$rocketPressed=true";
				levelData = levelData+"$rocketPressedDistance="+dist;
		raketaAktivna = true;
		fuelLevel = false;
		distancetext.fuelBar.gotoAndStop(1);
		
		
		var otherindex = getChildIndex(zombie);
		trace("other index: "+otherindex);
		/*//Behind that thing:
		setChildIndex(example, otherindex)
		//^ pushes the other thing forward
		//In front:
		setChildIndex(example, otherindex + 1);
		*/
		Fire = new fire();
		Fire.x = zombie.x - 150;
		Fire.y = zombie.y + 5;
		
		addChild(Fire);
		setChildIndex(Fire,otherindex);
		fireCheck = true;
		
		trace("raketa1");
				}
			}
			if (upgradeRocketMedium){
				if(upgradeRocketBig == false){
		stage.addEventListener(Event.ENTER_FRAME,rocketPower);
		distancetext.fuelBar.gotoAndStop(2);
		distancetext.fuelBar.bar2.play();
		 timerRakete = new Timer(2000, 1);
    		timerRakete.addEventListener(TimerEvent.TIMER, stopRakete);
    		timerRakete.start();
		raketaAktivna = true;
		fuelLevel = false;

		var otherindex = getChildIndex(zombie);
		Fire = new fire();
		Fire.x = zombie.x - 155;
		Fire.y = zombie.y + 0;
		addChild(Fire);
		setChildIndex(Fire,otherindex);
		fireCheck = true; 	


		trace("raketa2");
			}
			}
			if (upgradeRocketBig){
		stage.addEventListener(Event.ENTER_FRAME,rocketPower);
		distancetext.fuelBar.gotoAndStop(3);
		distancetext.fuelBar.bar3.play();
		 timerRakete = new Timer(3000, 1);
    		timerRakete.addEventListener(TimerEvent.TIMER, stopRakete);
    		timerRakete.start();
		raketaAktivna = true;
		fuelLevel = false;
		
		var otherindex = getChildIndex(zombie);
		Fire = new fire();
		Fire.x = zombie.x - 160;
		Fire.y = zombie.y + 0;
		addChild(Fire);
		setChildIndex(Fire,otherindex);
		fireCheck = true;
		
		trace("raketa3");
				}
			
			}
		}
	}
	
	public function stopRakete(event:TimerEvent){
		raketaAktivna = false;
		if (contains(Fire))
		{
		removeChild(Fire);
		}
		fireCheck = false;
		
		
	}
	
	public function rocketPower(event:Event){
		if(raketaAktivna){
			
			//////pozicije zombija
			switch(zombie.currentFrame){
				case 6:
				zombie.zombiepaps.gotoAndStop(2);
				break;
				case 7:
				zombie.zombiepapm.gotoAndStop(2);
				break;
				case 8:
				zombie.zombiepapb.gotoAndStop(2);
				break;
				case 9:
				zombie.zombiewins.gotoAndStop(2);
				break;
				case 10:
				zombie.zombiewinm.gotoAndStop(2);
				break;
				case 11:
				zombie.zombiewinb.gotoAndStop(2);
				break;
				case 12:
				zombie.zombiemets.gotoAndStop(2);
				break;
				case 13:
				zombie.zombiemetm.gotoAndStop(2);
				break;
				case 14:
				zombie.zombiemetb.gotoAndStop(2);
				break;
				case 15:
				zombie.zombiewods.gotoAndStop(2);
				break;
				case 16:
				zombie.zombiewodm.gotoAndStop(2);
				break;
				case 17:
				zombie.zombiewodb.gotoAndStop(2);
				break;
				case 18:
				zombie.zombies.gotoAndStop(2);
				break;
				case 19:
				zombie.zombiem.gotoAndStop(2);
				break;
				case 20:
				zombie.zombieb.gotoAndStop(2);
				break;
				
			}
			

			zombie.rotation = -5;
			dirY = -Math.abs(dirY)-1;
			dirX = dirX+10;
		trace("Letim")
		}
	}
	
	public function zombieFly(event:Event){
		
		FrameDif();
		dirYm=dirY;
		dirY += gravity/faller;
		distancetracker.x -= dirX/devidedBy*DT;
		if(dirYMax < -60){
		zombie.rotation +=3;
		}


		if(fireCheck){
			if(zombiebeyondrange.visible == true){
				Fire.visible = false;
			} else {
				Fire.visible = true;
			}
			Fire.x = zombie.x - 150;
		Fire.y = zombie.y + 5;
		}
		//upgradeWingsWood
		if(upgradeWingsWood){
			if(dirY > 1){
				if(directionSafe == false)
					faller = 1.2;
					directionSafe = true;
			}
		}
		
		if(upgradeWingsPaper){
			if(dirY > 1){
				if(directionSafe == false)
					faller = 1.4;
					directionSafe = true;
			}
		}
		if(upgradeWingsMetal){
			if(dirY > 1){
				if(directionSafe == false)
					faller = 1.7;
					directionSafe = true;
			}
		}
		if(upgradeFabricWings){
			if(dirY > 1){
				if(directionSafe == false)
					faller = 2;
					directionSafe = true;
			}
		}
		
		
		if (dirY < 1){
			directionSafe = false;
		}

		///upgrade raketaaaa :)
		if(upgradeRocketSmall || upgradeRocketMedium || upgradeRocketBig){
			if(playingReplay == false){
				
			distancetext.fuelBar.visible=true;
			stage.addEventListener(MouseEvent.CLICK, rocketPowerStarter);
			//addEventListener(Event.ENTER_FRAME,rocketPower);
			}
		}
		///// rocket kraj


		Humans.x -= dirX/devidedBy*DT;
		Humans.y = gamebackground.y + 50;
		
		
		
		if(achDistance1 == false)
		{
			if(dist >= 1000){
				achDistance1 = true;
				achivementsshower.showAchivement("dist1");
				setVal("achDistance1","t");
				sfxSoundChanel = achievmentSound.play();
			}
		}
		
		if(achDistance2 == false)
		{
			if(dist >= 5000){
				achDistance2 = true;
				achivementsshower.showAchivement("dist2");
				setVal("achDistance2","t");
				sfxSoundChanel = achievmentSound.play();
			}
		}
		if(achDistance3 == false)
		{
			if(dist >= 10000){
				achDistance3 = true;
				achivementsshower.showAchivement("dist3");
				setVal("achDistance3","t");
				sfxSoundChanel = achievmentSound.play();
			}
		}
		
			

		
		if(zombie.x < 350){
		zombie.x += dirX/250*DT;
		}
		
		if(zombie.y >= 120){
		zombie.y += dirY/150*DT;
		}
		
		realBackground.x -= dirX/devidedBy*DT/3;
		realBackground2.x -= dirX/devidedBy*DT/3;
		realBackground3.x -= dirX/devidedBy*DT/3;
		gamebackground.x -=  dirX/devidedBy*DT;
		gamebackground2.x -=  dirX/devidedBy*DT;
		gamebackground3.x -=  dirX/devidedBy*DT;
		
		
		if(gamebackground.x <= -1110){
			
		}
		
		
		if(gamebackground2.x <= -2600){
			gamebackground2.x = gamebackground3.x + gamebackground3.width -5;
		}
		
		if(gamebackground3.x <= -2600){
			gamebackground3.x = gamebackground2.x + gamebackground2.width -5;
		}
		
		if(realBackground.x <= -2600){
			realBackground.x = realBackground3.x + realBackground3.width -5;
		}
		
		if(realBackground2.x <= -2600){
			realBackground2.x = realBackground.x + realBackground.width -5;
		}
		if (realBackground3.x <= -2600)
		{
			realBackground3.x = realBackground2.x + realBackground2.width -5;
		}
		
		
		
		if(zombie.y < 120)
		{
			
			gamebackground.y -= dirY/devidedBy*DT;
		    gamebackground2.y -= dirY/devidedBy*DT;
			gamebackground3.y -= dirY/devidedBy*DT;
			
			realBackground.y = gamebackground.y;
			realBackground2.y = gamebackground.y;
			realBackground3.y = gamebackground.y;
			
			   
			
		}		
		
		//trace("dirX: " +dirX);
		
		if(zombie.y >= 500)
		{
			dirY =- dirY/slowDownValueY;
			dirX =+ dirX/slowDownValueX;
			zombie.y = 500;
			
			
			
			if(dirYMax < -60){
				
				switch(zombieShape)
				{
					case 1:
					if(zombie.zombieWithoutUpgrades.currentFrame == zombie.zombieWithoutUpgrades.totalFrames)
					{
						zombie.zombieWithoutUpgrades.gotoAndStop(2);
							} else {
				
							zombie.zombieWithoutUpgrades.nextFrame();
				
					}
					break;
					case 2:
					if(zombie.zombiePaperWings.currentFrame == zombie.zombiePaperWings.totalFrames)
					{
						zombie.zombiePaperWings.gotoAndStop(2);
							} else {
				
							zombie.zombiePaperWings.nextFrame();
				
					}
					break;
					case 3:
					if(zombie.zombieWoodWings.currentFrame == zombie.zombieWoodWings.totalFrames)
					{
						zombie.zombieWoodWings.gotoAndStop(2);
							} else {
				
							zombie.zombieWoodWings.nextFrame();
				
					}
					break;
					case 4:
					if(zombie.zombieMetalWings.currentFrame == zombie.zombieMetalWings.totalFrames)
					{
						zombie.zombieMetalWings.gotoAndStop(2);
							} else {
				
							zombie.zombieMetalWings.nextFrame();
				
					}
					break;
					case 5:
					if(zombie.zombieWings.currentFrame == zombie.zombieWings.totalFrames)
					{
						zombie.zombieWings.gotoAndStop(2);
							} else {
				
							zombie.zombieWings.nextFrame();
				
					}
					break;
					case 6:
					if(zombie.zombiepaps.currentFrame == zombie.zombiepaps.totalFrames)
					{
						zombie.zombiepaps.gotoAndStop(2);
							} else {
				
							zombie.zombiepaps.nextFrame();
				
					}
					break;
					case 7:
					if(zombie.zombiepapm.currentFrame == zombie.zombiepapm.totalFrames)
					{
						zombie.zombiepapm.gotoAndStop(2);
							} else {
				
							zombie.zombiepapm.nextFrame();
				
					}
					break;
					case 8:
					if(zombie.zombiepapb.currentFrame == zombie.zombiepapb.totalFrames)
					{
						zombie.zombiepapb.gotoAndStop(2);
							} else {
				
							zombie.zombiepapb.nextFrame();
				
					}
					break;
					case 9:
					if(zombie.zombiewins.currentFrame == zombie.zombiewins.totalFrames)
					{
						zombie.zombiewins.gotoAndStop(2);
							} else {
				
							zombie.zombiewins.nextFrame();
				
					}
					break;
					case 10:
					if(zombie.zombiewinm.currentFrame == zombie.zombiewinm.totalFrames)
					{
						zombie.zombiewinm.gotoAndStop(2);
							} else {
				
							zombie.zombiewinm.nextFrame();
				
					}
					break;
					case 11:
					if(zombie.zombiewinb.currentFrame == zombie.zombiewinb.totalFrames)
					{
						zombie.zombiewinb.gotoAndStop(2);
							} else {
				
							zombie.zombiewinb.nextFrame();
				
					}
					break;
					case 12:
					if(zombie.zombiemets.currentFrame == zombie.zombiemets.totalFrames)
					{
						zombie.zombiemets.gotoAndStop(2);
							} else {
				
							zombie.zombiemets.nextFrame();
				
					}
					break;
					case 13:
					if(zombie.zombiemetm.currentFrame == zombie.zombiemetm.totalFrames)
					{
						zombie.zombiemetm.gotoAndStop(2);
							} else {
				
							zombie.zombiemetm.nextFrame();
				
					}
					break;
					case 14:
					if(zombie.zombiemetb.currentFrame == zombie.zombiemetb.totalFrames)
					{
						zombie.zombiemetb.gotoAndStop(2);
							} else {
				
							zombie.zombiemetb.nextFrame();
				
					}
					break;
					case 15:
					if(zombie.zombiewods.currentFrame == zombie.zombiewods.totalFrames)
					{
						zombie.zombiewods.gotoAndStop(2);
							} else {
				
							zombie.zombiewods.nextFrame();
				
					}
					break;
					case 16:
					if(zombie.zombiewodm.currentFrame == zombie.zombiewodm.totalFrames)
					{
						zombie.zombiewodm.gotoAndStop(2);
							} else {
				
							zombie.zombiewodm.nextFrame();
				
					}
					break;
					case 17:
					if(zombie.zombiewodb.currentFrame == zombie.zombiewodb.totalFrames)
					{
						zombie.zombiewodb.gotoAndStop(2);
							} else {
				
							zombie.zombiewodb.nextFrame();
				
					}
					break;
					case 18:
					if(zombie.zombies.currentFrame == zombie.zombies.totalFrames)
					{
						zombie.zombies.gotoAndStop(2);
							} else {
				
							zombie.zombies.nextFrame();
				
					}
					break;
					case 19:
					if(zombie.zombiem.currentFrame == zombie.zombiem.totalFrames)
					{
						zombie.zombiem.gotoAndStop(2);
							} else {
				
							zombie.zombiem.nextFrame();
				
					}
					break;
					case 20:
					if(zombie.zombieb.currentFrame == zombie.zombieb.totalFrames)
					{
						zombie.zombieb.gotoAndStop(2);
							} else {
				
							zombie.zombieb.nextFrame();
				
					}
					break;
					
					
				}
				
				
				
				/*
				if(zombieShape == 1)
				{
					if(zombie.zombieWithoutUpgrades.currentFrame == zombie.zombieWithoutUpgrades.totalFrames)
					{
						zombie.zombieWithoutUpgrades.gotoAndStop(2);
							} else {
				
							zombie.zombieWithoutUpgrades.nextFrame();
				
					}
				}
				
				
				else if(zombieShape == 2)
				{
					if(zombie.zombiePaperWings.currentFrame == zombie.zombiePaperWings.totalFrames)
					{
						zombie.zombiePaperWings.gotoAndStop(2);
							} else {
				
							zombie.zombiePaperWings.nextFrame();
				
					}
				}
				
				else if(zombieShape == 3)
				{
					if(zombie.zombieWoodWings.currentFrame == zombie.zombieWoodWings.totalFrames)
					{
						zombie.zombieWoodWings.gotoAndStop(2);
							} else {
				
							zombie.zombieWoodWings.nextFrame();
				
					}
				}
				
				else if(zombieShape == 4)
				{
					if(zombie.zombieMetalWings.currentFrame == zombie.zombieMetalWings.totalFrames)
					{
						zombie.zombieMetalWings.gotoAndStop(2);
							} else {
				
							zombie.zombieMetalWings.nextFrame();
				
					}
				}
				
				else if(zombieShape == 5)
				{
					if(zombie.zombieWings.currentFrame == zombie.zombieWings.totalFrames)
					{
						zombie.zombieWings.gotoAndStop(2);
							} else {
				
							zombie.zombieWings.nextFrame();
				
					}
				}
			
			/////UBACUJEMMMMMM///////
			/////////////////////////
			/////////////////////////
			else if(zombieShape == 6)
				{
					if(zombie.zombiepaps.currentFrame == zombie.zombiepaps.totalFrames)
					{
						zombie.zombiepaps.gotoAndStop(2);
							} else {
				
							zombie.zombiepaps.nextFrame();
				
					}
				}
				else if(zombieShape == 7)
				{
					if(zombie.zombiepapm.currentFrame == zombie.zombiepapm.totalFrames)
					{
						zombie.zombiepapm.gotoAndStop(2);
							} else {
				
							zombie.zombiepapm.nextFrame();
				
					}
				}
				else if(zombieShape == 8)
				{
					if(zombie.zombiepapb.currentFrame == zombie.zombiepapb.totalFrames)
					{
						zombie.zombiepapb.gotoAndStop(2);
							} else {
				
							zombie.zombiepapb.nextFrame();
				
					}
				}
				else if(zombieShape == 9)
				{
					if(zombie.zombiewins.currentFrame == zombie.zombiewins.totalFrames)
					{
						zombie.zombiewins.gotoAndStop(2);
							} else {
				
							zombie.zombiewins.nextFrame();
				
					}
				}
				else if(zombieShape == 10)
				{
					if(zombie.zombiewinm.currentFrame == zombie.zombiewinm.totalFrames)
					{
						zombie.zombiewinm.gotoAndStop(2);
							} else {
				
							zombie.zombiewinm.nextFrame();
				
					}
				}
				else if(zombieShape == 11)
				{
					if(zombie.zombiewinb.currentFrame == zombie.zombiewinb.totalFrames)
					{
						zombie.zombiewinb.gotoAndStop(2);
							} else {
				
							zombie.zombiewinb.nextFrame();
				
					}
				}
				else if(zombieShape == 12)
				{
					if(zombie.zombiemets.currentFrame == zombie.zombiemets.totalFrames)
					{
						zombie.zombiemets.gotoAndStop(2);
							} else {
				
							zombie.zombiemets.nextFrame();
				
					}
				}
				else if(zombieShape == 13)
				{
					if(zombie.zombiemetm.currentFrame == zombie.zombiemetm.totalFrames)
					{
						zombie.zombiemetm.gotoAndStop(2);
							} else {
				
							zombie.zombiemetm.nextFrame();
				
					}
				}
				else if(zombieShape == 14)
				{
					if(zombie.zombiemetb.currentFrame == zombie.zombiemetb.totalFrames)
					{
						zombie.zombiemetb.gotoAndStop(2);
							} else {
				
							zombie.zombiemetb.nextFrame();
				
					}
				}
				else if(zombieShape == 15)
				{
					if(zombie.zombiewods.currentFrame == zombie.zombiewods.totalFrames)
					{
						zombie.zombiewods.gotoAndStop(2);
							} else {
				
							zombie.zombiewods.nextFrame();
				
					}
				}
				else if(zombieShape == 16)
				{
					if(zombie.zombiewodm.currentFrame == zombie.zombiewodm.totalFrames)
					{
						zombie.zombiewodm.gotoAndStop(2);
							} else {
				
							zombie.zombiewodm.nextFrame();
				
					}
				}
				else if(zombieShape == 17)
				{
					if(zombie.zombiewodb.currentFrame == zombie.zombiewodb.totalFrames)
					{
						zombie.zombiewodb.gotoAndStop(2);
							} else {
				
							zombie.zombiewodb.nextFrame();
				
					}
				}
				else if(zombieShape == 18)
				{
					if(zombie.zombies.currentFrame == zombie.zombies.totalFrames)
					{
						zombie.zombies.gotoAndStop(2);
							} else {
				
							zombie.zombies.nextFrame();
				
					}
				}
				else if(zombieShape == 19)
				{
					if(zombie.zombiem.currentFrame == zombie.zombiem.totalFrames)
					{
						zombie.zombiem.gotoAndStop(2);
							} else {
				
							zombie.zombiem.nextFrame();
				
					}
				}
				else if(zombieShape == 20)
				{
					if(zombie.zombieb.currentFrame == zombie.zombieb.totalFrames)
					{
						zombie.zombieb.gotoAndStop(2);
							} else {
				
							zombie.zombieb.nextFrame();
				
					}
				}
				*/
			//////gotovo/////////////
			/////////////////////////
			/////////////////////////
			
			
			
			if(pelCheck == false){
				if(dirYMax < -60){
					Blod = new blod();
			addChild( Blod );
			
			Blod.x = zombie.x;
			Blod.y = zombie.y;
			
			
			BT = true;
				} 
			}}else
				{ 
				
				switch(zombieShape){
					case 1:
					zombie.zombieWithoutUpgrades.gotoAndStop(4)
					break;
					case 2:
					zombie.zombiePaperWings.gotoAndStop(4); 
					break;
					case 3:
					zombie.zombieWoodWings.gotoAndStop(4);
					break;
					case 4:
					zombie.zombieMetalWings.gotoAndStop(4);
					break;
					case 5:
					zombie.zombieWings.gotoAndStop(4); 
					break;
					case 6:
					zombie.zombiepaps.gotoAndStop(4); 
					break;
					case 7:
					zombie.zombiepapm.gotoAndStop(4); 
					break;
					case 8:
					zombie.zombiepapb.gotoAndStop(4);
					break;
					case 9:
					zombie.zombiewins.gotoAndStop(4); 
					break;
					case 10:
					zombie.zombiewinm.gotoAndStop(4);
					break;
					case 11:
					zombie.zombiewinb.gotoAndStop(4); 
					break;
					case 12:
					zombie.zombiemets.gotoAndStop(4); 
					break;
					case 13:
					zombie.zombiemetm.gotoAndStop(4); 
					break;
					case 14:
					zombie.zombiemetb.gotoAndStop(4); 
					break;
					case 15:
					zombie.zombiewods.gotoAndStop(4);
					break;
					case 16:
					zombie.zombiewodm.gotoAndStop(4); 
					break;
					case 17:
					zombie.zombiewodb.gotoAndStop(4); 
					break;
					case 18:
					zombie.zombies.gotoAndStop(4); 
					break;
					case 19:
					zombie.zombiem.gotoAndStop(4); 
					break;
					case 20:
					zombie.zombieb.gotoAndStop(4); 
					break;
					
					
				}
					/*	if(zombieShape == 1)
						{
						zombie.zombieWithoutUpgrades.gotoAndStop(4)
						}
						
						else if(zombieShape == 2)
						{
						zombie.zombiePaperWings.gotoAndStop(4); 
						}
						
						else if(zombieShape == 3)
						{
						zombie.zombieWoodWings.gotoAndStop(4); 
						}
						
						else if(zombieShape == 4)
						{
						zombie.zombieMetalWings.gotoAndStop(4); 
						}
						
						else if(zombieShape == 5)
						{
						zombie.zombieWings.gotoAndStop(4); 
						}
						/////////
						
						else if(zombieShape == 6)
						{
						zombie.zombiepaps.gotoAndStop(4); 
						}
						else if(zombieShape == 7)
						{
						zombie.zombiepapm.gotoAndStop(4); 
						}
						else if(zombieShape == 8)
						{
						zombie.zombiepapb.gotoAndStop(4); 
						}
						else if(zombieShape == 9)
						{
						zombie.zombiewins.gotoAndStop(4); 
						}
						else if(zombieShape == 10)
						{
						zombie.zombiewinm.gotoAndStop(4); 
						}
						else if(zombieShape == 11)
						{
						zombie.zombiewinb.gotoAndStop(4); 
						}
						else if(zombieShape == 12)
						{
						zombie.zombiemets.gotoAndStop(4); 
						}
						else if(zombieShape == 13)
						{
						zombie.zombiemetm.gotoAndStop(4); 
						}
						else if(zombieShape == 14)
						{
						zombie.zombiemetb.gotoAndStop(4); 
						}
						else if(zombieShape == 15)
						{
						zombie.zombiewods.gotoAndStop(4); 
						}
						else if(zombieShape == 16)
						{
						zombie.zombiewodm.gotoAndStop(4); 
						}
						else if(zombieShape == 17)
						{
						zombie.zombiewodb.gotoAndStop(4); 
						}
						else if(zombieShape == 18)
						{
						zombie.zombies.gotoAndStop(4); 
						}
						else if(zombieShape == 19)
						{
						zombie.zombiem.gotoAndStop(4); 
						}
						else if(zombieShape == 20)
						{
						zombie.zombieb.gotoAndStop(4); 
						}
						/////////*/
						zombie.rotation = 0;
						
						
						
				}
			dirYMax = 0;
		}
		
		if(BT == true ){
			
		if ( Blod.a1.currentFrame == Blod.a1.totalFrames )
		{
				if (contains(Blod))
				{
				removeChild(Blod);
				}
				BT = false;
			}
			
		}
		
		
		
				
		if(gamebackground.y < 0){
			realBackground.y = 0;
			realBackground2.y = 0;
			realBackground3.y = 0;
			gamebackground.y = 0;
			gamebackground2.y = 0;
			gamebackground3.y = 0;
			zombie.y += dirY/devidedBy*DT;
		} else if(gamebackground.y > 1620){
			realBackground.y = 1620;
			realBackground2.y = 1620;
			realBackground3.y = 1620;
			gamebackground.y = 1620;
			gamebackground2.y = 1620;
			gamebackground3.y = 1620;
			zombiebeyondrange.x = zombie.x;
			zombiebeyondrange.visible = true;
			zombie.visible = false;
		/*gamebackground.y -= dirY/devidedBy;
		gamebackground2.y -= dirY/devidedBy;
		*/} else if((gamebackground.y < 1620) && (pelCheck == false)){
			zombiebeyondrange.visible = false;
			
			zombie.visible = true;
			
		}

		if(stored == false)
		{
			dist2 = dist;
			stored = true;
			
		}
		
		if(storedY == false)
		{
			distY = dist;
			storedY = true;
			
		}
		
		if(storedSound == false)
		{
			soundDist = dist;
			storedSound = true;
			
		}

		
		
		
		//stvaranje oblaka
		
			
			
			
				if(playingReplay == false){
		
		
			if ( Math.random() < 0.5)
				{
			
				
					var scale:Number = Math.ceil(Math.random()*31)+40;;
					var oblakY:Number = Math.ceil(Math.random()*100)+50;
					var ranSpeed:Number = Math.ceil(Math.random()*2)+1;
				    if (dist > dist2 + 15)
					{
					var cloud:Cloud = new Cloud( 800, oblakY, scale);
					army3.push( cloud );
					addChild( cloud );
					cloudPosY.push( oblakY );
					cloudSpeed.push( ranSpeed );
					var cloudindex = getChildIndex( cloud);
					var distancetextindex = getChildIndex( distancetext);
					setChildIndex(zombie, cloudindex);
					setChildIndex(distancetext, cloudindex);
					
					
					stored = false;
					}
					
				 
				}
			
	
				var ki:int = cloudPosY.length - 1;
				var kj:int = cloudSpeed.length - 1;
				var k:int = army3.length - 1;
				var cloud:Cloud;
				while ( k > -1 )
				{
					cloud = army3[k];
					cloud.x -= (dirX/2000*DT)+cloudSpeed[kj];
					cloud.y = gamebackground.y + cloudPosY[ki];
					
					
			
			
			
			
					if(cloud.x < -500)
					{
						removeChild(cloud);
						army3.splice (k, 1);
						cloudPosY.splice (ki, 1);
						cloudSpeed.splice (kj, 1);
					}
			
			
			
					k = k - 1;
					ki= ki - 1;
					kj= kj - 1;
				}
		
			}
				
			
		
		
		//kraj stvaranja oblaka

		if (roundEnd == false){
			
			if(playingReplay == false){
		//pocetak stvaranja dolje
		
		if ( Math.random() < 0.5)
			{
			
				//trace("Broj stvorenih objekata dolje: "+downObjectsNumber)
				
				var ranShapeDown:Number = Math.ceil(Math.random()*4);
				if(dist > dist2 + 15)
				{
					downObjectsNumber++;
					levelData = levelData+"$downObjectNum="+downObjectsNumber;
				levelData = levelData+"$downObjectDistance="+dist;
				var objdown:ObjDown = new ObjDown( 1000, 545, ranShapeDown);
				levelData = levelData+"$downObjectShape="+ranShapeDown;
				army.push( objdown );
				addChild( objdown );
				setChildIndex( zombie, numChildren - 1 );
				stored = false;
				
				}
				 
			}
			
	
			
		var i:int = army.length - 1;
		var objdown:ObjDown;
		while ( i > -1 )
		{
			objdown = army[i];
			objdown.x -= dirX/devidedBy*DT;
			objdown.y = gamebackground.y + 520;
			
			
			if(objdown.currentFrame == 1){ ///////FRAJER
			
			if(PixelPerfectCollisionDetection.isColliding(zombie,objdown,this,true,0))
			  {
				  if(checkAchivementsGuy == false){
					checkAchivementsGuy = true;
				hitGuy++;
				setVal("hitGuy",String(hitGuy));
				trace("GUY: "+hitGuy);
					if(dist > soundDist + 4)
					{
						sfxSoundChanel = punchSound.play();
						storedSound = false;
					}
				if(hitGuy == 50)
				{
					achThrown = true;
				achivementsshower.showAchivement("thrown");
				setVal("achThrown","t");
				sfxSoundChanel = achievmentSound.play();
				}
				
				}
			   objdown.hugeGuy.gotoAndStop(2);
	           dirX =Math.abs(dirX) * 1.3;
			   dirY =-Math.abs(dirY) * 1.4;
			   if(dirYMax >  -150)
			   {
				   dirX =Math.abs(dirX) * 1.6;
				   dirY =- Math.abs(dirY) - 100;
			   }

					 
					
			   }else {checkAchivementsGuy = false;}
			   
			}
			
			if(objdown.currentFrame == 2){ ///////PES
			
			if(PixelPerfectCollisionDetection.isColliding(zombie,objdown,this,true,0)){
				if(checkAchivementsDog == false){
					eatenDog = true;
					dogZaRaketu = true;
					checkAchivementsDog = true;
				hitDog++;
				setVal("hitDog",String(hitDog));
				//trace("DOG: "+hitDog);
				
				if(hitTest == 0){
				sfxSoundChanel = dogSound.play(1,0);
				hitTest = 1;
				}
				
				if(hitDog == 30)
				{
					achDog = true;
					setVal("achDog","t");
				achivementsshower.showAchivement("dog");
				sfxSoundChanel = achievmentSound.play();
				}
				
				}
			   dirX = 0;
			   dirY = 0;
			   objdown.doG.gotoAndStop(2);
			   zombie.visible = false;
			   if(FSupgradeRocketSmall || FSupgradeRocketMedium || FSupgradeRocketBig){
				   if(raketaAktivna == true){
					   raketaAktivna = false;
					   removeChild(Fire);
				   }
			   }
			   if (upgradeRocketSmall)
			 	  {
			  	 
				 	raketaAktivna = false;
					fireCheck = false;
					raketaAktivna = false;
			 	  }
			   pelCheck = true;
			   }else {checkAchivementsDog = false;}
			   
			}
			
			if(objdown.currentFrame == 3){ ///////ZOMBIE
			
			if(PixelPerfectCollisionDetection.isColliding(zombie,objdown,this,true,0)){
				if(checkAchivementsFOE == false){
					checkAchivementsFOE = true;
				hitFOE++;
				if(dist > soundDist + 4)
					{
						sfxSoundChanel = bigZombieSound.play();
						storedSound = false;
					}
				setVal("hitFOE",String(hitFOE));
				//trace("FOE: "+hitFOE);
				if(hitFOE == 50)
				{
					achFOE = true;
					setVal("achFOE","t");
				achivementsshower.showAchivement("foe");
				sfxSoundChanel = achievmentSound.play();
				}
				
				}
			   objdown.hugeZombie.gotoAndStop(2);
			   dirX =Math.abs(dirX) * 1.3;
			   dirY =-Math.abs(dirY) * 1.5;
			   if(dirYMax >  -150)
			   {
				   dirX =Math.abs(dirX) * 1.3;
				   dirY =- Math.abs(dirY) - 100;
			   }
			   }else {checkAchivementsFOE = false;}
			   
			}
			
			if(objdown.currentFrame == 4){ ///////LOKVA
			
			if(PixelPerfectCollisionDetection.isColliding(zombie,objdown,this,true,0)){
				if(checkAchivementsDrowned == false){
				checkAchivementsDrowned = true;
				hitDrowned++;
					if(dist > soundDist + 4)
					{
						sfxSoundChanel = splashSound.play();
						storedSound = false;
					}
				setVal("hitDrowned",String(hitDrowned));
				trace("Drowned: "+hitDrowned);
				if(hitDrowned == 30)
				{
					achDrowned = true;
					setVal("achDrowned","t");
				achivementsshower.showAchivement("drown");
				sfxSoundChanel = achievmentSound.play();
				}
				
				}
			   dirX =Math.abs(dirX) / 1.2;
			   dirY =-Math.abs(dirY) / 1.4;
			   }else {checkAchivementsDrowned = false;}
			   
			   
			}
			
			if(objdown.x < -100)
			{
				removeChild(objdown);
				army.splice (i, 1);
			}
			
			
			
			i = i - 1;
			
		}
			} else {trace("ne stvaram dolje");};
		// kraj stvaranja dolje
		
		//pocetak stvaranja gore
		//trace("distY: "+distY);
		if ( Math.random() < 0.2 )
			{
			
				//trace("Broj stvorenih objekata gore: "+upObjectsNumber)
				//upObjectsNumber++;
				
				
				var randomY:Number = Math.ceil(Math.random()*5) * Math.floor(Math.random() * (-300));
				//var randomX:Number = (Math.ceil(Math.random()*5))*(Math.floor(Math.random() * (140.2))+1000);
				if ( Math.random() < 0.09)
				{
				ranShape= 1;
				}else if ( Math.random() < 0.1)
				{
				ranShape= 3;
				}else if ( Math.random() < 0.3)
				{
				ranShape = 4;
				}else if ( Math.random() < 0.4)
				{
				ranShape = 5;
				}else if ( Math.random() < 0.9)
				{
				ranShape= 2;
				}
				
				
				
				
					
					
			
				if(dist > distY + 10)
				{
			    var objup:ObjUp = new ObjUp( 1000, randomY, ranShape );
				army2.push( objup );
				addChild( objup );
				setChildIndex( zombie, numChildren - 1 );
				if(playingReplay == false){
				setChildIndex( achivementsshower, numChildren - 1 );
				}
				storedY = false;
				pickupPosY.push( randomY );
				}
				
				
				
				 
			}
			
	
		
		var ji:int = pickupPosY.length -1;
		var j:int = army2.length - 1;
		var objup:ObjUp;
		var PPY:Number = 0;
		//trace("j "+j);
		
		while ( j > -1 )
		{
			objup = army2[j];
			objup.x -= dirX/devidedBy*DT;
			objup.y = gamebackground.y + pickupPosY[ji];
			
			
			if(objup.currentFrame == 1){ ///////PELIKAN
			
			if(PixelPerfectCollisionDetection.isColliding(zombie,objup,this,true,0)){
				if(checkAchivementsBird == false){
					dogZaRaketu = true;
					eatenDog = true;
					checkAchivementsBird = true;
				hitBird++;
				setVal("hitBird",String(hitBird));
				trace("Bird: "+hitBird);
				sfxSoundChanel = pelicanSound.play();
				if(hitBird == 20)
				{
					achHungryBird = true;
					setVal("achHungryBird","t");
				achivementsshower.showAchivement("bird");
				sfxSoundChanel = achievmentSound.play();
				}
				
				}
			 dirX = 0;
			   dirY = 0;
			   zombie.y = 900;
			   objup.pellican.gotoAndStop(2);
			   zombie.visible = false;
			   
			   trace("lala");
			   
			   if(FSupgradeRocketSmall || FSupgradeRocketMedium || FSupgradeRocketBig){
				   if(raketaAktivna == true){
					   raketaAktivna = false;
					  removeChild(Fire);
				   }
			   
			   }
			   if (upgradeRocketSmall){
				   
			    raketaAktivna = false;
				fireCheck = false;
			  	raketaAktivna = false;
			  	 }
			   pelCheck = true;
			   }else {checkAchivementsBird = false;}
			   
			}
			if(objup.currentFrame == 2){ ///////PARE
			
			if(PixelPerfectCollisionDetection.isColliding(zombie,objup,this,true,0))
			{
				if(checkAchivementsMoney == false){
					checkAchivementsMoney = true;
				hitMoney++;
				sfxSoundChanel = moneySound.play();
				setVal("hitMoney",String(hitMoney));
				trace("Money: "+hitMoney);
				if(hitMoney == 65)
				{
					achMoney = true;
					setVal("achMoney","t");
				achivementsshower.showAchivement("money");
				sfxSoundChanel = achievmentSound.play();
				}
				
				}
					if( objup.visible == true	)
					{
			 		objup.visible = false;		
				    money +=10;
					}
			   }else {checkAchivementsMoney = false;}
			   
			}
			if(objup.currentFrame == 3){ ///////balon
			
			if(PixelPerfectCollisionDetection.isColliding(zombie,objup,this,true,0)){
				if(checkAchivementsBaloon == false){
					checkAchivementsBaloon = true;
				hitBaloon++;
				setVal("hitBaloon",String(hitBaloon));
				trace("Baloon: "+hitBaloon);
				sfxSoundChanel = balloonSound.play();
				if(hitBaloon == 50)
				{
					achSun = true;
					setVal("achSun","t");
				achivementsshower.showAchivement("sunny");
				sfxSoundChanel = achievmentSound.play();
				}
				
				}
				objup.balon.gotoAndStop(2);
			   dirX = Math.abs(dirX) / 1.1;
			  dirY  =- Math.abs(dirY) / 1.1;
			   }else {checkAchivementsBaloon = false;}
			   
			}
			if(objup.currentFrame == 4){ ///////avion
			
			if(PixelPerfectCollisionDetection.isColliding(zombie,objup,this,true,0)){
				if(checkAchivementsPlane == false){
					checkAchivementsPlane = true;
				hitPlane++;
				setVal("hitPlane",String(hitPlane));
				trace(hitPlane);
				if(hitPlane == 50)
				{
					achBuyATicket = true;
					setVal("achBuyATicket","t");
				achivementsshower.showAchivement("plane");
				sfxSoundChanel = achievmentSound.play();
				}
				
				}
			   dirX = Math.abs(dirX) * 1.1;
			   dirY =- Math.abs(dirY) * 1.4;
			   
			   }else {checkAchivementsPlane = false;}
			   
			}
			if(objup.currentFrame == 5){ ///////GASSSS
			
			if(PixelPerfectCollisionDetection.isColliding(zombie,objup,this,true,0)){
			 		if( objup.visible == true	)
					{
			 		objup.visible = false;		
				    trace("FUELLLLL");
					sfxSoundChanel = fuelSound.play();
					fuelLevel = true;
					if(FSupgradeRocketSmall){
					distancetext.fuelBar.bar1.gotoAndStop(1);
					} else if (FSupgradeRocketMedium){
					distancetext.fuelBar.gotoAndStop(2);
					distancetext.fuelBar.bar2.gotoAndStop(1);
					} else if (FSupgradeRocketBig){
					distancetext.fuelBar.gotoAndStop(3);
					distancetext.fuelBar.bar3.gotoAndStop(1);
					}
					}
			   }
			   
			}
			
			
			
			if(objup.x < -300)
			{
				removeChild(objup);
				army2.splice (j, 1);
			}
			
			PPY += 1;
			j = j - 1;
			ji = ji -1;
		}
		
		// kraj stvaranja gore
		
		
		}
		
		
		if(dirY <= dirYMax){
			dirYMax = dirY;
			//trace("dirYMax: "+dirYMax);
			
		}
		
		
		//trace("DT: "+DT);
		//trace("dirX: " +dirX);
		//trace("dirY: " +dirY);
		
		
		if (roundEnd == false)
		{
			
			dist = Math.round(Math.abs(distancetracker.x)/100);
			distancetext.distanceTxt.text = String(dist)+" m";
			
			
		}
		//trace("dist:" +dist);
		//trace("ZombieY: "+zombie.y);
		//trace("ZombieX: "+zombie.x);
		//trace("GamebackgroundY: " +gamebackground.y, "dirY: " +dirX, "ZombieY: "+zombie.y );
				
		
		if(roundEnd == true){
		gamebackground.x = gamebgCheck;
		
				soundEfectSoundChanel.stop();
				soundEfectSoundChanel= gamesong.play(0,int.MAX_VALUE);
			
				
		
		removeEventListener(MouseEvent.CLICK, onClickPowerAngle);
		stage.removeEventListener(MouseEvent.CLICK, rocketPowerStarter);
		removeEventListener(Event.ENTER_FRAME,zombieFly);
		stage.removeEventListener(Event.ENTER_FRAME,rocketPower);
		raketaAktivna = false;
		
		splashTest = 0;
		hitTest = 0;
		dist2 = 0;
		distY = 0;
		soundDist = 0;
		eatenDog = false;
		//trace("1: "+endChecker[endChecker.length-1]+" 5: "+endChecker[endChecker.length-5]);
		}
		
		//trace("dist2:" +dist2, "dist:" +dist, "dirY: " +dirY, "dirX: " +dirX);
		
		
			//trace ("LEVEL DATA: "+levelData);
			//dataLoadedd = Number(levelData.substr("$angle","$"));
			
			
			
			
		
		begin=false;
		}
	
	}
}
