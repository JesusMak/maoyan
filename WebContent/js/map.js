/**
 * Created by 振 on 2018/8/28.
 */
$(document).ready(function(){
    $(".show-map").click(function(){
        $(".mapshadow").css({'display':'block'});
        $("#mapbox").css({
            'width':'900px',
            'height':'800px',
            'position':'fixed',
            'z-index':'1000',
            'top':'70px',
            'right':'18%'
        });
    });
    $(".close-map").click(function(){
        $(".mapshadow").css({'display':'none'});
        $("#mapbox").css({
            'width':'250px',
            'height':'250px',
            'position':'absolute',
            'z-index':'0',
            'top':'-35px',
            'right':'0px'
        });
    });
});


function autoLoad() {
    var map = new BMap.Map("mapbox");
    // 创建地图实例，城市中心坐标为广州南沙科技创新中心
    var point = new BMap.Point(113.606515,22.752882);
    // 创建点坐标
    map.centerAndZoom(point, 16);
    //创建标注
    var movie = new BMap.Point(113.606515,22.752882);
    var marker = new BMap.Marker(movie);
    //将标注添加到地图中
    map.addOverlay(marker);
    marker.setAnimation(BMAP_ANIMATION_BOUNCE);
    // 初始化地图，设置中心点坐标和地图级别
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
    map.addControl(new BMap.NavigationControl());
    map.addControl(new BMap.ScaleControl());
    map.addControl(new BMap.OverviewMapControl());
    map.addControl(new BMap.MapTypeControl());
    map.setCurrentCity("广州"); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用
}
window.onload=autoLoad; //异步加载地图
