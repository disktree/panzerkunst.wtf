package panzerkunst;

import js.Browser.console;
import js.Browser.document;
import js.Browser.window;
import js.html.Element;
import js.html.VideoElement;

using om.ArrayTools;

class App {

	//static var playlist = Build.playlist('bin/vid');
	static var playlist : Array<String>;
	static var index = 0;
	static var video : VideoElement;

	//static var videoContainer : Element;
	//static var videoA : VideoElement;
	//static var videoB : VideoElement;

	/*
	static function playNextVideo() {
		var videoC : VideoElement;
		var videoN : VideoElement;
		if( videoA.src == null ) {

		}
		//var vid = if( videoA.src == null ) videoA else videoB;
		//vid.src = 'vid/'+playlist[0]+'.mp4';
	}
	*/

	static function main() {

		window.onload = function() {

			playlist = untyped VIDEOS;
			playlist.shuffle();

			video = cast document.querySelector( 'video.background' );
			video.onended = function(e) {
				if( ++index == playlist.length ) index = 0;
				video.src = 'vid/'+playlist[index]+'.mp4';
			}
			video.src = 'vid/'+playlist[index]+'.mp4';

			/*
			videoContainer = document.getElementById( 'video-container' );

			function createVideo() {
				var vid = document.createVideoElement();
				vid.autoplay = false;
				vid.muted = true;
				videoContainer.appendChild( vid );
				vid.onended = playNextVideo;
				return vid;
			}

			videoA = createVideo();
			videoB = createVideo();

			playNextVideo();

			//videoA.src = 'vid/'+playlist[0]+'.mp4';

			//hxd.Res.initEmbed();
			//var ani = new ParticleAnimation();
			*&

			/*
			video = cast document.querySelector( 'video.background' );
			video.oncanplaythrough = function(e) {
				trace( e );
				//video.oncanplaythrough = null;
				//video.style.opacity = '1';
			}
			video.onended = function(e) {
				//if( ++index == playlist.length ) index = 0;
				//video.src = 'vid/'+playlist[index];
			}
			video.onended = function(e) {
				if( ++index == playlist.length ) index = 0;
				video.src = 'vid/'+playlist[index];
			}

			video.src = 'vid/'+playlist[index];
			*/

			/*
			var container = document.querySelector( 'we-own-the-nite' );
			var title = container.querySelector( 'h1.title' );
			var footer = document.body.querySelector( 'footer' );
			var video = container.querySelector( 'video' );

			document.fonts.ready.then( function(_){
				title.style.display = 'block';
			});
			document.body.onblur = function(e){
				//footer.style.opacity = '0';
			}
			document.body.onfocus = function(e){
				//footer.style.opacity = '0.7';
			}

			window.oncontextmenu = e -> {
				e.preventDefault();
			}

			video.oncanplaythrough = e -> {
				video.oncanplaythrough = null;
				video.style.opacity = '1';
			}
			*/

			/*
			var links = document.querySelectorAll('a');
			for( link in links ) {
				//console.debug( link );
			}
			*/


		}
	}

}
