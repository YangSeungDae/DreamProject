$().ready(function() {
	
	var view = 0; 	//현제 위치 지정
	var max = 0;		//이미지 수
	
	var container;		//리스트를 가지고 잇는 ul 
	var interval;
	var xml;
	
	init();
	
	function init() {
		container = $(".slide ul");
		max = container.children().length;
		events(); 
		
		interval = setInterval(next, 3000); 
	}
	 
	function events() {
		$("button.prev").on("click", prev);
		$("button.next").on("click", next);
		
		
	}
	
	function prev(e) {
		view--;
		if( view < 0) view = max-1;
		animate();
	}
	
	function next(e) {
		view++;
		if( view > max-1 ) view = 0; 
		animate();
	}
	
	function animate() {
		var moveX = view * 1023;
		TweenMax.to(container, 0.8, {marginLeft:-moveX, ease:Expo.easeOut});
		
		clearInterval(interval);			//누적되니까 지워주는게 좋음
		interval = setInterval(next, 3000);	//지속적으로 함수를 호출
		
		//setTimeout();	지정한 시간에 딱 한번 호출
		
		/*$(window).on("keydown", function(e) {
			if(e.which == 39) {
				clearInterval(interval);	재생과 멈춤
			}
			if(e.which == 	37){
				interval = setInterval(next, 3000);	
			}
		})*/
	}
	
});
	

	
