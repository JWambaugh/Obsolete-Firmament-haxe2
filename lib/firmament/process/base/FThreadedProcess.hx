package firmament.process.base;
#if(cpp)
import firmament.process.base.FProcessManager;
import firmament.process.base.FProcess;
import nme.events.Event;
import cpp.vm.Thread;

class FThreadedProcess extends FProcess{

	var _worker:Thread;
	public function new(){
		super();
		_worker = Thread.create (work);
		_worker.sendMessage (Thread.current ());
	}


	public function work(){
		var main:Thread = Thread.readMessage(true); //first message sent is the main thread so we can communicate.
		while(!isComplete()){
			var message = Thread.readMessage(true); //process a step each time we receive the 'step' message
			if(message == 'step'){
				this.step();
			}
		}
	}

	override public function doStep(){
		_worker.sendMessage("step");
		if(_isComplete){
			this.dispatchEvent(new Event(FProcess.COMPLETE));
		}
	}


}















#end