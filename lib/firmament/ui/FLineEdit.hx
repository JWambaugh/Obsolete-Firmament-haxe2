package firmament.ui;
import nme.text.TextFieldType;
/**
 * ...
 * @author Jordan Wambaugh
 */

class FLineEdit extends FTextField
{

	public function new(?text:String="",?x:Float=0,?y:Float=0,?width:Int=100) 
	{
		super(text,x,y,width);
		this.textField.height = 20;
		this.textField.type = TextFieldType.INPUT;
		this.textField.border = true;
		this.textField.backgroundColor = 0xFFFFFF;
		this.textField.background = true;
	}
	
}