package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class FreesmartDance extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		frames = Paths.getSparrowAtlas("trucksFreesmart");
        animation.addByPrefix('danceLeft', 'match bubble resize', 24, false);
        animation.addByPrefix('danceRight', 'match bubble resize', 24, false);
        animation.play('danceLeft');
		antialiasing = true;
	}

	var danceDir:Bool = false;

	public function dance():Void
	{
		danceDir = !danceDir;

		if (danceDir)
			animation.play('danceRight', true);
		else
			animation.play('danceLeft', true);
	}
}
