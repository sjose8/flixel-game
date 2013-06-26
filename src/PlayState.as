package  
{
	import org.flixel.*;
	import flash.display.Sprite;
	
	public class PlayState extends FlxState
	{
		/*private var floor:FlxTileblock;
		private var platform1:FlxTileblock;
		private var platform2:FlxTileblock;
		private var platform3:FlxTileblock;*/
		private var player:Player;
		private var level:Level1;
		private var enemy0:Enemy;
		private var enemy1:Enemy;
		private var enemy2:Enemy;
		
		public var counter:Number = -5;
		
		public function PlayState() 
		{
		}
		
		override public function create(): void
		{
			level = new Level1;
			player = new Player(4, 120);
			enemy0 = new Enemy(170, 170);
			enemy1 = new Enemy(300, 200);
			enemy2 = new Enemy(600, 100);
			
			add(level);
			add(player);
			add(enemy0);
			add(enemy1);
			add(enemy2);

			
			//	Tell flixel how big our game world is
			FlxG.worldBounds = new FlxRect(0, 0, level.width, level.height);
			
			//	Don't let the camera wander off the edges of the map
			FlxG.camera.setBounds(0, 0, level.width, level.height);
			
			//	The camera will follow the player
			FlxG.camera.follow(player, FlxCamera.STYLE_PLATFORMER);
			

			/*FlxG.bgColor = 0xff63b8ff;
			
			player = new Player(32, 200);
			
			floor = new FlxTileblock(0, 216, 320, 24);
			floor.makeGraphic(320, 24, 0xff98744e);
			platform1 = new FlxTileblock(96, 180, 128, 10);
			platform1.makeGraphic(128, 10, 0xff98744e);
			platform2 = new FlxTileblock(50, 0, 64, 10);
			platform2.makeGraphic(64, 10, 0xff98744e);
			platform3 = new FlxTileblock(0, 80, 64, 10);
			platform3.makeGraphic(64, 10, 0xff98744e);
			
			add(player);
			add(floor);
			add(platform1);
			add(platform2);
			add(platform3);*/
		}
		
		override public function update():void
		{
			if (FlxG.keys.SPACE)
				player.doAttack();
			

			if (FlxG.keys.justPressed("SHIFT")) {
				player.glide();
			}
			
			if (FlxG.keys.justReleased("SHIFT")) {
				player.noGlide();
			}
			
			super.update();
			
			FlxG.collide(player, level);
			FlxG.collide(enemy0, level);
			FlxG.collide(enemy1, level);
			FlxG.collide(enemy2, level);
			
			//causes the enemies to move back and forth
			counter += FlxG.elapsed;
			if (counter >= 5)
			{
				// After 10 seconds has passed, the timer will reset.
				counter = -5;
			}
			enemy0.velocity.x = counter * 5;
			enemy1.velocity.x = counter * 10;
			enemy2.velocity.x = counter * 7;
			
			
			/*FlxG.collide(player, floor);
			FlxG.collide(player, platform1);
			FlxG.collide(player, platform2);
			FlxG.collide(player, platform3);*/
		}
	}

}