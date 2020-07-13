package
{
	import flash.events.Event;
	public class NavigationEvent extends Event
	{
		public static const RESTART:String = "restart";
		public static const PLAY:String = "play";
		public static const MENU:String = "menu";
		
		public function NavigationEvent(type:String)
		{
			super(type);
		}
	}
}