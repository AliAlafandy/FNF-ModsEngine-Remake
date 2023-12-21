package android.flixel;

import android.flixel.FlxButton;
import flixel.graphics.frames.FlxTileFrames;
import openfl.utils.Assets;

class FlxVirtualPad extends FlxSpriteGroup {
	public var buttonLeft:FlxButton = new FlxButton(0, 0);
	public var buttonUp:FlxButton = new FlxButton(0, 0);
	public var buttonRight:FlxButton = new FlxButton(0, 0);
	public var buttonDown:FlxButton = new FlxButton(0, 0);
	public var buttonLeft2:FlxButton = new FlxButton(0, 0);
	public var buttonUp2:FlxButton = new FlxButton(0, 0);
	public var buttonRight2:FlxButton = new FlxButton(0, 0);
	public var buttonDown2:FlxButton = new FlxButton(0, 0);
	public var buttonA:FlxButton = new FlxButton(0, 0);
	public var buttonB:FlxButton = new FlxButton(0, 0);
	public var buttonC:FlxButton = new FlxButton(0, 0);
	public var buttonD:FlxButton = new FlxButton(0, 0);
	public var buttonE:FlxButton = new FlxButton(0, 0);
	public var buttonF:FlxButton = new FlxButton(0, 0);
	public var buttonG:FlxButton = new FlxButton(0, 0);
	public var buttonS:FlxButton = new FlxButton(0, 0);
	public var buttonV:FlxButton = new FlxButton(0, 0);
	public var buttonX:FlxButton = new FlxButton(0, 0);
	public var buttonY:FlxButton = new FlxButton(0, 0);
	public var buttonZ:FlxButton = new FlxButton(0, 0);

	public function new(DPad:FlxDPadMode, Action:FlxActionMode) {
		super();
        
		scrollFactor.set();
        
		switch (DPad) {
			case UP_DOWN:
			add(buttonUp = createButton(0, FlxG.height - 255, 132, 127, 'up', 0xFF00FF00));
			add(buttonDown = createButton(0, FlxG.height - 135, 132, 127, 'down', 0xFF00FFFF));
			case LEFT_RIGHT:
			add(buttonLeft = createButton(0, FlxG.height - 135, 132, 127, 'left', 0xFFFF00FF));
			add(buttonRight = createButton(127, FlxG.height - 135, 132, 127, 'right', 0xFFFF0000));
			case LEFT_FULL:
			add(buttonUp = createButton(105, FlxG.height - 345, 132, 127, 'up', 0xFF00FF00));
			add(buttonLeft = createButton(0, FlxG.height - 243, 132, 127, 'left', 0xFFFF00FF));
			add(buttonRight = createButton(207, FlxG.height - 243, 132, 127, 'right', 0xFFFF0000));
			add(buttonDown = createButton(105, FlxG.height - 135, 132, 127, 'down', 0xFF00FFFF));
			case RIGHT_FULL:
			add(buttonUp = createButton(FlxG.width - 258, FlxG.height - 408, 132, 127, 'up', 0xFF00FF00));
			add(buttonLeft = createButton(FlxG.width - 384, FlxG.height - 309, 132, 127, 'left', 0xFFFF00FF));
			add(buttonRight = createButton(FlxG.width - 132, FlxG.height - 309, 132, 127, 'right', 0xFFFF0000));
			add(buttonDown = createButton(FlxG.width - 258, FlxG.height - 201, 132, 127, 'down', 0xFF00FFFF));
			case BOTH_FULL:
			add(buttonUp = createButton(105, FlxG.height - 345, 132, 127, 'up', 0xFF00FF00));
			add(buttonLeft = createButton(0, FlxG.height - 243, 132, 127, 'left', 0xFFFF00FF));
			add(buttonRight = createButton(207, FlxG.height - 243, 132, 127, 'right', 0xFFFF0000));
			add(buttonDown = createButton(105, FlxG.height - 135, 132, 127, 'down', 0xFF00FFFF));
			add(buttonUp2 = createButton(FlxG.width - 258, FlxG.height - 408, 132, 127, 'up', 0xFF00FF00));
			add(buttonLeft2 = createButton(FlxG.width - 384, FlxG.height - 309, 132, 127, 'left', 0xFFFF00FF));
			add(buttonRight2 = createButton(FlxG.width - 132, FlxG.height - 309, 132, 127, 'right', 0xFFFF0000));
			add(buttonDown2 = createButton(FlxG.width - 258, FlxG.height - 201, 132, 127, 'down', 0xFF00FFFF));
			case NONE: //Do Nothing
		}
        
		switch (Action) {
			case A:
			add(buttonA = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'a', 0xFFFF0000));
			case B:
			add(buttonB = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			case A_B:
			add(buttonB = createButton(FlxG.width - 258, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			add(buttonA = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'a', 0xFFFF0000));
			case A_B_C:
			add(buttonC = createButton(FlxG.width - 384, FlxG.height - 135, 132, 127, 'c', 0xFF00FFFF));
			add(buttonB = createButton(FlxG.width - 258, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			add(buttonA = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'a', 0xFFFF0000));
			case A_B_E:
			add(buttonE = createButton(FlxG.width - 384, FlxG.height - 135, 132, 127, 'e', 0xFF24292F));
			add(buttonB = createButton(FlxG.width - 258, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			add(buttonA = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'a', 0xFFFF0000));
			case A_B_X_Y:
			add(buttonX = createButton(FlxG.width - 510, FlxG.height - 135, 132, 127, 'x', 0xFF0000FF));
			add(buttonB = createButton(FlxG.width - 258, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			add(buttonY = createButton(FlxG.width - 384, FlxG.height - 135, 132, 127, 'y', 0xFF00FF00));
			add(buttonA = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'a', 0xFFFF0000));
			case A_B_C_X_Y:
			add(buttonC = createButton(FlxG.width - 384, FlxG.height - 135, 132, 127, 'c', 0xFF00FFFF));
			add(buttonX = createButton(FlxG.width - 258, FlxG.height - 255, 132, 127, 'x', 0xFF0000FF));
			add(buttonB = createButton(FlxG.width - 258, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			add(buttonY = createButton(FlxG.width - 132, FlxG.height - 255, 132, 127, 'y', 0xFF00FF00));
			add(buttonA = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'a', 0xFFFF0000));
			case A_B_C_X_Y_Z:
			add(buttonX = createButton(FlxG.width - 384, FlxG.height - 255, 132, 127, 'x', 0xFF0000FF));
			add(buttonC = createButton(FlxG.width - 384, FlxG.height - 135, 132, 127, 'c', 0xFF00FFFF));
			add(buttonY = createButton(FlxG.width - 258, FlxG.height - 255, 132, 127, 'y', 0xFF00FF00));
			add(buttonB = createButton(FlxG.width - 258, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			add(buttonZ = createButton(FlxG.width - 132, FlxG.height - 255, 132, 127, 'z', 0xFFCCB98E));
			add(buttonA = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'a', 0xFFFF0000));
			case A_B_C_D_V_X_Y:
			add(buttonD = createButton(FlxG.width - 510, FlxG.height - 135, 132, 127, 'd', 0xFFFF00AA));
			add(buttonV = createButton(FlxG.width - 384, FlxG.height - 255, 132, 127, 'v', 0xFFFF00FF));
			add(buttonC = createButton(FlxG.width - 384, FlxG.height - 135, 132, 127, 'c', 0xFF00FFFF));
			add(buttonX = createButton(FlxG.width - 258, FlxG.height - 255, 132, 127, 'x', 0xFF0000FF));
			add(buttonB = createButton(FlxG.width - 258, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			add(buttonY = createButton(FlxG.width - 132, FlxG.height - 255, 132, 127, 'y', 0xFF00FF00));
			add(buttonA = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'a', 0xFFFF0000));
			case A_B_C_D_V_X_Y_Z:
			add(buttonV = createButton(FlxG.width - 510, FlxG.height - 255, 132, 127, 'v', 0xFFFF00FF));
			add(buttonD = createButton(FlxG.width - 510, FlxG.height - 135, 132, 127, 'd', 0xFFFF00AA));
			add(buttonX = createButton(FlxG.width - 384, FlxG.height - 255, 132, 127, 'x', 0xFF0000FF));
			add(buttonC = createButton(FlxG.width - 384, FlxG.height - 135, 132, 127, 'c', 0xFF00FFFF));
			add(buttonY = createButton(FlxG.width - 258, FlxG.height - 255, 132, 127, 'y', 0xFF00FF00));
			add(buttonB = createButton(FlxG.width - 258, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			add(buttonZ = createButton(FlxG.width - 132, FlxG.height - 255, 132, 127, 'z', 0xFFCCB98E));
			add(buttonA = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'a', 0xFFFF0000));
			case A_B_C_D_E_V_X_Y_Z:
			add(buttonE = createButton(FlxG.width - 636, FlxG.height - 135, 132, 127, 'e', 0xFF24292F));
			add(buttonV = createButton(FlxG.width - 510, FlxG.height - 255, 132, 127, 'v', 0xFFFF00FF));
			add(buttonD = createButton(FlxG.width - 510, FlxG.height - 135, 132, 127, 'd', 0xFFFF00AA));
			add(buttonX = createButton(FlxG.width - 384, FlxG.height - 255, 132, 127, 'x', 0xFF0000FF));
			add(buttonC = createButton(FlxG.width - 384, FlxG.height - 135, 132, 127, 'c', 0xFF00FFFF));
			add(buttonY = createButton(FlxG.width - 258, FlxG.height - 255, 132, 127, 'y', 0xFF00FF00));
			add(buttonB = createButton(FlxG.width - 258, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			add(buttonZ = createButton(FlxG.width - 132, FlxG.height - 255, 132, 127, 'z', 0xFFCCB98E));
			add(buttonA = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'a', 0xFFFF0000));
			case B_C_Z:
			add(buttonZ = createButton(FlxG.width - 384, FlxG.height - 135, 132, 127, 'z', 0xFFCCB98E));
			add(buttonC = createButton(FlxG.width - 258, FlxG.height - 135, 132, 127, 'c', 0xFF00FFFF));
			add(buttonB = createButton(FlxG.width - 132, FlxG.height - 135, 132, 127, 'b', 0xFFFFFF00));
			case NONE: //Do Nothing
		}
	}
    
	override public function destroy():Void {
		super.destroy();
        
		buttonLeft = null;
		buttonUp = null;
		buttonDown = null;
		buttonRight = null;
		buttonLeft2 = null;
		buttonUp2 = null;
		buttonDown2 = null;
		buttonRight2 = null;
		buttonA = null;
		buttonB = null;
		buttonC = null;
		buttonD = null;
		buttonE = null;
		buttonF = null;
		buttonG = null;
		buttonS = null;
		buttonV = null;
		buttonX = null;
		buttonY = null;
		buttonZ = null;
	}
    
	private function createButton(X:Float, Y:Float, Width:Int, Height:Int, Graphic:String, Color:Int = 0xFFFFFFFFF):FlxButton {
		var button:FlxButton = new FlxButton(X, Y);
		button.frames = FlxTileFrames.fromFrame(FlxAtlasFrames.fromSparrow(Assets.getBitmapData('assets/android/virtualpad.png'),
			Assets.getText('assets/android/virtualpad.xml'))
			.getByName(Graphic),
			FlxPoint.get(Width, Height));
		button.resetSizeFromFrame();
		button.moves = false;
		button.solid = false;
		button.immovable = true;
		button.scrollFactor.set();
		button.color = Color;
		button.alpha = ClientPrefs.virtualPadAlpha;
		#if FLX_DEBUG
		button.ignoreDrawDebug = true;
		#end
		return button;
	}
}

enum FlxDPadMode {
	UP_DOWN;
	LEFT_RIGHT;
	LEFT_FULL;
	RIGHT_FULL;
	BOTH_FULL;
	NONE;
}

enum FlxActionMode {
	A;
	B;
	A_B;
	A_B_C;
	A_B_E;
	A_B_X_Y;
	A_B_C_X_Y;
	A_B_C_X_Y_Z;
	A_B_C_D_V_X_Y;
	A_B_C_D_V_X_Y_Z;
	A_B_C_D_E_V_X_Y_Z;
	B_C_Z;
	NONE;
}
