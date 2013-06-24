package  
{
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.*;
	/**
	 * ...
	 * @author Jane Threefoot
	 */
	public class Player extends FlxSprite
	{
		
		public function Player(x:Number,y:Number) 
		{
			super(x, y);
			
			// this movement control code was taken from the sample code of this tutorial: 
			// http://www.photonstorm.com/archives/2247/flash-game-dev-tip-12-building-a-retro-platform-game-in-flixel-part-1
			// and slightly modified to my needs
			
			// instantiate the plugin if necessary
			if (FlxG.getPlugin(FlxControl) == null)
			{
				FlxG.addPlugin(new FlxControl);
			}
			
			//	Add this sprite to the FlxControl plugin and tell it we want the sprite to accelerate and decelerate smoothly
			FlxControl.create(this, FlxControlHandler.MOVEMENT_ACCELERATES, FlxControlHandler.STOPPING_DECELERATES, 1, true, false);
			
			//	Sprite will be controlled with the left and right cursor keys
			FlxControl.player1.setCursorControl(false, false, true, true);
			
			//	UP key to jump, up to a maximum of 200 pixels (per second), only when touching the FLOOR
			FlxControl.player1.setJumpButton("UP", FlxControlHandler.KEYMODE_PRESSED, 400, FlxObject.FLOOR, 250, 200);
			
			//	Stop the player running off the edge of the screen and falling into nothing
			//FlxControl.player1.setBounds(16, 0, 288, 240);
			
			//	Because we are using the MOVEMENT_ACCELERATES type the first value is the acceleration speed of the sprite
			//	Think of it as the time it takes to reach maximum velocity. A value of 100 means it would take 1 second. 
			//  A value of 400 means it would take 0.25 of a second.
			FlxControl.player1.setMovementSpeed(400, 0, 100, 200, 400, 0);
			
			//	Set a downward gravity of 400px/sec
			FlxControl.player1.setGravity(0, 400);
			
			//	By default the sprite is facing to the right.
			//	Changing this tells Flixel to flip the sprite frames to show the left-facing ones instead.
			facing = FlxObject.RIGHT;
		}
		
		public function doAttack() {
			
		}
		
	}

}