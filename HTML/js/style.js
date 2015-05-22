/* slide produk */
$(document).ready(function() {
    /* slide menu */
    var active1 = false;
    var active2 = false;
    var active3 = false;
    var active4 = false;

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
    
    });
    
	$('.menu-item5 a').click(function() {
		window.location = $(this).attr('href');
		// return true;
	});
	
    /* carousel */
    $('#Carousel').carousel({
        interval: 5000
    })
	
	/* TOOLTIPS */
    $(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})
	
	
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
    
    var controller = $.superscrollorama();
	// individual element tween examples
	controller.addTween('#fade-it1', TweenMax.from( $('#fade-it1'), .5, {css:{opacity: 0}}));
	controller.addTween('#fade-it2', TweenMax.from( $('#fade-it2'), .5, {css:{opacity: 0}}));
	controller.addTween('#fade-it3', TweenMax.from( $('#fade-it3'), .5, {css:{opacity: 0}}));
	controller.addTween('#fade-it4', TweenMax.from( $('#fade-it4'), .5, {css:{opacity: 0}}));
	controller.addTween('#fade-it5', TweenMax.from( $('#fade-it5'), .5, {css:{opacity: 0}}));
	controller.addTween('#fade-it6', TweenMax.from( $('#fade-it6'), .5, {css:{opacity: 0}}));
	controller.addTween('#fade-it7', TweenMax.from( $('#fade-it7'), .5, {css:{opacity: 0}}));
	
	controller.addTween('#fly-it1', TweenMax.from( $('#fly-it1'), .25, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it2', TweenMax.from( $('#fly-it2'), .25, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it3', TweenMax.from( $('#fly-it3'), .25, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it4', TweenMax.from( $('#fly-it4'), .35, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it5', TweenMax.from( $('#fly-it5'), .35, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	controller.addTween('#fly-it6', TweenMax.from( $('#fly-it6'), .35, {css:{right:'2000px'}, ease:Quad.easeInOut}));
	
	controller.addTween('#spin-it', TweenMax.from( $('#spin-it'), .25, {css:{opacity:0, rotation: 720}, ease:Quad.easeOut}));
	
	controller.addTween('#scale-it', TweenMax.fromTo( $('#scale-it'), .25, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut}));
	controller.addTween('#scale-it1', TweenMax.fromTo( $('#scale-it1'), .25, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut}));
	controller.addTween('#scale-it2', TweenMax.fromTo( $('#scale-it2'), .25, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut}));
	controller.addTween('#scale-it3', TweenMax.fromTo( $('#scale-it3'), .25, {css:{opacity:0, width:'10%'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, width:'100%'}, ease:Quad.easeInOut}));
	
	controller.addTween('#smush-it', TweenMax.fromTo( $('#smush-it'), .25, {css:{opacity:0, 'margin':'0 30px'}, immediateRender:true, ease:Quad.easeInOut}, {css:{opacity:1, 'letter-spacing':'-10px'}, ease:Quad.easeInOut}), 0, 100); // 100 px offset for better timing
	controller.addTween('.rotate-cup', TweenMax.to('.rotate-cup', 5, {rotation:360, scale:1}));
	
});