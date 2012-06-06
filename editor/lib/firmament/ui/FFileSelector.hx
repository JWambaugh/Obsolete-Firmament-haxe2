package firmament.ui;
import FWidget;
import firmament.ui.layout.FHBox;
import firmament.ui.layout.FVBox;
import FScroller;

/**
 * ...
 * @author jordan
 */
class FFileSelector extends FWidget {
	
	var fileList:Array<String>;
	var scroller: FScroller;
	var canvas:Sprite;
	public function new () {
		
		fileList = new Array();
		fileList.push("file1");
		fileList.push("file2");
		scroller = new FScroller()
		
	}		

}
