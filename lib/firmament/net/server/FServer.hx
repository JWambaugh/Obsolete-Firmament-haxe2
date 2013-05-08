package firmament.net.server;

import nme.events.Event;
import sys.net.Socket;
import sys.net.Host;
/**
 * @author Jordan Wambaugh
 */

class FServer extends nme.events.EventDispatcher{

	private var listenSocket:Socket;



	public function new(port:Int,ip:String){
		//set up socket for listening
		try{
			listenSocket = new Socket();
			var host = new Host(ip);
			listenSocket.setBlocking(false);
			listenSocket.bind(host,port);
		}catch(e:Dynamic){
			trace('error connecting listening:' + Std.string(e));
		}
	}
}