<!-- BEGIN: main -->
<style>
	/* customizable snowflake styling */
	.snowflake {
	  color: #fff;
	  font-size: 1em;
	  font-family: Arial;
	  text-shadow: 0 0 1px #000;
	}
	@-webkit-keyframes snowflakes-fall{0%{top:-10%}100%{top:100%}}@-webkit-keyframes snowflakes-shake{0%{-webkit-transform:translateX(0px);transform:translateX(0px)}50%{-webkit-transform:translateX(80px);transform:translateX(80px)}100%{-webkit-transform:translateX(0px);transform:translateX(0px)}}@keyframes snowflakes-fall{0%{top:-10%}100%{top:100%}}@keyframes snowflakes-shake{0%{transform:translateX(0px)}50%{transform:translateX(80px)}100%{transform:translateX(0px)}}.snowflake{position:fixed;top:-10%;z-index:9999;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:default;-webkit-animation-name:snowflakes-fall,snowflakes-shake;-webkit-animation-duration:10s,3s;-webkit-animation-timing-function:linear,ease-in-out;-webkit-animation-iteration-count:infinite,infinite;-webkit-animation-play-state:running,running;animation-name:snowflakes-fall,snowflakes-shake;animation-duration:10s,3s;animation-timing-function:linear,ease-in-out;animation-iteration-count:infinite,infinite;animation-play-state:running,running}.snowflake:nth-of-type(0){left:1%;-webkit-animation-delay:0s,0s;animation-delay:0s,0s}.snowflake:nth-of-type(1){left:10%;-webkit-animation-delay:1s,1s;animation-delay:1s,1s}.snowflake:nth-of-type(2){left:20%;-webkit-animation-delay:6s,.5s;animation-delay:6s,.5s}.snowflake:nth-of-type(3){left:30%;-webkit-animation-delay:4s,2s;animation-delay:4s,2s}.snowflake:nth-of-type(4){left:40%;-webkit-animation-delay:2s,2s;animation-delay:2s,2s}.snowflake:nth-of-type(5){left:50%;-webkit-animation-delay:8s,3s;animation-delay:8s,3s}.snowflake:nth-of-type(6){left:60%;-webkit-animation-delay:6s,2s;animation-delay:6s,2s}.snowflake:nth-of-type(7){left:70%;-webkit-animation-delay:2.5s,1s;animation-delay:2.5s,1s}.snowflake:nth-of-type(8){left:80%;-webkit-animation-delay:1s,0s;animation-delay:1s,0s}.snowflake:nth-of-type(9){left:90%;-webkit-animation-delay:3s,1.5s;animation-delay:3s,1.5s}
	.position-absolute-left{
		position: fixed;
		top: 0px;
		left: 0;
		z-index: 9999999;
		pointer-events: none;
	}
	.position-absolute-right{
		position: fixed;
		top: 0px;
		right: 0;
		z-index: 9999999;
		pointer-events: none;
	}
	#canvas {
		position: fixed;
		top: 0;
	}
	.audio-play{
		position: fixed;
		bottom: 0px;
		left: 3px;
		z-index: 9999999;
	
	}
	 audio{
			display: none;
		}
		
		.audio-play .bi-volume-up {
		display: none;
		}

		.audio-play.playing .bi-volume-up {
		display: inline-block;
		}

		.audio-play.playing .bi-volume-mute {
		display: none;
		}
	@media only screen and (max-width: 600px) {
	  .xs-none{
		display:none;
	  }
	  
	}
</style>
    <div class="audio-play">
        <svg  xmlns="http://www.w3.org/2000/svg" width="32" height="32" style="color:red" fill="currentColor" class="bi bi-volume-up" viewBox="0 0 16 16">
            <path d="M11.536 14.01A8.473 8.473 0 0 0 14.026 8a8.473 8.473 0 0 0-2.49-6.01l-.708.707A7.476 7.476 0 0 1 13.025 8c0 2.071-.84 3.946-2.197 5.303l.708.707z"/>
            <path d="M10.121 12.596A6.48 6.48 0 0 0 12.025 8a6.48 6.48 0 0 0-1.904-4.596l-.707.707A5.483 5.483 0 0 1 11.025 8a5.483 5.483 0 0 1-1.61 3.89l.706.706z"/>
            <path d="M10.025 8a4.486 4.486 0 0 1-1.318 3.182L8 10.475A3.489 3.489 0 0 0 9.025 8c0-.966-.392-1.841-1.025-2.475l.707-.707A4.486 4.486 0 0 1 10.025 8zM7 4a.5.5 0 0 0-.812-.39L3.825 5.5H1.5A.5.5 0 0 0 1 6v4a.5.5 0 0 0 .5.5h2.325l2.363 1.89A.5.5 0 0 0 7 12V4zM4.312 6.39 6 5.04v5.92L4.312 9.61A.5.5 0 0 0 4 9.5H2v-3h2a.5.5 0 0 0 .312-.11z"/>
          </svg>
        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" style="color:red" fill="currentColor" class="bi bi-volume-mute" viewBox="0 0 16 16">
        <path d="M6.717 3.55A.5.5 0 0 1 7 4v8a.5.5 0 0 1-.812.39L3.825 10.5H1.5A.5.5 0 0 1 1 10V6a.5.5 0 0 1 .5-.5h2.325l2.363-1.89a.5.5 0 0 1 .529-.06zM6 5.04 4.312 6.39A.5.5 0 0 1 4 6.5H2v3h2a.5.5 0 0 1 .312.11L6 10.96V5.04zm7.854.606a.5.5 0 0 1 0 .708L12.207 8l1.647 1.646a.5.5 0 0 1-.708.708L11.5 8.707l-1.646 1.647a.5.5 0 0 1-.708-.708L10.793 8 9.146 6.354a.5.5 0 1 1 .708-.708L11.5 7.293l1.646-1.647a.5.5 0 0 1 .708 0z"/>
        </svg>
    </div>
    <audio id="myVideo">
        <source src="https://www.asuzac-acm.com.vn/uploads/audio/phao-hoa.mp3" type="audio/mpeg">
    </audio>
<canvas id="canvas" class="xs-none"></canvas>
<div class="snowflakes" aria-hidden="true">
  <div class="snowflake">
  <img src="https://asuzac-acm.com.vn/uploads/news/2021_12/hoadao.png" />
  </div>
  <div class="snowflake">
    <img src="https://asuzac-acm.com.vn/uploads/news/2021_12/hoamai.png" style="width:20px"/>
  </div>
  <div class="snowflake">
    <img src="https://asuzac-acm.com.vn/uploads/news/2021_12/hoadao.png" />
  </div>
  <div class="snowflake">
    <img src="https://asuzac-acm.com.vn/uploads/news/2021_12/hoamai.png" style="width:20px"/>
  </div>
  <div class="snowflake">
    <img src="https://asuzac-acm.com.vn/uploads/news/2021_12/hoadao.png" />
  </div>
  <div class="snowflake">
    <img src="https://asuzac-acm.com.vn/uploads/news/2021_12/hoamai.png" style="width:20px"/>
  </div>
  <div class="snowflake">
    <img src="https://asuzac-acm.com.vn/uploads/news/2021_12/hoadao.png" />
  </div>
  <div class="snowflake">
    <img src="https://asuzac-acm.com.vn/uploads/news/2021_12/hoamai.png" style="width:20px"/>
  </div>
  <div class="snowflake">
    <img src="https://asuzac-acm.com.vn/uploads/news/2021_12/hoadao.png" />
  </div>
  <div class="snowflake">
    <img src="https://asuzac-acm.com.vn/uploads/news/2021_12/hoamai.png" style="width:20px"/>
  </div>
</div>
<div class="position-absolute-left xs-none">
<img src="https://asuzac-acm.com.vn/uploads/news/2021_12/left-1.png" >
</div>
<div class="position-absolute-right xs-none">
<img src="https://www.asuzac-acm.com.vn/uploads/news/2021_12/right-1.png" >
</div>

<script>
	// when animating on canvas, it is best to use requestAnimationFrame instead of setTimeout or setInterval
	// not supported in all browsers though and sometimes needs a prefix, so we need a shim
	window.requestAnimFrame = ( function() {
		return window.requestAnimationFrame ||
					window.webkitRequestAnimationFrame ||
					window.mozRequestAnimationFrame ||
					function( callback ) {
						window.setTimeout( callback, 1000 / 60 );
					};
	})();

	// now we will setup our basic variables for the demo
	var canvas = document.getElementById( 'canvas' ),
			ctx = canvas.getContext( '2d' ),
			// full screen dimensions
			cw = window.innerWidth,
			ch = window.innerHeight,
			// firework collection
			fireworks = [],
			// particle collection
			particles = [],
			// starting hue
			hue = 120,
			// when launching fireworks with a click, too many get launched at once without a limiter, one launch per 5 loop ticks
			limiterTotal = 20,
			limiterTick = 0,
			// this will time the auto launches of fireworks, one launch per 80 loop ticks
			timerTotal = 500,
			timerTick = 0,
			mousedown = false,
			// mouse x coordinate,
			mx,
			// mouse y coordinate
			my;
	// set canvas dimensions
	canvas.width = cw;
	canvas.height = ch;

	// now we are going to setup our function placeholders for the entire demo

	// get a random number within a range
	function random( min, max ) {
		return Math.random() * ( max - min ) + min;
	}

	// calculate the distance between two points
	function calculateDistance( p1x, p1y, p2x, p2y ) {
		var xDistance = p1x - p2x,
				yDistance = p1y - p2y;
		return Math.sqrt( Math.pow( xDistance, 2 ) + Math.pow( yDistance, 2 ) );
	}

	// create firework
	function Firework( sx, sy, tx, ty ) {
		// actual coordinates
		this.x = sx;
		this.y = sy;
		// starting coordinates
		this.sx = sx;
		this.sy = sy;
		// target coordinates
		this.tx = tx;
		this.ty = ty;
		// distance from starting point to target
		this.distanceToTarget = calculateDistance( sx, sy, tx, ty );
		this.distanceTraveled = 0;
		// track the past coordinates of each firework to create a trail effect, increase the coordinate count to create more prominent trails
		this.coordinates = [];
		this.coordinateCount = 3;
		// populate initial coordinate collection with the current coordinates
		while( this.coordinateCount-- ) {
			this.coordinates.push( [ this.x, this.y ] );
		}
		this.angle = Math.atan2( ty - sy, tx - sx );
		this.speed = 2;
		this.acceleration = 1.05;
		this.brightness = random( 50, 70 );
		// circle target indicator radius
		this.targetRadius = 1;
	}

	// update firework
	Firework.prototype.update = function( index ) {
		// remove last item in coordinates array
		this.coordinates.pop();
		// add current coordinates to the start of the array
		this.coordinates.unshift( [ this.x, this.y ] );
		
		// cycle the circle target indicator radius
		if( this.targetRadius < 8 ) {
			this.targetRadius += 0.3;
		} else {
			this.targetRadius = 1;
		}
		
		// speed up the firework
		this.speed *= this.acceleration;
		
		// get the current velocities based on angle and speed
		var vx = Math.cos( this.angle ) * this.speed,
				vy = Math.sin( this.angle ) * this.speed;
		// how far will the firework have traveled with velocities applied?
		this.distanceTraveled = calculateDistance( this.sx, this.sy, this.x + vx, this.y + vy );
		
		// if the distance traveled, including velocities, is greater than the initial distance to the target, then the target has been reached
		if( this.distanceTraveled >= this.distanceToTarget ) {
			createParticles( this.tx, this.ty );
			// remove the firework, use the index passed into the update function to determine which to remove
			fireworks.splice( index, 1 );
		} else {
			// target not reached, keep traveling
			this.x += vx;
			this.y += vy;
		}
	}

	// draw firework
	Firework.prototype.draw = function() {
		ctx.beginPath();
		// move to the last tracked coordinate in the set, then draw a line to the current x and y
		ctx.moveTo( this.coordinates[ this.coordinates.length - 1][ 0 ], this.coordinates[ this.coordinates.length - 1][ 1 ] );
		ctx.lineTo( this.x, this.y );
		ctx.strokeStyle = 'hsl(' + hue + ', 100%, ' + this.brightness + '%)';
		ctx.stroke();
		
		ctx.beginPath();
		// draw the target for this firework with a pulsing circle
		//ctx.arc( this.tx, this.ty, this.targetRadius, 0, Math.PI * 2 );
		ctx.stroke();
	}

	// create particle
	function Particle( x, y ) {
		this.x = x;
		this.y = y;
		// track the past coordinates of each particle to create a trail effect, increase the coordinate count to create more prominent trails
		this.coordinates = [];
		this.coordinateCount = 5;

		while( this.coordinateCount-- ) {
			this.coordinates.push( [ this.x, this.y ] );
		}
		// set a random angle in all possible directions, in radians
		this.angle = random( 0, Math.PI * 2 );
		this.speed = random( 1, 10 );
		// friction will slow the particle down
		this.friction = 0.95;
		// gravity will be applied and pull the particle down
		this.gravity = 0.6;
		// set the hue to a random number +-20 of the overall hue variable
		this.hue = random( hue - 20, hue + 20 );
		this.brightness = random( 50, 80 );
		this.alpha = 1;
		// set how fast the particle fades out
		this.decay = random( 0.0075, 0.009 );
	}

	// update particle
	Particle.prototype.update = function( index ) {
		// remove last item in coordinates array
		this.coordinates.pop();
		// add current coordinates to the start of the array
		this.coordinates.unshift( [ this.x, this.y ] );
		// slow down the particle
		this.speed *= this.friction;
		// apply velocity
		this.x += Math.cos( this.angle ) * this.speed;
		this.y += Math.sin( this.angle ) * this.speed + this.gravity;
		// fade out the particle
		this.alpha -= this.decay;
		
		// remove the particle once the alpha is low enough, based on the passed in index
		if( this.alpha <= this.decay ) {
			particles.splice( index, 1 );
		}
	}

	// draw particle
	Particle.prototype.draw = function() {
		ctx. beginPath();
		// move to the last tracked coordinates in the set, then draw a line to the current x and y
		ctx.moveTo( this.coordinates[ this.coordinates.length - 1 ][ 0 ], this.coordinates[ this.coordinates.length - 1 ][ 1 ] );
		ctx.lineTo( this.x, this.y );
		ctx.strokeStyle = 'hsla(' + this.hue + ', 100%, ' + this.brightness + '%, ' + this.alpha + ')';

		ctx.stroke();
	}

	// create particle group/explosion
	function createParticles( x, y ) {
		// increase the particle count for a bigger explosion, beware of the canvas performance hit with the increased particles though
		var particleCount = 20;
		while( particleCount-- ) {
			particles.push( new Particle( x, y ) );
		}
	}


	// main demo loop
	function loop() {
		// this function will run endlessly with requestAnimationFrame
		requestAnimFrame( loop );
		
		// increase the hue to get different colored fireworks over time
		hue += 0.5;
		
		// normally, clearRect() would be used to clear the canvas
		// we want to create a trailing effect though
		// setting the composite operation to destination-out will allow us to clear the canvas at a specific opacity, rather than wiping it entirely
		ctx.globalCompositeOperation = 'destination-out';
		// decrease the alpha property to create more prominent trails
		ctx.fillStyle = 'rgba(0, 0, 0, 0.5)';
		ctx.fillRect( 0, 0, cw, ch );
		// change the composite operation back to our main mode
		// lighter creates bright highlight points as the fireworks and particles overlap each other
		ctx.globalCompositeOperation = 'lighter';
		
		// loop over each firework, draw it, update it
		var i = fireworks.length;
		while( i-- ) {
			fireworks[ i ].draw();
			fireworks[ i ].update( i );
		}
		
		// loop over each particle, draw it, update it
		var i = particles.length;
		while( i-- ) {
			particles[ i ].draw();
			particles[ i ].update( i );

		}

		
		// launch fireworks automatically to random coordinates, when the mouse isn't down
		if( timerTick >= timerTotal ) {
			timerTick = 0;
		} else {
			var temp = timerTick % 400;
			if(temp <= 15){		
				fireworks.push( new Firework( 100, ch, random( 190, 200 ), random(90, 100) ));
				fireworks.push( new Firework( cw - 100, ch, random(cw - 200, cw - 190), random(90, 100) ));
			}

			var temp3 = temp / 10;

			if(temp > 319){
				fireworks.push(new Firework(300 + (temp3 - 31 ) * 100 , ch, 300 + (temp3 - 31) * 100 , 200));
			}

			timerTick++;
		}
		
		// limit the rate at which fireworks get launched when mouse is down
		if( limiterTick >= limiterTotal ) {
			if( mousedown ) {
				// start the firework at the bottom middle of the screen, then set the current mouse coordinates as the target
				fireworks.push( new Firework( cw / 2, ch, mx, my ) );
				limiterTick = 0;
			}
		} else {
			limiterTick++;
		}
	}

	// mouse event bindings
	// update the mouse coordinates on mousemove
	canvas.addEventListener( 'mousemove', function( e ) {
		mx = e.pageX - canvas.offsetLeft;
		my = e.pageY - canvas.offsetTop;
	});

	// toggle mousedown state and prevent canvas from being selected
	canvas.addEventListener( 'mousedown', function( e ) {
		e.preventDefault();
		mousedown = true;
	});

	canvas.addEventListener( 'mouseup', function( e ) {
		e.preventDefault();
		mousedown = false;
	});

	// once the window loads, we are ready for some fireworks!
	window.onload = loop;
</script>
    <script type="text/javascript">
        isPlaying = false;
        //const $ = document.querySelector.bind(document);
		
        const play_audio = document.querySelector('.audio-play'); 
        const play_video = document.querySelector('#myVideo');
        const audio_up = document.querySelector('.bi-volume-up');
        const audio_mute = document.querySelector('.bi-volume-mute');
        play_audio.onclick = function () {
           if(this.isPlaying){
            this.isPlaying = false;
            play_video.pause()
            play_audio.classList.remove("playing");
           }else{
            this.isPlaying = true;
            play_video.play();
			play_video.loop = true;
            play_audio.classList.add("playing");
           }
        }
    </script>
<!-- END: main -->