var main=function(){
// menu despegable
    $('.dropdown-toggle').click(function(){
        $('.dropdown-menu').toggle();
    });
    
// deslis entre imagenes hacia la derecha
    $('.arrow-next').click(function(){
        var currentSlide= $('.active-slide')
        var nextSlide= currentSlide.next()
        var currentDot = $('.active-dot')
        var nextDot = currentDot.next()
        
        if (nextSlide.length == 0) {// pregunta si el ultimo deslice esta vacio y asigna next al primero  deslis para que sea un bucle
            nextSlide=$('.slide').first();
            nextDot=$('.dot').first();
        }
        
        
        currentSlide.fadeOut(600).removeClass('active-slide');
        currentDot.removeClass('active-dot');
        nextDot.addClass('active-dot');
        nextSlide.fadeIn(600).addClass('active-slide');
        
        
        });
        
// deslis entre imagnes hacia la izquierda
    $('.arrow-prev').click(function(){
        var currentSlide = $('.active-slide');
        var prevSlide = currentSlide.prev();
        var currentDot = $('.active-dot');
        var prevDot = currentDot.prev
        
        
        if (prevSlide.length == 0){
            prevSlide = $('.slide').last();
            prevDot = $('.dot').last();
        }
        currentSlide.fadeOut(600).removeClass('active-slide');
        prevSlide.fadeIn(600).addClass('active-slide');
        currentDot.removeClass('active-dot');
        prevDot.addClass('active-dot');
        
    });
};
$(document).ready(main);