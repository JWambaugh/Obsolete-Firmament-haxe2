
package firmament.process.engine;
import firmament.process.base.FProcess;
import firmament.core.FWorld;
import firmament.core.FGame;

#if(cpp)
import firmament.process.base.FThreadedProcess;
class FWorldStepProcess extends FThreadedProcess {
#else
class FWorldStepProcess extends FProcess {
#end
	private var world:FWorld;
	public function new(world:FWorld){
		this.world = world;
		super();
	}

	override public function step(){
		if(FGame.getInstance().enableSimulation){
			this.world.step();
		}
	}
	

}