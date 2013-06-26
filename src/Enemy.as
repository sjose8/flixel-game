package  
{
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.*;
	/**
	 * ...
	 * @author Xavier Artache
	 */
	public class Enemy extends FlxSprite
	{
		
		public function Enemy(x:Number,y:Number) 
		{
			super(x, y);
			
			acceleration.y = 400;
			facing = FlxObject.RIGHT;


		}
		
	}
}