/**
 * Created by 振 on 2018/8/8.
 */
$(document).ready(function(){
   $(".picture,.check-p").click(function(){
       $(".shadow").css({'display':'block'});
       $(".cinema-center").css({"opacity":".2"});
   }) ;
    $(".close").click(function(){
        $(".shadow").css({'display':'none'});
        $(".cinema-center").css({"opacity":"1"});
    });

});
/**
 * 获取当前时间
* */
$(document).ready(function(){
    var date = new Date();
    var month = date.getMonth()+1; //获取月
    var day = date.getDate(); //获取日
    var today = month+'-'+day;
    var tomorrow= getNextDay(today);
    var todays = '今天 '+month+'月'+day+'日 ';
    $(".today").append(" "+todays);
    $(".tomorrow").append(" "+tomorrow);
    $(".wdate").val(todays);
});

function getNextDay(date2){
    date2 = new Date(date2);
    date2 = +date2 + 1000*60*60*24;
    date2 = new Date(date2);
    var m= date2.getMonth()+1;
    var d= date2.getDate() ;
    return '明天 '+m+'月'+d+'日';
}

/**
* 电影院介绍轮播图
* */
var slideIndex = 1;

function slide(n){
    hiddenslide(slideIndex += n);
}
function currenthp(n) {
    hiddenslide( slideIndex = n);
}

function hiddenslide(n){
    var i;
    var hp = document.getElementsByClassName("hp");
    var current = document.getElementsByClassName("current-hp");

    if (n > hp.length) {slideIndex = 1}
    if (n < 1) {slideIndex = hp.length}

    for (i = 0;i < hp.length; i++) {
        hp[i].style.display = "none";
    }
    for (i = 0;i < current.length;i ++) {
        current[i].className = current[i].className.replace(" actives","");
    }
    hp[slideIndex-1].style.display = "block";
    current[slideIndex-1].className += " actives";
}
/**
 * 电影信息
 * */
function movieSlide(n) {
    var i;
    var movies = document.getElementsByClassName("movie");
    var show_lists = document.getElementsByClassName("show-list");
    if (n == -1) {
        for (i = 0;i < movies.length;i ++){
            movies[i].style.display = "none";
            movies[i].className = movies[i].className.replace(" actives2","");
        }
        for (i = 0;i < movies.length-5;i ++){
            movies[i].style.display = "block";
        }
        for (i = 0;i < show_lists.length;i ++){
            show_lists[i].style.display = "none";
        }
        show_lists[0].style.display = "block";
        movies[0].className += " actives2";
        movies[6].className = movies[6].className.replace(" actives2","");
    }
    if (n == 1){
        for (i = 0;i < movies.length;i ++){
            movies[i].style.display = "none";
            movies[i].className = movies[i].className.replace(" actives2","");
        }
        for (i = 6;i < movies.length;i ++){
            movies[i].style.display = "block";
        }
        for (i = 0;i < show_lists.length;i ++){
            show_lists[i].style.display = "none";
        }
        show_lists[6].style.display = "block";
        movies[0].className = movies[0].className.replace(" actives2","");
        movies[6].className += " actives2";
    }
}
$(document).ready(function() {
	movieInfo(1);
});

function movieInfo(n) {
    var i;
    var movie = document.getElementsByClassName("movie");
    var show_lists = document.getElementsByClassName("show-list");
    if ( n > movie.length){n = 1}
    if (n < 1) {n = movie.length}

    for (i = 0;i < movie.length;i ++){
        movie[i].className = movie[i].className.replace(" actives2","");
    }
    for (i = 0;i < show_lists.length;i ++){
        show_lists[i].style.display = "none";
    }
    movie[n-1].className += " actives2";
    show_lists[n-1].style.display = "block";
}

