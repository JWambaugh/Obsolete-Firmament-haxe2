package firmament.ui;
import nme.display.DisplayObject;
import nme.display.Sprite;
import nme.geom.Rectangle;
import nme.events.MouseEvent;
/**
 * ...
 * @author Jordan Wambaugh
 */

class FScroller extends FWidget
{

	var canvas:DisplayObject;
	var rect:Rectangle;
	var w:Int;
	var h:Int;
	
	var downButton:FSmallButton;
	var upButton:FSmallButton;
	var rightButton:FSmallButton;
	var leftButton:FSmallButton;
	public function new(width,height) 
	{
		super();
		this.w = width;
		this.h = height;
		
	}
	
	private function drawVerticalScrollBar(){
		if(Std.is(upButton,null)){
			leftButton = new FSmallButton("<", this.canvas.width-10, 0, scrollUp);
			this.addChild(upButton);
		}
		if(Std.is(downButton,null)){
			downButton = new FSmallButton("V", this.w, this.h-10, scrollDown);
			downButton.y -= downButton.height;
			this.addChild(downButton);
		}
		
		upButton.x=this.w;
		downButton.x=this.w;
		downButton.y=this.h-10;
		
	}
	
	
	
	private function drawHorizontalScrollBar(){
		if(Std.is(leftButton,null)){
			leftButton = new FSmallButton("<", 0,this.w-10, scrollLeft);
			this.addChild(leftButton);
		}
		if(Std.is(rightButton,null)){
			rightButton = new FSmallButton("V", this.w-10, this.h-10, scrollRight);
			rightButton.y -= rightButton.height;
			this.addChild(rightButton);
		}
		
		leftButton.y=this.h-10;
		rightButton.x=this.w;
		rightButton.y=this.h-10;
		
	}
	
	
	
	public function setCanvas(c:DisplayObject) {
		this.canvas = c;
		rect = new Rectangle();
		rect.width = w-10;
		rect.height = h-10;
		c.x = 0;
		c.y = 0;
		this.addChild(c);
		c.scrollRect = rect;
	}
	
	public function scrollDown(?e:MouseEvent=null) {
		rect.y += 10;
		this.canvas.scrollRect = rect;
	}
	public function scrollUp(?e:MouseEvent=null) {
		rect.y -= 10;
		this.canvas.scrollRect = rect;
	}
	
	public function scrollLeft(?e:MouseEvent=null) {
		rect.x -= 10;
		this.canvas.scrollRect = rect;
	}
	public function scrollRight(?e:MouseEvent=null) {
		rect.x += 10;
		this.canvas.scrollRect = rect;
	}
}