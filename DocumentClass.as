package{
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import Playtomic.*;
	import com.greensock.*;
	import com.greensock.easing.*;
	import flash.net.SharedObject;	
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.media.SoundMixer;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.utils.getTimer;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import CPMStar.*;
	import flash.display.DisplayObject;
	import mochi.as3.*;

	
	public class DocumentClass extends MovieClip{
		
		
		
		public var gameScreen:mainMenu;
		public var playScreen:main;
		public var replaystab:replaysTab;
		public var loadId:Array;
		public var credits1:credits;
		public var instructions:Instructions;
		public var loadingProgress:LoadingProgress;
		public var buttonsound:buttonSound;
		public var menuesong:gameSong;
		public var soundEfectSoundChanel:SoundChannel;
		public var myLocalSO:SharedObject = SharedObject.getLocal("zombietoss");
		
		public var musicOn:Boolean = false;
		
		public var checker:Boolean = true;
		
		public function DocumentClass(){
			
			loadingProgress = new LoadingProgress();
			loadingProgress.x = 350;
			loadingProgress.y = 250;
			addChild( loadingProgress );
			
			// TODO: Change the CPMStarContentSpotID to your assigned content spot id
			var CPMStarContentSpotID:String = "6153Q7129B5A0";

			var ad:DisplayObject = new CPMStar.AdLoader(CPMStarContentSpotID);
			loadingProgress.adBox.addChild(ad);
			
			loadingProgress.mgpreloader.addEventListener(MouseEvent.CLICK, sponsorURLagain);

			
			loaderInfo.addEventListener( Event.COMPLETE, onCompletelyDownloaded );
			loaderInfo.addEventListener( ProgressEvent.PROGRESS, onProgressMade );
		}	
		
		public function onCompletelyDownloaded( event:Event ):void
		{
				gotoAndStop(3);
				stage.frameRate = 70;
				spashButton.addEventListener(MouseEvent.CLICK, sponsorURL);
				var timerSplashCheck:Timer = new Timer(9000, 1);
    			timerSplashCheck.addEventListener(TimerEvent.TIMER, startGameAfterLoad);
    			timerSplashCheck.start();
				
				//loadingProgress.removeChild(["adBox"]);
				//removeChild(loadingProgress);
				//showGameScreen();
				//stage.removeMovieClip(spashButton);
		}
		public function startGameAfterLoad(e:TimerEvent){
			removeEventListener(TimerEvent.TIMER, startGameAfterLoad);
			stage.frameRate = 28;
			removeChild(spashButton);
			
			showGameScreen();
		}
		
		public function sponsorURL(e:MouseEvent){
			navigateToURL(new URLRequest('http://www.zayplay.com?utm_source="host_url"&utm_medium=flashgame&utm_content=splashScreen&utm_campaign=Zombie-Toss'));
			
		}
		
		public function sponsorURLagain(e:MouseEvent){
			navigateToURL(new URLRequest('http://www.zayplay.com?utm_source="host_url"&utm_medium=flashgame&utm_content=moregames_preloader&utm_campaign=Zombie-Toss'));
			
		}
		
		public function onProgressMade( progressEvent:ProgressEvent ):void
		{
			var percentLoadded = Math.floor( 100 * loaderInfo.bytesLoaded / loaderInfo.bytesTotal );
			trace(percentLoadded+"%");
			loadingProgress.setValue( Math.floor( 100 * loaderInfo.bytesLoaded / loaderInfo.bytesTotal ) );
			loadingProgress.bar_mc.gotoAndStop(percentLoadded);
		}
		
		public function showGameScreen(){
			
			MochiServices.connect("ad39515f278b93a4", root);
			Log.View(2309, "60dd7e809e514904", root.loaderInfo.loaderURL);
			
			
			menuesong = new gameSong();
			soundEfectSoundChanel = menuesong.play(0,int.MAX_VALUE);
			buttonsound = new buttonSound();
			
			
			gameScreen = new mainMenu();
			gameScreen.addEventListener(NavigationEvent.PLAY, onRequestRestart);
			
			gameScreen.playButton1.addEventListener(MouseEvent.CLICK, startGame);
			gameScreen.replaysButton.addEventListener(MouseEvent.CLICK, replays);
			gameScreen.replaysButton.visible = false;
			gameScreen.creditsButton.addEventListener(MouseEvent.CLICK, creditsFunc);
			gameScreen.moreGamesButton.addEventListener(MouseEvent.CLICK, moreGames);
			gameScreen.hostGameButton.addEventListener(MouseEvent.CLICK, hostGames);
			gameScreen.instructionsButton.addEventListener(MouseEvent.CLICK, insturctionsFunc);
			gameScreen.soundButton.addEventListener(MouseEvent.CLICK, sound);
			
			gameScreen.playButton1.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			gameScreen.replaysButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			gameScreen.creditsButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			gameScreen.moreGamesButton.addEventListener(MouseEvent.CLICK, playClick);
			gameScreen.hostGameButton.addEventListener(MouseEvent.CLICK, playClick);
			gameScreen.instructionsButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			gameScreen.soundButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			
			
			addChild(gameScreen);
			removeChild (loadingProgress);
			loadingProgress = null;
			stage.frameRate = 28;
			
			stage.stageFocusRect = false;
			
			
		}
		
		public function sound(e:MouseEvent){
			if(musicOn == false){
			var sTransform:SoundTransform = new SoundTransform(1,0);
				sTransform.volume = 0;
				SoundMixer.soundTransform = sTransform;
				musicOn = true;
			} else {
				var s2Transform:SoundTransform = new SoundTransform(1,0);
				s2Transform.volume = 1;
				SoundMixer.soundTransform = s2Transform;
				musicOn = false;
			}
			trace("dicks");
		}
			
		
		
		public function playClick(e:MouseEvent){
			soundEfectSoundChanel = buttonsound.play(100,1);
		}
		
		public function insturctionsFunc(e:MouseEvent):void
		{
			if(checker){
				instructions = new Instructions();
				addChild( instructions );
				TweenLite.to(instructions, .5, {x:20});
				instructions.instructionsBack.addEventListener(MouseEvent.CLICK, removeInstructions);
				instructions.clearCookie.addEventListener(MouseEvent.CLICK, clearCookie);
				instructions.instructionsBack.addEventListener(MouseEvent.MOUSE_OVER, playClick);
				instructions.clearCookie.addEventListener(MouseEvent.MOUSE_OVER, playClick);
				checker = false;
			}
		}
		
		public function clearCookie(e:MouseEvent){
			myLocalSO.clear()
		}
		
		
		public function creditsFunc(e:MouseEvent):void
		{
			if(checker){
				GameVars.Load(this.GameVarsLoaded);
			credits1 = new credits();
			addChild( credits1 );
			TweenLite.to(credits1, .5, {x:20});
			credits1.backButton1.addEventListener(MouseEvent.CLICK, removeCredits);
			credits1.backButton1.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			checker = false;
			}
		}
		
		public function moreGames(event:MouseEvent):void
		{
			
			navigateToURL(new URLRequest('http://www.zayplay.com?utm_source="host_url"&utm_medium=flashgame&utm_content=mainmenu_moregames&utm_campaign=Zombie-Toss'));
		}
		
		public function hostGames(event:MouseEvent):void
		{
			
			navigateToURL(new URLRequest('http://zayplay.com/page/games-for-your-website.html?utm_source="host_url"&utm_medium=flashgame&utm_content=mainmenu_hostgame&utm_campaign=Zombie-Toss'));
		}
		
		public function removeCredits(e:MouseEvent)
		{
			TweenLite.to(credits1, .5, {x:-400});
			checker = true;
		}
		public function removeInstructions(e:MouseEvent)
		{
			TweenLite.to(instructions, .5, {x:-700});
			checker = true;
		}
		
		public function removeReplays(e:MouseEvent)
		{
			TweenLite.to(replaystab, .5, {x:-700});
			checker = true;
		}
		
		public function replays(mouseEvent:MouseEvent):void
		{
			if(checker){
			replaystab = new replaysTab();
			addChild( replaystab );
			replaystab.replayBack.addEventListener(MouseEvent.CLICK, removeReplays);
			replaystab.replayBack.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			TweenLite.to(replaystab, .5, {x:20});
			PlayerLevels.List(this.ListLoaded, {mode: "newest"});
			checker = false;
			}
		}
		
		public function loadLevel(mouseEvent:MouseEvent):void
		{
			
			playScreen = new main();
			playScreen.x = 0;
			playScreen.y = 0;
			//playScreen.addEventListener(NavigationEvent.RESTART, onRequestRestart);
			addChild( playScreen );
			var level:PlayerLevel = new PlayerLevel();
			
			
			level.LevelId = loadId[0];
			
			
			PlayerLevels.Load(level.LevelId, playScreen.replayLoadedData);
			removeChild(gameScreen);
			
			
			gameScreen = null;
		}
		public function loadLevel1(mouseEvent:MouseEvent):void
		{
			
			playScreen = new main();
			playScreen.x = 0;
			playScreen.y = 0;
			//playScreen.addEventListener(NavigationEvent.RESTART, onRequestRestart);
			addChild( playScreen );
			var level:PlayerLevel = new PlayerLevel();
			
			
			level.LevelId = loadId[1];
			
			
			PlayerLevels.Load(level.LevelId, playScreen.replayLoadedData);
			removeChild(gameScreen);
			
			
			gameScreen = null;
		}
		public function loadLevel2(mouseEvent:MouseEvent):void
		{
			
			playScreen = new main();
			playScreen.x = 0;
			playScreen.y = 0;
			//playScreen.addEventListener(NavigationEvent.RESTART, onRequestRestart);
			addChild( playScreen );
			var level:PlayerLevel = new PlayerLevel();
			
			
			level.LevelId = loadId[2];
			
			
			PlayerLevels.Load(level.LevelId, playScreen.replayLoadedData);
			removeChild(gameScreen);
			
			
			gameScreen = null;
		}
		public function loadLevel3(mouseEvent:MouseEvent):void
		{
			
			playScreen = new main();
			playScreen.x = 0;
			playScreen.y = 0;
			//playScreen.addEventListener(NavigationEvent.RESTART, onRequestRestart);
			addChild( playScreen );
			var level:PlayerLevel = new PlayerLevel();
			
			
			level.LevelId = loadId[3];
			
			
			PlayerLevels.Load(level.LevelId, playScreen.replayLoadedData);
			removeChild(gameScreen);
			
			
			gameScreen = null;
		}
		public function loadLevel4(mouseEvent:MouseEvent):void
		{
			
			playScreen = new main();
			playScreen.x = 0;
			playScreen.y = 0;
			//playScreen.addEventListener(NavigationEvent.RESTART, onRequestRestart);
			addChild( playScreen );
			var level:PlayerLevel = new PlayerLevel();
			
			
			level.LevelId = loadId[4];
			
			
			PlayerLevels.Load(level.LevelId, playScreen.replayLoadedData);
			removeChild(gameScreen);
			
			
			gameScreen = null;
		}
		
		
		
		public function loadLevelById(mouseEvent:MouseEvent):void
		{
			
			playScreen = new main();
			playScreen.x = 0;
			playScreen.y = 0;
			//playScreen.addEventListener(NavigationEvent.RESTART, onRequestRestart);
			addChild( playScreen );
			var level:PlayerLevel = new PlayerLevel();
			
			loadId[5] = replaystab.searchId.text;
			level.LevelId = loadId[5];
			
			
			PlayerLevels.Load(level.LevelId, playScreen.replayLoadedData);
			removeChild(gameScreen);
			
			
			gameScreen = null;
		}
		
		
		public function ListLoaded(levels:Array, numlevels:int, response:Object):void
		{
			if(response.Success)
    {
        for(var i:int=0; i<levels.length; i++)
        {
            trace(" - " + levels[i].LevelId + ": " + levels[i].Name + "---DATA: ");
        }
			loadId = new Array();
		
			loadId[0] = levels[0].LevelId;
			loadId[1] = levels[1].LevelId;
			loadId[2] = levels[2].LevelId;
			loadId[3] = levels[3].LevelId;
			loadId[4] = levels[4].LevelId;
			
            replaystab.nam1.text = levels[0].Name;
			replaystab.nam2.text = levels[1].Name;
			replaystab.nam3.text = levels[2].Name;
			replaystab.nam4.text = levels[3].Name;
			replaystab.nam5.text = levels[4].Name;
			replaystab.pl1.text = levels[0].PlayerName;
			replaystab.pl2.text = levels[1].PlayerName;
			replaystab.pl3.text = levels[2].PlayerName;
			replaystab.pl4.text = levels[3].PlayerName;
			replaystab.pl5.text = levels[4].PlayerName;
        
		
		replaystab.loadLevelButton1.addEventListener(MouseEvent.CLICK, loadLevel);
		replaystab.loadLevelButton2.addEventListener(MouseEvent.CLICK, loadLevel1);
		replaystab.loadLevelButton3.addEventListener(MouseEvent.CLICK, loadLevel2);
		replaystab.loadLevelButton4.addEventListener(MouseEvent.CLICK, loadLevel3);
		replaystab.loadLevelButton5.addEventListener(MouseEvent.CLICK, loadLevel4);
		replaystab.loadLevelById.addEventListener(MouseEvent.CLICK, loadLevelById);
		
    }
    else
    {
        // Level list failed to load because of response.ErrorCode
    }
		}
		
		public function startGame(mouseEvent:MouseEvent):void
		{
			//var st:SoundTransform = soundEfectSoundChanel.soundTransform;
			//st.volume = 0;
			SoundMixer.stopAll();
			//soundEfectSoundChanel.stop();
			//soundEfectSoundChanel.stopAllSounds();
			
			trace("wtf??");
			Log.Play();
			playScreen = new main();
			playScreen.x = 0;
			playScreen.y = 0;
			playScreen.addEventListener(NavigationEvent.RESTART, onRequestRestart);
			playScreen.addEventListener(NavigationEvent.MENU, onRequestMenu);
			addChild( playScreen );			
			removeChild(gameScreen);
			gameScreen = null;
			
		}
		
		
		public function onRequestMenu(navigationEvent:NavigationEvent):void
		{
			soundEfectSoundChanel = menuesong.play(0,int.MAX_VALUE);
			gameScreen = new mainMenu();
			gameScreen.addEventListener(NavigationEvent.PLAY, onRequestRestart);
			gameScreen.playButton1.addEventListener(MouseEvent.CLICK, startGame);
			gameScreen.replaysButton.addEventListener(MouseEvent.CLICK, replays);
			gameScreen.replaysButton.visible = false;
			gameScreen.creditsButton.addEventListener(MouseEvent.CLICK, creditsFunc);
			gameScreen.moreGamesButton.addEventListener(MouseEvent.CLICK, moreGames);
			
			
			
			gameScreen.hostGameButton.addEventListener(MouseEvent.CLICK, hostGames);
			gameScreen.instructionsButton.addEventListener(MouseEvent.CLICK, insturctionsFunc);
			gameScreen.soundButton.addEventListener(MouseEvent.CLICK, sound);
			
			gameScreen.playButton1.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			gameScreen.replaysButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			gameScreen.creditsButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			gameScreen.moreGamesButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			gameScreen.hostGameButton.addEventListener(MouseEvent.CLICK, playClick);
			gameScreen.instructionsButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			gameScreen.soundButton.addEventListener(MouseEvent.MOUSE_OVER, playClick);
			addChild(gameScreen);
			
			removeChild(playScreen);
			playScreen = null;
		}
		
		public function onRequestStart(navigationEvent:NavigationEvent):void
		{
			//startGame();
		}
		
		public function restartGame():void
		{
			playScreen.gameRestarter();
		}
		
		public function onRequestRestart(navigationEvent:NavigationEvent):void
		{
			restartGame();
		}
		
		public function GameVarsLoaded(vars:Object, response:Object):void
		{
			if(response.Success)
    		{
        // sync the in-game variables
		credits1.dynamicText.text = vars.changableText;
        		trace(vars.changableText);
    		}
    		else
   		 {
        // request failed because of response.ErrorCode
    		}
			}
	}
}