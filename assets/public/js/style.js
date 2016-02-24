/* slide produk */
$(document).ready(function() {
    /*** maps ***/
    //console.log(typeof(google) == 'object');
    if(typeof(google) == 'object') {
        $(".maps").gmap3({
            map:{
                options:{
                  animation:google.maps.Animation.DROP,
                  center:[-6.2738346,106.7132423],
                  zoom: 14
                }
              },
              marker:{
                //values:[{address:"Ruko Kebayoran Arcade 3, Pondok Pucung, Pondok Aren",id:"1",data:"<div><strong>Kewpie Sales Office</strong></div><div> Ruko Kebayoran Arcade 3 Blok KA/E1-09 Bintaro Jaya, Tangerang Selatan, Indonesia</div>",options:{"icon":base_URL + "assets/public/img/maps.png","animation":"google.maps.Animation.DROP"}}],
                values:[{address:"Ruko Kebayoran Arcade 3, Pondok Pucung, Pondok Aren, Tangerang Selatan, Indonesia",id:"1",data:"<div><strong>Kewpie Sales Office</strong></div><div>Ruko Kebayoran Arcade 3 Blok KA/E1-09 Bintaro Jaya, Tangerang Selatan, Indonesia</div>",options:{"animation":"google.maps.Animation.DROP"}}],
                options:{
                    draggable: false,
                    animation:google.maps.Animation.DROP,
                    zoom: 14
                },
                events:{
                    mouseover: function(marker, event, context){
                      //marker.setAnimation(google.maps.Animation.BOUNCE);  
                      var map = $(this).gmap3("get"),
                        infowindow = $(this).gmap3({get:{name:"infowindow"}});
                      if (infowindow){
                        infowindow.open(map, marker);
                        infowindow.setContent(context.data);
                      } else {
                        $(this).gmap3({
                          infowindow:{
                            anchor:marker, 
                            options:{content: context.data}
                          }
                        });
                      }
                    },
                    mouseout: function(){
                      //marker.setAnimation(null);  
                      var infowindow = $(this).gmap3({get:{name:"infowindow"}});
                      if (infowindow){
                        infowindow.close();
                      }
                    },
                    click: function(marker, event, context){
                        //markerSelected(context.id);
                        marker.setAnimation(google.maps.Animation.BOUNCE);              
                        setTimeout(function(){
                            marker.setAnimation(null);
                        },1500);
                    }
                  }
              }
          });   
	}
    /* slide menu */

    var active1 = false;
    var active2 = false;
    var active3 = false;
    var active4 = false;
    var active5 = false;

    $('.radial-menu').on('mousedown touchstart', function() {
        
        //$(this).parents().find('.handler').css({'transform': 'none'});
    
        if (!active1) $(this).find('.menu-item1').css({'transform': 'translate(50px,0px)','z-index': '1'});
        else $(this).find('.menu-item1').css({'transform': 'none','z-index': '1'}); 

        if (!active2) $(this).find('.menu-item2').css({'transform': 'translate(-50px,0px)','z-index': '1'});
        else $(this).find('.menu-item2').css({'transform': 'none','z-index': '1'});

        if (!active3) $(this).find('.menu-item3').css({'transform': 'translate(100px,0px)','z-index': '0'});
        else $(this).find('.menu-item3').css({'transform': 'none','z-index': '0'});

        if (!active4) $(this).find('.menu-item4').css({'transform': 'translate(-100px,0px)','z-index': '0'});
        else $(this).find('.menu-item4').css({'transform': 'none','z-index': '0'});

        if (!active4) $(this).find('.menu-item5').css({'transform': 'translate(0px,-70px)', 'opacity':'1.0'});
        else $(this).find('.menu-item5').css({'transform': 'none', 'opacity':'0.0'});

        if (!active4) $(this).find('.menu-item6').css({'transform': 'translate(0px,0px)', 'opacity':'0.0'});
        else $(this).find('.menu-item6').css({'transform': 'none', 'opacity':'1.0'});
        active1 = !active1;
        active2 = !active2;
        active3 = !active3;
        active4 = !active4;
        active5 = !active5;

        //console.log($(this).children('div').length);
        //console.log($(this).parent('.row'));
    
    });
    $('.items-produk-link a').mousedown(function() {
        window.location = $(this).attr('href');
        return true;
    });
    /* carousel */
	if ($('#Carousel').size > 0) {
		$('#Carousel').carousel({ interval: 5000, swipe: 30 /* percent-per-second, default is 50. Pass false to disable swipe */ });
    }
    /* carousel */
	if ($('#Carousel1').size > 0) {
		$('#Carousel1').carousel({ interval: 5000, swipe: 30 /* percent-per-second, default is 50. Pass false to disable swipe */ });
	}
    /* TOOLTIPS */
    $(function () { $('[data-toggle="tooltip"]').tooltip(); });
	
	/* fancybox */
    $('.fancybox').fancybox();
    	
	if ($('.fancybox-video').size() > 0) {
            $('.fancybox-video').fancybox({		
                    'type'			: 'iframe'
            });
	}
        
	//$('.carousel-inner').liveFilter('#livefilter-input', 'div.item', {
		//filterChildSelector: 'a.text-handler'
	//});
        //
	//var options = {
            //valueNames: [ 'subject']
        //};

	//var userList = new List('quote-carousel', options);
	  
    // CONTACT Form
    $('#contact-form').bootstrapValidator({
        // live: 'disabled',
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            Name: {
                validators: {
                    notEmpty: {
                        message: 'The Name is required and cannot be empty'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'The email address is required'
                    },
                    emailAddress: {
                        message: 'The email address is not valid'
                    }
                }
            },
            Message: {
                validators: {
                    notEmpty: {
                        message: 'The Message is required and cannot be empty'
                    }
                }
            }
        }
    });
	
    //EFFECT
           
    //console.log($('.img-produk-kami h3').offset().left);           
    //console.log($('.img-produk-kami h3').offset().top);

    if ($('.hello').size() > 0) {
        
        TweenMax.from('.hello', 1, {scale:0.5, opacity:0, delay:0.06, ease:Elastic.easeOut}, 0.1);
        TweenMax.fromTo($('.egg1'), 1, 
	        {css:{rotation:0, scale:0, y:-353, x:840}, immediateRender:true, ease:Quad.easeInOutQuart}, 
	        {css:{rotation:360, scale:1, y:-353, x:840}, immediateRender:true, ease:Quad.easeInOutQuart});
        
        //TweenMax.fromTo( $('.egg1'), 1.5, {css:{rotation:10}, immediateRender:true, ease:Quad.easeInOut}, {css:{rotation:0}, ease:Elastic.easeOut, repeat:-1},9000)
        
        TweenMax.from('.scroll-me', 1, {rotation:320, y:360,x:-240,'z-index':0, ease:Elastic.easeOut}, 0.1);
        TweenMax.fromTo( $('.scroll-me'), 1.5, {css:{y:-3}, immediateRender:true, ease:Quad.easeInOut}, {css:{y:0}, ease:Quad.easeInOut, repeat:-1});
        
        $('.hello').hover(function() {
            //TweenMax.from('.hello', 1, {scale:0.8, ease:Quad.easeInQuart, force3D:true}, 0.1)
        },
        function() {
            //TweenMax.from('.hello', 1, {scale:1, ease:Quad.easeInQuart, force3D:true}, 0.1)        
        });
    }
    
    $('.mayo1, .mayo2, .mayo3, .mayo4, .mayo5').hover(function(){ 
        TweenMax.to($(this), .1, {css:{scale:1.05}, immediateRender:true, ease:Quad.easeOut}); 
    },function() {
        TweenMax.to($(this), .1, {css:{scale:1}, immediateRender:true, ease:Quad.easeOut}); 
    });
    
    var controller = $.superscrollorama();

    //var h3_our_product_x = Math.round($('.img-produk-kami h3').offset().left),
        //h3_our_product_y = Math.round($('.img-produk-kami h3').offset().top);

    //console.log(h3_our_product_x);
    //console.log(h3_our_product_y);
    
        controller.addTween('.hello',
            (new TimelineLite())
            .append(
	      TweenMax.fromTo($('.egg1'), 1, 
	        {css:{rotation:0, y:-353, x:840}, immediateRender:true, ease:Quad.easeInQuart}, 
	        {css:{rotation:360, y:-100, x:840}, immediateRender:true, ease:Quad.easeInQuart})
            ).append(
                TweenMax.fromTo( $('.egg1'), 1.8, {css:{rotation:10}, immediateRender:true, ease:Quad.easeInOut}, {css:{rotation:0}, ease:Elastic.easeOut, repeat:-1})
            ), 1 // scroll duration of tween
        );

        controller.addTween('#fade-it1', 
            (new TimelineLite())
                .append(
                    TweenMax.from( $('#fade-it1'), 1, {css:{opacity: 0}})
                )
                .append(
                    TweenMax.fromTo($('.egg1'), 1.5, 
                    {css:{rotation:360, y:-100, x:840}, ease:Quad.easeInQuart}, 
                    {css:{rotation:0, y:30, x:520}, immediateRender:true, ease:Quad.easeInQuart}
                )
            ), 1 // scroll duration of tween
        );

        controller.addTween('#scale-it', 
            (new TimelineLite())
                .append(TweenMax.fromTo( $('#scale-it'), .5, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut})
            )// scroll duration of tween
        );
	
        
        controller.addTween('#fade-it2', (new TimelineLite())
                .append(TweenMax.from( $('#fade-it2'), 1, {css:{opacity: 0}})
            )
            .append(
                TweenMax.fromTo($('.egg1'), 1.5, 
                {css:{rotation:0, y:30, x:520}, ease:Quad.easeInQuart}, 
                {css:{rotation:360, y:850, x:800}, immediateRender:true, ease:Quad.easeInQuart}
            )
        ), 1 // scroll duration of tween
        );
        
        controller.addTween('#fly-it1', 
            (new TimelineLite())
            .append(
                TweenMax.from( $('#fly-it1'), 1, {css:{right:'2000px'}, ease:Quad.easeInOut})
            )
            .append(
                TweenMax.fromTo($('.egg1'), 1.2, 
                {css:{rotation:360, y:850, x:800}, immediateRender:true, ease:Quad.easeInQuart}, 
                {css:{rotation:0, y:1360, x:700}, immediateRender:true, ease:Quad.easeInQuart})
            ), .8 // scroll duration of tween
        );
        
        controller.addTween('#fade-it3',  (new TimelineLite())
            .append(
                TweenMax.from( $('#fade-it3'), 1, {css:{opacity: 0}})
            )
            .append(
                TweenMax.fromTo($('.egg1'), 1.5, 
                {css:{rotation:0, y:1360, x:700}, immediateRender:true, ease:Quad.easeInQuart}, 
                {css:{rotation:360, y:2840, x:-10}, immediateRender:true, ease:Quad.easeInQuart})
            ), .8 // scroll duration of tween
        );

        //var h3_kewpie_story_x = Math.round($('.title-cerita-kewpie h3.story_head').offset().left),
        //   h3_kewpie_story_y = Math.round($('.title-cerita-kewpie h3.story_head').offset().top);	

        controller.addTween('#scale-it2', (new TimelineLite())
            .append(
                TweenMax.fromTo( $('#scale-it2'), .5, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut})
            )
            .append(
                TweenMax.fromTo($('.egg1'), 1.2, 
                {css:{rotation:0, y:2840, x:-10}, immediateRender:true, ease:Quad.easeInQuart}, 
                {css:{rotation:360, y:3630, x:700}, immediateRender:true, ease:Quad.easeInQuart})
            ), .8 // scroll duration of tween 
        );

        //var h3_kewpie_news_x = Math.round($('.news-latest').position().left),
        //h3_kewpie_news_y = Math.round($('.news-latest').position().top);

        //$('.title-cerita-kewpie h3.news_head').attr("style","border:1px solid red");
        //console.log(h3_kewpie_news_x);
        //console.log(h3_kewpie_news_y);

        controller.addTween('#scale-it3', (new TimelineLite())
            //.append(
                //TweenMax.from($('#scale-it3'), .45,{css:{opacity:0,y:-350},ease:Quad.easeIn},-200, false)
            //)
            .append(
                TweenMax.fromTo($('.egg1'), 0.8, 
                {css:{rotation:360, y:3630, x:700}, immediateRender:true, ease:Quad.easeInQuart}, 
                {css:{rotation:0, y:4082, x:500}, immediateRender:true, ease:Quad.easeInQuart})
            ).append(
                TweenMax.fromTo( $('.egg1'), 1.8, {css:{rotation:10}, immediateRender:true, ease:Quad.easeInOut}, {css:{rotation:0}, ease:Elastic.easeOut, repeat:-1})
            ), .8 // scroll duration of tween  
        );
	
	
	
	controller.addTween('#fade-it4', TweenMax.from( $('#fade-it4'), 1, {css:{opacity: 0}}));
	controller.addTween('#fade-it5', TweenMax.from( $('#fade-it5'), 1, {css:{opacity: 0}}));
	controller.addTween('#fade-it6', TweenMax.from( $('#fade-it6'), 1, {css:{opacity: 0}}));
        controller.addTween('#fade-it7', TweenMax.from( $('#fade-it7'), 1, {css:{opacity: 0}}));
	controller.addTween('#fade-it8', TweenMax.from( $('#fade-it8'), 2, {css:{opacity: 0}}));
	
	controller.addTween('.mayo1', TweenMax.from( $('.mayo1'), .15, {css:{opacity: 0, scale:0}, ease:Quad.easeInQuart}));
	controller.addTween('.mayo2', TweenMax.from( $('.mayo2'), .35, {css:{opacity: 0, scale:0}, ease:Quad.easeInQuart}));
	controller.addTween('.mayo3', TweenMax.from( $('.mayo3'), .55, {css:{opacity: 0, scale:0}, ease:Quad.easeInQuart}));
	controller.addTween('.mayo4', TweenMax.from( $('.mayo4'), .75, {css:{opacity: 0, scale:0}, ease:Quad.easeInQuart}));
	controller.addTween('.mayo5', TweenMax.from( $('.mayo5'), .85, {css:{opacity: 0, scale:0}, ease:Quad.easeInQuart}));
	
	controller.addTween('#fly-it2', TweenMax.from( $('#fly-it2'), 1, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it3', TweenMax.from( $('#fly-it3'), 1, {css:{left:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it4', TweenMax.from( $('#fly-it4'), 1, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it5', TweenMax.from( $('#fly-it5'), 1, {css:{left:'2000px'}, ease:Quad.easeInOut}));
        
        controller.addTween('#fly-it6', TweenMax.fromTo( $('#fly-it6'), .65, {css:{opacity:0, y:-390}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, y:-560}, ease:Quad.easeInOut}));
	
	controller.addTween('#spin-it', TweenMax.from( $('#spin-it'), .25, {css:{opacity:0, rotation: 720}, ease:Quad.easeOut}));
        
        controller.addTween('#scale-it1', TweenMax.fromTo( $('#scale-it1'), .5, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut}));
	
	controller.addTween('#smush-it', TweenMax.fromTo( $('#smush-it'),  1.5, {css:{opacity:0, 'margin':'0 30px'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, 'letter-spacing':'-10px'}, ease:Quad.easeInOut}), 0, 100); // 100 px offset for better timing
        controller.addTween('.rotate-cup', TweenMax.to('.rotate-cup', 80, {rotation:360, repeat:-1, ease:Linear.easeNone}));	
});