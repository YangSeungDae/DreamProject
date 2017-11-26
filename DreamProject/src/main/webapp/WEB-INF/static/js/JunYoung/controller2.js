$().ready(function() {
	
	var view = 0; 	//현제 위치 지정
	var max = 0;		//이미지 수
	
	var container;		//리스트를 가지고 잇는 ul 
	var interval;
	
	var startButton;
	
	init();
	
	$(".slide").mouseenter(function() {
		$(".prev").stop().fadeIn();
		$(".next").stop().fadeIn();
	});
	$(".slide").mouseleave(function() {
		$(".prev").stop().fadeOut();
		$(".next").stop().fadeOut(); 
	});
	
	$(".prev").mouseenter(function() {
		$(this).find("img").attr("src", "/DreamProject/img/slide/main/controls_left_over.png");
	}); 
	$(".prev").mouseleave(function() {
		$(this).find("img").attr("src", "/DreamProject/img/slide/main/controls_left.png");
	}); 
	
	$(".next").mouseenter(function() {
		$(this).find("img").attr("src", "/DreamProject/img/slide/main/controls_right_over.png");
	}); 
	$(".next").mouseleave(function() { 
		$(this).find("img").attr("src", "/DreamProject/img/slide/main/controls_right.png");
	}); 
	
	var isClick = false;
	$(".bx-start").click(function() {
		if(!isClick){
			$(this).find("img").attr("src", "/DreamProject/img/slide/main/play_button.png");
			clearInterval(interval);
			isClick = true;
		} 
		else{ 
			$(this).find("img").attr("src", "/DreamProject/img/slide/main/stop_button.png");
			clearInterval(interval);
			interval = setInterval(next, 6000);
			isClick = false;
		} 
	});
	
	function slideBtnImageChange(){
		if(view == 0) {
			$(".slide1").find("img").attr("src","/DreamProject/img/slide/main/blue_button.png");
			$(".slide2").find("img").attr("src","/DreamProject/img/slide/main/white_button.png")
			$(".slide2").parent().css({
				"padding-bottom": "2px" 
			});
		} else {
			$(".slide2").find("img").attr("src","/DreamProject/img/slide/main/blue_button.png");
			$(".slide1").find("img").attr("src","/DreamProject/img/slide/main/white_button.png")
			$(".slide1").parent().css({
				"padding-bottom" : "2px"
			});
		}
	}
	
	function palyBtnImageChange(){
		$(".bx-start").find("img").attr("src", "/DreamProject/img/slide/main/play_button.png");
	}
	
	$(".slide1").click(function(){
		view= 0;
		clearInterval(interval);
		palyBtnImageChange();
		slideBtnImageChange();
		animate(); 
	});
	
	$(".slide2").click(function(){
		view =1;
		clearInterval(interval);
		palyBtnImageChange();
		slideBtnImageChange();
		animate();
	}); 
	

	
	function init() { 
		container = $(".slide ul");
		max = container.children().length;
	
		events(); 
		slide_interval();
	}
	   
	function events() {
		$("button.prev").on("click", function(){clearInterval(interval); prev(); slideBtnImageChange(); palyBtnImageChange();});
		$("button.next").on("click", function(){clearInterval(interval); next(); slideBtnImageChange(); palyBtnImageChange();});
		
		
	}
	
	function prev(e) {
		
		console.log(view);
		
		view--;
		if( view < 0) view = max-1;
		animate();
		slideBtnImageChange();
	}
	
	function next(e) {
		view++;
		if( view > max-1 ) view = 0; 
		animate();
		slideBtnImageChange();
	}
	
	function slide_interval(e){
		clearInterval(interval);			//누적되니까 지워주는게 좋음 
		interval = setInterval(next, 6000);	//지속적으로 함수를 호출
	}
	 
	function animate() {
		var moveX = view * $(window).width();
		TweenMax.to(container, 3.0, {marginLeft:-moveX, ease:Expo.easeOut});
		
		
		 
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
	

	
