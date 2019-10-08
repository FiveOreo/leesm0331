<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>
    <head>
    	<title>Music Player</title>
    	<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/m main.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/css/music player.css" rel="stylesheet" type="text/css">
    </head>
    
<jsp:include page="top.jsp"/>
	<body>
		<div id="bg">
			<div id="blackLayer"></div>
			<img src="image/Poster1.jpg"/>
		</div>
		
		<div id="main">
			<div id="image">
				<img src="image/Poster1.jpg"/>
			</div>
				<div id="player">
					<div id="songtitle"></div>
					<div id="buttons">
					<button id="pre" onclick="pre()"><img src="image/Pre.png" height="90%" width="90%"/></button>
					<button id="play" onclick="playOrPauseSong()"><img src="image/Play.png"/></button>
					<button id="next" onclick="next()"><img src="image/Next.png" height="90%" width="90%"/></button>
				</div>
				<div id="seek-bar">
				<div id="fill"></div>
				<div id="handle"></div>
				</div>
			</div>
		</div>
		</body>
		<script type="text/javascript">
		
		var songs=["music/Song1.mp3","music/Song2.mp3","music/Song3.mp3","music/Song4.mp3","music/Song5.mp3","music/Song6.mp3","music/Song8.mp3","music/Song9.mp3","music/Song10.mp3"
			,"music/Song11.mp3","music/Song12.mp3","music/Song13.mp3","music/Song14.mp3","music/Song15.mp3","music/Song16.mp3","music/Song18.mp3","music/Song19.mp3",
			"music/Song20.mp3","music/Song21.mp3","music/Song22.mp3","music/Song23.mp3","music/Song24.mp3","music/Song25.mp3","music/Song26.mp3","music/Song27.mp3","music/Song28.mp3","music/Song29.mp3"
			,"music/Song30.mp3","music/Song32.mp3","music/Song33.mp3","music/Song34.mp3","music/Song35.mp3","music/Song36.mp3","music/Song37.mp3","music/Song38.mp3","music/Song39.mp3",
			"music/Song40.mp3","music/Song41.mp3","music/Song42.mp3","music/Song43.mp3","music/Song44.mp3","music/Song45.mp3","music/Song46.mp3","music/Song47.mp3","music/Song48.mp3","music/Song49.mp3","music/Song50.mp3"];
		var poster=["image/Poster1.jpg","image/Poster2.jpg","image/Poster3.jpg"];
		
		var songTitle = document.getElementById("songTitle");
		var fillBar = document.getElementById("fill");
		
		var song= new Audio();
		var currentSong = 0;
		
		window.onload = playSong;
		
		function playSong(){
			song.src = songs[currentSong];
			
			songTitle.textContent = songs[currentSong];
			
			song.play();
		}
		function playOrPauseSong(){
			if(song.paused){
				song.play();
				$("#play img").attr("src","image/Pause.png");
			}
			else{
				song.pause();
				$("#play img").attr("src","image/Play.png");
			}
		}
		song.EventListener('timeupdate',function(){
			var position = song.currentTime / song.duration;
			
			fillBar.style.width = position * 100 + '%';
			
		});
		function next(){
			currentSong++;
			if(currentSong > 47){
				currentSong = 0;
			}
			playSong();
			$("#play img").attr("src","image/Pause.png");
			$("#image img").attr("src",poster[currentSong]);
			$("#bg img").attr("src",poster[currentSong]);
		}
		
		function pre(){
			currentSong--;
			if(currentSong < 0){
				currentSong = 47;
			}
			playSong();
			$("#play img").attr("src","image/Pause.png");
			$("#image img").attr("src",poster[currentSong]);
			$("#bg img").attr("src",poster[currentSong]);
		}
		</script>
		
		
	</html>
<jsp:include page="foot.jsp"/>