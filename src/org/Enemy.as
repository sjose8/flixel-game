package org 
{
	import org.flixel.*;
	
	public class Enemy extends FlxSprite
	{
		
		public function Enemy(x:int, y:int) 
		{
			super(x, y);
			
			facing = FlxObject.RIGHT;
			
			acceleration.x = 30;
		}
		
		override public function update() {
			super.update();
			
			if (!isTouching(FlxObject.FLOOR)) {
				if (facing == FlxObject.RIGHT) {
					facing = FlxObject.LEFT
					velocity.x = -30
				}
			}
			
			
		}
	}

}