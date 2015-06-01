/* slide produk */
$(document).ready(function() {

    
    /* slide menu */
    var active1 = false;
    var active2 = false;
    var active3 = false;
    var active4 = false;
	var active5 = false;

    $('.radial-menu').on('mousedown touchstart', function() {
    
		if (!active1) $(this).find('.menu-item1').css({'transform': 'translate(100px,0px)'});
		else $(this).find('.menu-item1').css({'transform': 'none'}); 

		if (!active2) $(this).find('.menu-item2').css({'transform': 'translate(50px,0px)'});
		else $(this).find('.menu-item2').css({'transform': 'none'});

		if (!active3) $(this).find('.menu-item3').css({'transform': 'translate(-100px,0px)'});
		else $(this).find('.menu-item3').css({'transform': 'none'});

		if (!active4) $(this).find('.menu-item4').css({'transform': 'translate(-50px,0px)'});
		else $(this).find('.menu-item4').css({'transform': 'none'});

		if (!active4) $(this).find('.menu-item5').css({'transform': 'translate(0px,-70px)', 'opacity':'1.0'});
		else $(this).find('.menu-item5').css({'transform': 'none', 'opacity':'0.0'});

		if (!active4) $(this).find('.menu-item6').css({'transform': 'translate(0px,0px)', 'opacity':'0.0'});
		else $(this).find('.menu-item6').css({'transform': 'none', 'opacity':'1.0'});
		active1 = !active1;
		active2 = !active2;
		active3 = !active3;
		active4 = !active4;
		active5 = !active5;
		
		console.log($(this).children('div').length);
		//console.log($(this).parent('.row'));
    
    });
    
    $('.items-produk-link a').mousedown(function() {
            window.location = $(this).attr('href');
            return true;
    });

    /* carousel */
    $('#Carousel').carousel({
        interval: 5000
    });
	
	/* TOOLTIPS */
    $(function () {
	  $('[data-toggle="tooltip"]').tooltip();
	});
	
	
	// CONTACT Form
	$('#contact-form').bootstrapValidator({
//        live: 'disabled',
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
    
    //TweenMax.to('.egg1', 5, {x: 300, ease:Power1.easeInOut}); 
    //TweenMax.to('.egg1', 5, {y: 150, ease:Elastic.easeOut});
    //TweenMax.to('.egg1', 3, {css:{bezier:{type:"soft", values:[{x:0, y:0}], autoRotate:true}}, ease:Power1.easeInOut});
           
    if ($('.hello').size() > 0) {
        var egg = $('.hello').after('<img class="egg1" src="'+base_URL+'assets/public/img/egg1.png"/>').css({'z-index':1});
        TweenMax.from('.hello', 1, {scale:0.5, opacity:0, delay:0.06, ease:Elastic.easeOut, force3D:true}, 0.1)
        TweenMax.staggerTo(".egg1", 5, {rotation:320, y:-360,x:240,'z-index':0, ease:Elastic.easeOut}, 1.5);
        
        $('.hello').hover(function() {
            //TweenMax.from('.hello', 1, {scale:0.8, ease:Elastic.easeOut, force3D:true}, 0.1)
        },
        function() {
            //TweenMax.from('.hello', 1, {scale:1, ease:Elastic.easeOut, force3D:true}, 0.1)        
        });
    }
    
 
    var controller = $.superscrollorama();
	// individual element tween examples
	//controller.addTween('.hello', TweenMax.from('.hello', 1, {scale:0.5, opacity:0, delay:0.05, ease:Elastic.easeOut, force3D:true}, 0.2));
       
	//controller.addTween('.egg1', TweenMax.from(".egg1", 1, {rotation:340, y:-360,x:240,'z-index':0}, 0.2));
       
	controller.addTween('#fade-it1', TweenMax.from( $('#fade-it1'), 1, {css:{opacity: 0}}));
	controller.addTween('#fade-it2', TweenMax.from( $('#fade-it2'), 1, {css:{opacity: 0}}));
	controller.addTween('#fade-it3', TweenMax.from( $('#fade-it3'), 1, {css:{opacity: 0}}));
	controller.addTween('#fade-it4', TweenMax.from( $('#fade-it4'), 1, {css:{opacity: 0}}));
	
	controller.addTween('.mayo1', TweenMax.from( $('.mayo1'), .30, {css:{opacity: 0, scale:0}, ease:Quad.easeInQuart}));
	controller.addTween('.mayo2', TweenMax.from( $('.mayo2'), .50, {css:{opacity: 0, scale:0}, ease:Quad.easeInQuart}));
	controller.addTween('.mayo3', TweenMax.from( $('.mayo3'), .70, {css:{opacity: 0, scale:0}, ease:Quad.easeInQuart}));
	controller.addTween('.mayo4', TweenMax.from( $('.mayo4'), .80, {css:{opacity: 0, scale:0}, ease:Quad.easeInQuart}));
	controller.addTween('.mayo5', TweenMax.from( $('.mayo5'), .90, {css:{opacity: 0, scale:0}, ease:Quad.easeInQuart}));
	
	
	
	
	controller.addTween('#fade-it5', TweenMax.from( $('#fade-it5'), 1, {css:{opacity: 0}}));
	controller.addTween('#fade-it6', TweenMax.from( $('#fade-it6'), 1, {css:{opacity: 0}}));
	controller.addTween('#fade-it7', TweenMax.from( $('#fade-it7'), 1, {css:{opacity: 0}}));
	
	controller.addTween('#fly-it1', TweenMax.from( $('#fly-it1'), 1, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it2', TweenMax.from( $('#fly-it2'), 1, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it3', TweenMax.from( $('#fly-it3'), 1, {css:{left:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it4', TweenMax.from( $('#fly-it4'), 1, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it5', TweenMax.from( $('#fly-it5'), 1, {css:{left:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it6', TweenMax.from( $('#fly-it6'), 1, {css:{left:'2000px'}, ease:Quad.easeInOut}));
	
	controller.addTween('#spin-it', TweenMax.from( $('#spin-it'), .25, {css:{opacity:0, rotation: 720}, ease:Quad.easeOut}));
	
	controller.addTween('#scale-it', TweenMax.fromTo( $('#scale-it'), .5, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut}));
	controller.addTween('#scale-it1', TweenMax.fromTo( $('#scale-it1'), .5, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut}));
	controller.addTween('#scale-it2', TweenMax.fromTo( $('#scale-it2'), .5, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut}));
	controller.addTween('#scale-it3', TweenMax.fromTo( $('#scale-it3'), .5, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut}));
	
	controller.addTween('#smush-it', TweenMax.fromTo( $('#smush-it'),  1.5, {css:{opacity:0, 'margin':'0 30px'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, 'letter-spacing':'-10px'}, ease:Quad.easeInOut}), 0, 100); // 100 px offset for better timing
	controller.addTween('.rotate-cup', TweenMax.to('.rotate-cup', 5, {rotation:360, scale:1}));
	
});