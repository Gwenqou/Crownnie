$(document).ready(function(){
    /*---sticky navi ---*/
    $('.js--section-daily').waypoint(function(direction){
        if (direction == "down") {
            $('nav').addClass('sticky');
        } else {
            $('nav').removeClass('sticky');   
        }
    }, {
        offset:'60px;'
    });
    
    /*---animation ---*/
    $('.js--section-daily').waypoint(function(direction){
        $('.js--section-daily').addClass('animated fadeIn');
    },{
        offset:'50%' 
    });
    
    /*---mobile nav ---*/
    
    $('.js--nav-icon').click(function(){
        var nav = $('.js--main-nav');
        
        nav.slideToggle(200);
    });
});