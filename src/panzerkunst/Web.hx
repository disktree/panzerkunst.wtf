package panzerkunst;

import haxe.Resource;
import om.Template;
import sys.FileSystem;

using om.Path;

class Web {

	static function main() {
		var videos = new Array<String>();
		for( f in FileSystem.readDirectory( 'vid' ) ) {
			if( !f.hasExtension('mp4') )
				continue;
			videos.push( '"'+f.withoutExtension()+'"' );
		}
		var html = new Template( Resource.getString('index') ).execute( { videos: videos } );
		Sys.print( html );
	}
}
