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
		
		public function PlayState() 
		{
		}
		
		override public function create(): void
		{
			level = new Level1;
			player = new Player(4, 120);
			
			add(level);
			add(player);
			
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
			
			super.update();
			
			FlxG.collide(player, level);
			
			/*FlxG.collide(player, floor);
			FlxG.collide(player, platform1);
			FlxG.collide(player, platform2);
			FlxG.collide(player, platform3);*/
		}
	}

}