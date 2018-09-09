<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>正在热映 - 猫眼电影 - 一网打尽好电影</title>
    <link type="text/css" href="css/movies.css" rel="stylesheet">
    <script src="js/JQuery3.3.1.js" type="application/javascript"></script>
    <script src="js/maoyanjs.js"></script>

</head>
<body>
<% //处理字符编码：request，response
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	
	
	 %>
  


<!--头部-->
    <div class="header">
        <div class="header-inner" style="left: 0px;">
            <a class="logo" data-act="icon-click"></a>


            <div class="city-container" data-val="{currentcityid:547}">
                <div class="city-selected">
                    <div class="city-name">南沙</div>
                    <span class="caret"></span>
                </div>

                <div class="city-list">
                    <div class="city-list-header">定位城市：
                     <a class="js-geo-city">南沙</a>
                    </div>
                    <ul>
                        <li>
                            <span>A</span>
                            <div>
                                <a class="js-city-name">阿拉善盟</a>
                                <a class="js-city-name">鞍山</a>
                                <a class="js-city-name">安庆</a>
                                <a class="js-city-name">安阳</a>
                                <a class="js-city-name">阿坝</a>
                                <a class="js-city-name">安顺</a>
                                <a class="js-city-name">安康</a>
                                <a class="js-city-name">阿勒泰</a>
                                <a class="js-city-name">阿克苏</a>
                                <a class="js-city-name">安吉</a>
                                <a class="js-city-name">安丘</a>
                                <a class="js-city-name">安岳</a>
                                <a class="js-city-name">安平</a>
                                <a class="js-city-name">安宁</a>
                                <a class="js-city-name">安溪</a>
                                <a class="js-city-name">安化</a>
                                <a class="js-city-name">阿勒泰市</a>
                                <a class="js-city-name">安福</a>
                            </div>
                        </li>
                        <li>
                            <span>B</span>
                            <div>
                                <a class="js-city-name">北京</a>
                                <a class="js-city-name">保定</a>
                                <a class="js-city-name">蚌埠</a>
                                <a class="js-city-name">包头</a>
                                <a class="js-city-name">本溪</a>
                                <a class="js-city-name">巴彦淖尔</a>
                                <a class="js-city-name">白城</a>
                                <a class="js-city-name">白山</a>
                                <a class="js-city-name">亳州</a>
                                <a class="js-city-name">滨州</a>
                                <a class="js-city-name">巴中</a>
                                <a class="js-city-name">北海</a>
                                <a class="js-city-name">百色</a>
                                <a class="js-city-name">毕节</a>
                                <a class="js-city-name">保山</a>
                                <a class="js-city-name">宝鸡</a>
                                <a class="js-city-name">白银</a>
                                <a class="js-city-name">巴州</a>
                                <a class="js-city-name">博尔塔拉</a>
                                <a class="js-city-name">滨海</a>
                                <a class="js-city-name">宝应</a>
                                <a class="js-city-name">北流</a>
                                <a class="js-city-name">博爱</a>
                                <a class="js-city-name">北碚</a>
                                <a class="js-city-name">宝丰</a>
                                <a class="js-city-name">泌阳</a>
                                <a class="js-city-name">博兴</a>
                                <a class="js-city-name">博山</a>
                                <a class="js-city-name">璧山</a>
                                <a class="js-city-name">彬县</a>
                                <a class="js-city-name">宾阳</a>
                                <a class="js-city-name">博白县</a>
                                <a class="js-city-name">博罗县</a>
                                <a class="js-city-name">北镇市</a>
                                <a class="js-city-name">泊头市</a>
                                <a class="js-city-name">北安市</a>
                                <a class="js-city-name">巴彦县</a>
                            </div>
                        </li>
                        <li>
                            <span>C</span>
                            <div>
                                <a class="js-city-name">重庆</a>
                                <a class="js-city-name">成都</a>
                                <a class="js-city-name">长沙</a>
                                <a class="js-city-name">常州</a>
                                <a class="js-city-name">长春</a>
                                <a class="js-city-name">沧州</a>
                                <a class="js-city-name">承德</a>
                                <a class="js-city-name">赤峰</a>
                                <a class="js-city-name">长治</a>
                                <a class="js-city-name">朝阳</a>
                                <a class="js-city-name">池州</a>
                                <a class="js-city-name">巢湖</a>
                                <a class="js-city-name">滁州</a>
                                <a class="js-city-name">潮州</a>
                                <a class="js-city-name">郴州</a>
                                <a class="js-city-name">常德</a>
                                <a class="js-city-name">崇左</a>
                                <a class="js-city-name">楚雄</a>
                                <a class="js-city-name">昌吉</a>
                                <a class="js-city-name">从化</a>
                                <a class="js-city-name">常熟</a>
                                <a class="js-city-name">长乐</a>
                                <a class="js-city-name">长兴</a>
                                <a class="js-city-name">慈溪</a>
                                <a class="js-city-name">昌邑</a>
                                <a class="js-city-name">长葛</a>
                                <a class="js-city-name">苍南</a>
                                <a class="js-city-name">承德县</a>
                                <a class="js-city-name">赤壁</a>
                                <a class="js-city-name">崇州</a>
                                <a class="js-city-name">淳安</a>
                                <a class="js-city-name">曹妃甸</a>
                                <a class="js-city-name">昌乐</a>
                                <a class="js-city-name">磁县</a>
                                <a class="js-city-name">昌黎</a>
                                <a class="js-city-name">岑溪</a>
                                <a class="js-city-name">成安</a>
                                <a class="js-city-name">长垣</a>
                                <a class="js-city-name">曹县</a>
                                <a class="js-city-name">城阳</a>
                                <a class="js-city-name">茌平</a>
                                <a class="js-city-name">长汀</a>
                                <a class="js-city-name">城固</a>
                                <a class="js-city-name">赤水</a>
                                <a class="js-city-name">常山</a>
                                <a class="js-city-name">长寿</a>
                                <a class="js-city-name">潮安</a>
                                <a class="js-city-name">潮阳</a>
                                <a class="js-city-name">澄海</a>
                                <a class="js-city-name">长丰县</a>
                                <a class="js-city-name">茶陵</a>
                                <a class="js-city-name">常宁市</a>
                                <a class="js-city-name">苍溪县</a>
                                <a class="js-city-name">慈利</a>
                                <a class="js-city-name">长清区</a>
                                <a class="js-city-name">崇明区</a>
                                <a class="js-city-name">成武县</a>
                                <a class="js-city-name">澄江县</a>
                            </div>
                        </li>
                        <li>
                            <span>D</span>
                            <div>
                                <a class="js-city-name">大连</a>
                                <a class="js-city-name">东莞</a>
                                <a class="js-city-name">大庆</a>
                                <a class="js-city-name">大同</a>
                                <a class="js-city-name">丹东</a>
                                <a class="js-city-name">大兴安岭</a>
                                <a class="js-city-name">东营</a>
                                <a class="js-city-name">德州</a>
                                <a class="js-city-name">德阳</a>
                                <a class="js-city-name">达州</a>
                                <a class="js-city-name">德宏</a>
                                <a class="js-city-name">大理</a>
                                <a class="js-city-name">迪庆</a>
                                <a class="js-city-name">定西</a>
                                <a class="js-city-name">敦煌</a>
                                <a class="js-city-name">丹阳</a>
                                <a class="js-city-name">东台</a>
                                <a class="js-city-name">大丰</a>
                                <a class="js-city-name">德清</a>
                                <a class="js-city-name">东阳</a>
                                <a class="js-city-name">当阳</a>
                                <a class="js-city-name">登封</a>
                                <a class="js-city-name">儋州</a>
                                <a class="js-city-name">东港</a>
                                <a class="js-city-name">东兴</a>
                                <a class="js-city-name">都江堰</a>
                                <a class="js-city-name">大石桥</a>
                                <a class="js-city-name">大冶</a>
                                <a class="js-city-name">东方</a>
                                <a class="js-city-name">大通</a>
                                <a class="js-city-name">灯塔</a>
                                <a class="js-city-name">调兵山</a>
                                <a class="js-city-name">邓州</a>
                                <a class="js-city-name">电白</a>
                                <a class="js-city-name">东平</a>
                                <a class="js-city-name">定州</a>
                                <a class="js-city-name">东海</a>
                                <a class="js-city-name">达拉特旗</a>
                                <a class="js-city-name">郸城</a>
                                <a class="js-city-name">大荔</a>
                                <a class="js-city-name">大洼</a>
                                <a class="js-city-name">大竹</a>
                                <a class="js-city-name">东光</a>
                                <a class="js-city-name">敦化</a>
                                <a class="js-city-name">大邑</a>
                                <a class="js-city-name">砀山</a>
                                <a class="js-city-name">道县</a>
                                <a class="js-city-name">大安市</a>
                                <a class="js-city-name">定安县</a>
                                <a class="js-city-name">东明县</a>
                                <a class="js-city-name">定陶区</a>
                                <a class="js-city-name">定边县</a>
                            </div>
                        </li>
                        <li>
                            <span>E</span>
                            <div>
                                <a class="js-city-name">鄂尔多斯</a>
                                <a class="js-city-name">鄂州</a>
                                <a class="js-city-name">恩施</a>
                                <a class="js-city-name">峨眉山</a>
                                <a class="js-city-name">额尔古纳</a>
                                <a class="js-city-name">恩平</a>
                                <a class="js-city-name"">额敏县</a>
                            </div>
                        </li>
                        <li>
                            <span>F</span>
                            <div>
                                <a class="js-city-name">福州</a>
                                <a class="js-city-name">佛山</a>
                                <a class="js-city-name">抚顺</a>
                                <a class="js-city-name">阜新</a>
                                <a class="js-city-name">阜阳</a>
                                <a class="js-city-name">抚州</a>
                                <a class="js-city-name">防城港</a>
                                <a class="js-city-name">涪陵</a>
                                <a class="js-city-name">富阳</a>
                                <a class="js-city-name">福清</a>
                                <a class="js-city-name">凤凰</a>
                                <a class="js-city-name">肥城</a>
                                <a class="js-city-name">阜宁</a>
                                <a class="js-city-name">奉化</a>
                                <a class="js-city-name">汾阳</a>
                                <a class="js-city-name">阜康</a>
                                <a class="js-city-name">凤城</a>
                                <a class="js-city-name">范县</a>
                                <a class="js-city-name">丰城</a>
                                <a class="js-city-name">封丘</a>
                                <a class="js-city-name">肥乡</a>
                                <a class="js-city-name">繁昌</a>
                                <a class="js-city-name">富顺</a>
                                <a class="js-city-name">抚松</a>
                                <a class="js-city-name">丰县</a>
                                <a class="js-city-name">扶风</a>
                                <a class="js-city-name">扶沟</a>
                                <a class="js-city-name">丰宁</a>
                                <a class="js-city-name">佛冈</a>
                                <a class="js-city-name">费县</a>
                                <a class="js-city-name">凤台</a>
                                <a class="js-city-name">肥西县</a>
                                <a class="js-city-name">奉新</a>
                                <a class="js-city-name">方城</a>
                                <a class="js-city-name">富源县</a>
                                <a class="js-city-name">分宜</a>
                                <a class="js-city-name">扶绥县</a>
                                <a class="js-city-name">凤翔县</a>
                                <a class="js-city-name">福安</a>
                                <a class="js-city-name">福鼎市</a>
                                <a class="js-city-name">府谷县</a>
                            </div>
                        </li>
                        <li>
                            <span>G</span>
                            <div>
                                <a class="js-city-name">广州</a>
                                <a class="js-city-name" >桂林</a>
                                <a class="js-city-name" >贵阳</a>
                                <a class="js-city-name">赣州</a>
                                <a class="js-city-name" >广元</a>
                                <a class="js-city-name">广安</a>
                                <a class="js-city-name">贵港</a>
                                <a class="js-city-name">甘孜</a>
                                <a class="js-city-name">甘南</a>
                                <a class="js-city-name">固原</a>
                                <a class="js-city-name">巩义</a>
                                <a class="js-city-name">桂平</a>
                                <a class="js-city-name">高邮</a>
                                <a class="js-city-name">广饶</a>
                                <a class="js-city-name">高州</a>
                                <a class="js-city-name">个旧</a>
                                <a class="js-city-name">高碑店</a>
                                <a class="js-city-name">盖州</a>
                                <a class="js-city-name">公主岭</a>
                                <a class="js-city-name">高密</a>
                                <a class="js-city-name">广汉</a>
                                <a class="js-city-name">藁城</a>
                                <a class="js-city-name">高平</a>
                                <a class="js-city-name">格尔木</a>
                                <a class="js-city-name">古交</a>
                                <a class="js-city-name">灌云</a>
                                <a class="js-city-name">灌南</a>
                                <a class="js-city-name">赣榆</a>
                                <a class="js-city-name">共青城</a>
                                <a class="js-city-name">高安</a>
                                <a class="js-city-name">广德</a>
                                <a class="js-city-name">高陵</a>
                                <a class="js-city-name">高阳</a>
                                <a class="js-city-name">公安</a>
                                <a class="js-city-name">固始县</a>
                                <a class="js-city-name">光泽</a>
                            </div>
                        </li>
                        <li>
                            <span>H</span>
                            <div>
                                <a class="js-city-name">杭州</a>
                                <a class="js-city-name">合肥</a>
                                <a class="js-city-name">葫芦岛</a>
                                <a class="js-city-name">海口</a>
                                <a class="js-city-name">哈尔滨</a>
                                <a class="js-city-name">邯郸</a>
                                <a class="js-city-name">呼和浩特</a>
                                <a class="js-city-name">衡水</a>
                                <a class="js-city-name">呼伦贝尔</a>
                                <a class="js-city-name">鹤岗</a>
                                <a class="js-city-name">湖州</a>
                                <a class="js-city-name">黑河</a>
                                <a class="js-city-name">淮安</a>
                                <a class="js-city-name">黄山</a>
                                <a class="js-city-name">淮南</a>
                                <a class="js-city-name">淮北</a>
                                <a class="js-city-name">鹤壁</a>
                                <a class="js-city-name">菏泽</a>
                                <a class="js-city-name">黄石</a>
                                <a class="js-city-name">怀化</a>
                                <a class="js-city-name">惠州</a>
                                <a class="js-city-name">河源</a>
                                <a class="js-city-name">黄冈</a>
                                <a class="js-city-name">衡阳</a>
                                <a class="js-city-name">贺州</a>
                                <a class="js-city-name">河池</a>
                                <a class="js-city-name">红河</a>
                                <a class="js-city-name">海东</a>
                                <a class="js-city-name">海西</a>
                                <a class="js-city-name">海南州</a>
                                <a class="js-city-name">汉中</a>
                                <a class="js-city-name">花都</a>
                                <a class="js-city-name">哈密</a>
                                <a class="js-city-name">海宁</a>
                                <a class="js-city-name">惠阳</a>
                                <a class="js-city-name">惠东</a>
                                <a class="js-city-name">黄岛</a>
                                <a class="js-city-name">鹤山</a>
                                <a class="js-city-name">桦甸</a>
                                <a class="js-city-name">海城</a>
                                <a class="js-city-name">华阴</a>
                                <a class="js-city-name">霸州</a>
                                <a class="js-city-name">海阳</a>
                                <a class="js-city-name">海门</a>
                                <a class="js-city-name">海安</a>
                                <a class="js-city-name">侯马</a>
                                <a class="js-city-name">河津</a>
                                <a class="js-city-name">海林</a>
                                <a class="js-city-name">化州</a>
                                <a class="js-city-name">黄骅</a>
                                <a class="js-city-name">霍州</a>
                                <a class="js-city-name">淮阳</a>
                                <a class="js-city-name">合川</a>
                                <a class="js-city-name">海盐</a>
                                <a class="js-city-name">滑县</a>
                                <a class="js-city-name">惠安</a>
                                <a class="js-city-name">怀仁</a>
                                <a class="js-city-name">辉县</a>
                                <a class="js-city-name">户县</a>
                                <a class="js-city-name">和县</a>
                                <a class="js-city-name">含山</a>
                                <a class="js-city-name">汉阴</a>
                                <a class="js-city-name">河口</a>
                                <a class="js-city-name">辉南</a>
                                <a class="js-city-name">洪洞</a>
                                <a class="js-city-name" data-ci="851" data-val="{ choosecityid:851 }" data-act="cityChange-click">横店</a>
                                <a class="js-city-name" data-ci="856" data-val="{ choosecityid:856 }" data-act="cityChange-click">华亭</a>
                                <a class="js-city-name" data-ci="832" data-val="{ choosecityid:832 }" data-act="cityChange-click">韩城</a>
                                <a class="js-city-name" data-ci="928" data-val="{ choosecityid:928 }" data-act="cityChange-click">洪湖</a>
                                <a class="js-city-name" data-ci="1005" data-val="{ choosecityid:1005 }" data-act="cityChange-click">怀宁</a>
                                <a class="js-city-name" data-ci="977" data-val="{ choosecityid:977 }" data-act="cityChange-click">珲春</a>
                                <a class="js-city-name" data-ci="975" data-val="{ choosecityid:975 }" data-act="cityChange-click">霍邱</a>
                                <a class="js-city-name" data-ci="964" data-val="{ choosecityid:964 }" data-act="cityChange-click">海沧</a>
                                <a class="js-city-name" data-ci="1103" data-val="{ choosecityid:1103 }" data-act="cityChange-click">潢川县</a>
                                <a class="js-city-name" data-ci="1088" data-val="{ choosecityid:1088 }" data-act="cityChange-click">衡阳县</a>
                                <a class="js-city-name" data-ci="1090" data-val="{ choosecityid:1090 }" data-act="cityChange-click">衡山县</a>
                                <a class="js-city-name" data-ci="1091" data-val="{ choosecityid:1091 }" data-act="cityChange-click">衡东县</a>
                                <a class="js-city-name" data-ci="1105" data-val="{ choosecityid:1105 }" data-act="cityChange-click">贺兰县</a>
                                <a class="js-city-name" data-ci="1130" data-val="{ choosecityid:1130 }" data-act="cityChange-click">海伦市</a>
                                <a class="js-city-name" data-ci="1124" data-val="{ choosecityid:1124 }" data-act="cityChange-click">汉南区</a>
                                <a class="js-city-name" data-ci="1145" data-val="{ choosecityid:1145 }" data-act="cityChange-click">合江县</a>
                                <a class="js-city-name" data-ci="1042" data-val="{ choosecityid:1042 }" data-act="cityChange-click">怀远县</a>
                                <a class="js-city-name" data-ci="1065" data-val="{ choosecityid:1065 }" data-act="cityChange-click">会泽县</a>
                                <a class="js-city-name" data-ci="1080" data-val="{ choosecityid:1080 }" data-act="cityChange-click">河间市</a>
                                <a class="js-city-name" data-ci="1086" data-val="{ choosecityid:1086 }" data-act="cityChange-click">合浦县</a>
                                <a class="js-city-name" data-ci="1185" data-val="{ choosecityid:1185 }" data-act="cityChange-click">环县</a>
                                <a class="js-city-name" data-ci="1206" data-val="{ choosecityid:1206 }" data-act="cityChange-click">黄陵县</a>
                                <a class="js-city-name" data-ci="8001" data-val="{ choosecityid:8001 }" data-act="cityChange-click">华容</a>
                            </div>
                        </li>
                        <li>
                            <span>J</span>
                            <div>
                                <a class="js-city-name" data-ci="98" data-val="{ choosecityid:98 }" data-act="cityChange-click">锦州</a>
                                <a class="js-city-name" data-ci="96" data-val="{ choosecityid:96 }" data-act="cityChange-click">济南</a>
                                <a class="js-city-name" data-ci="97" data-val="{ choosecityid:97 }" data-act="cityChange-click">焦作</a>
                                <a class="js-city-name" data-ci="115" data-val="{ choosecityid:115 }" data-act="cityChange-click">九江</a>
                                <a class="js-city-name" data-ci="132" data-val="{ choosecityid:132 }" data-act="cityChange-click">晋城</a>
                                <a class="js-city-name" data-ci="134" data-val="{ choosecityid:134 }" data-act="cityChange-click">晋中</a>
                                <a class="js-city-name" data-ci="169" data-val="{ choosecityid:169 }" data-act="cityChange-click">鸡西</a>
                                <a class="js-city-name" data-ci="173" data-val="{ choosecityid:173 }" data-act="cityChange-click">佳木斯</a>
                                <a class="js-city-name" data-ci="161" data-val="{ choosecityid:161 }" data-act="cityChange-click">吉林</a>
                                <a class="js-city-name" data-ci="185" data-val="{ choosecityid:185 }" data-act="cityChange-click">嘉兴</a>
                                <a class="js-city-name" data-ci="188" data-val="{ choosecityid:188 }" data-act="cityChange-click">金华</a>
                                <a class="js-city-name" data-ci="218" data-val="{ choosecityid:218 }" data-act="cityChange-click">吉安</a>
                                <a class="js-city-name" data-ci="213" data-val="{ choosecityid:213 }" data-act="cityChange-click">景德镇</a>
                                <a class="js-city-name" data-ci="225" data-val="{ choosecityid:225 }" data-act="cityChange-click">济宁</a>
                                <a class="js-city-name" data-ci="255" data-val="{ choosecityid:255 }" data-act="cityChange-click">荆门</a>
                                <a class="js-city-name" data-ci="249" data-val="{ choosecityid:249 }" data-act="cityChange-click">济源</a>
                                <a class="js-city-name" data-ci="277" data-val="{ choosecityid:277 }" data-act="cityChange-click">江门</a>
                                <a class="js-city-name" data-ci="257" data-val="{ choosecityid:257 }" data-act="cityChange-click">荆州</a>
                                <a class="js-city-name" data-ci="288" data-val="{ choosecityid:288 }" data-act="cityChange-click">揭阳</a>
                                <a class="js-city-name" data-ci="368" data-val="{ choosecityid:368 }" data-act="cityChange-click">酒泉</a>
                                <a class="js-city-name" data-ci="362" data-val="{ choosecityid:362 }" data-act="cityChange-click">金昌</a>
                                <a class="js-city-name" data-ci="409" data-val="{ choosecityid:409 }" data-act="cityChange-click">嘉峪关</a>
                                <a class="js-city-name" data-ci="404" data-val="{ choosecityid:404 }" data-act="cityChange-click">江阴</a>
                                <a class="js-city-name" data-ci="439" data-val="{ choosecityid:439 }" data-act="cityChange-click">靖江</a>
                                <a class="js-city-name" data-ci="420" data-val="{ choosecityid:420 }" data-act="cityChange-click">晋江</a>
                                <a class="js-city-name" data-ci="460" data-val="{ choosecityid:460 }" data-act="cityChange-click">金坛</a>
                                <a class="js-city-name" data-ci="510" data-val="{ choosecityid:510 }" data-act="cityChange-click">江山</a>
                                <a class="js-city-name" data-ci="489" data-val="{ choosecityid:489 }" data-act="cityChange-click">嘉善</a>
                                <a class="js-city-name" data-ci="544" data-val="{ choosecityid:544 }" data-act="cityChange-click">晋州</a>
                                <a class="js-city-name" data-ci="515" data-val="{ choosecityid:515 }" data-act="cityChange-click">句容</a>
                                <a class="js-city-name" data-ci="536" data-val="{ choosecityid:536 }" data-act="cityChange-click">建湖</a>
                                <a class="js-city-name" data-ci="636" data-val="{ choosecityid:636 }" data-act="cityChange-click">介休</a>
                                <a class="js-city-name" data-ci="583" data-val="{ choosecityid:583 }" data-act="cityChange-click">胶州</a>
                                <a class="js-city-name" data-ci="594" data-val="{ choosecityid:594 }" data-act="cityChange-click">建德</a>
                                <a class="js-city-name" data-ci="605" data-val="{ choosecityid:605 }" data-act="cityChange-click">简阳</a>
                                <a class="js-city-name" data-ci="678" data-val="{ choosecityid:678 }" data-act="cityChange-click">集安</a>
                                <a class="js-city-name" data-ci="664" data-val="{ choosecityid:664 }" data-act="cityChange-click">即墨</a>
                                <a class="js-city-name" data-ci="756" data-val="{ choosecityid:756 }" data-act="cityChange-click">建阳</a>
                                <a class="js-city-name" data-ci="725" data-val="{ choosecityid:725 }" data-act="cityChange-click">蛟河</a>
                                <a class="js-city-name" data-ci="831" data-val="{ choosecityid:831 }" data-act="cityChange-click">监利</a>
                                <a class="js-city-name" data-ci="785" data-val="{ choosecityid:785 }" data-act="cityChange-click">郏县</a>
                                <a class="js-city-name" data-ci="882" data-val="{ choosecityid:882 }" data-act="cityChange-click">巨野</a>
                                <a class="js-city-name" data-ci="871" data-val="{ choosecityid:871 }" data-act="cityChange-click">江津</a>
                                <a class="js-city-name" data-ci="956" data-val="{ choosecityid:956 }" data-act="cityChange-click">金湖</a>
                                <a class="js-city-name" data-ci="948" data-val="{ choosecityid:948 }" data-act="cityChange-click">江都</a>
                                <a class="js-city-name" data-ci="941" data-val="{ choosecityid:941 }" data-act="cityChange-click">莒南</a>
                                <a class="js-city-name" data-ci="927" data-val="{ choosecityid:927 }" data-act="cityChange-click">江油</a>
                                <a class="js-city-name" data-ci="918" data-val="{ choosecityid:918 }" data-act="cityChange-click">京山</a>
                                <a class="js-city-name" data-ci="913" data-val="{ choosecityid:913 }" data-act="cityChange-click">缙云</a>
                                <a class="js-city-name" data-ci="900" data-val="{ choosecityid:900 }" data-act="cityChange-click">金乡</a>
                                <a class="js-city-name" data-ci="899" data-val="{ choosecityid:899 }" data-act="cityChange-click">嘉祥</a>
                                <a class="js-city-name" data-ci="1001" data-val="{ choosecityid:1001 }" data-act="cityChange-click">金沙</a>
                                <a class="js-city-name" data-ci="1003" data-val="{ choosecityid:1003 }" data-act="cityChange-click">泾县</a>
                                <a class="js-city-name" data-ci="963" data-val="{ choosecityid:963 }" data-act="cityChange-click">集美</a>
                                <a class="js-city-name" data-ci="1134" data-val="{ choosecityid:1134 }" data-act="cityChange-click">鄄城县</a>
                                <a class="js-city-name" data-ci="1146" data-val="{ choosecityid:1146 }" data-act="cityChange-click">靖边</a>
                                <a class="js-city-name" data-ci="1032" data-val="{ choosecityid:1032 }" data-act="cityChange-click">江川县</a>
                                <a class="js-city-name" data-ci="1038" data-val="{ choosecityid:1038 }" data-act="cityChange-click">江华瑶族自治县</a>
                                <a class="js-city-name" data-ci="1028" data-val="{ choosecityid:1028 }" data-act="cityChange-click">吉安县</a>
                                <a class="js-city-name" data-ci="1029" data-val="{ choosecityid:1029 }" data-act="cityChange-click">吉水县</a>
                                <a class="js-city-name" data-ci="1059" data-val="{ choosecityid:1059 }" data-act="cityChange-click">晋宁县</a>
                                <a class="js-city-name" data-ci="1061" data-val="{ choosecityid:1061 }" data-act="cityChange-click">江永</a>
                                <a class="js-city-name" data-ci="1085" data-val="{ choosecityid:1085 }" data-act="cityChange-click">建水县</a>
                                <a class="js-city-name" data-ci="1153" data-val="{ choosecityid:1153 }" data-act="cityChange-click">嘉鱼县</a>
                                <a class="js-city-name" data-ci="1188" data-val="{ choosecityid:1188 }" data-act="cityChange-click">祁县</a>
                                <a class="js-city-name" data-ci="1194" data-val="{ choosecityid:1194 }" data-act="cityChange-click">精河县</a>
                                <a class="js-city-name" data-ci="1197" data-val="{ choosecityid:1197 }" data-act="cityChange-click">靖西县</a>
                            </div>
                        </li>
                        <li>
                            <span>K</span>
                            <div>
                                <a class="js-city-name" data-ci="114" data-val="{ choosecityid:114 }" data-act="cityChange-click">昆明</a>
                                <a class="js-city-name" data-ci="235" data-val="{ choosecityid:235 }" data-act="cityChange-click">开封</a>
                                <a class="js-city-name" data-ci="403" data-val="{ choosecityid:403 }" data-act="cityChange-click">昆山</a>
                                <a class="js-city-name" data-ci="396" data-val="{ choosecityid:396 }" data-act="cityChange-click">喀什地区</a>
                                <a class="js-city-name" data-ci="388" data-val="{ choosecityid:388 }" data-act="cityChange-click">克拉玛依</a>
                                <a class="js-city-name" data-ci="502" data-val="{ choosecityid:502 }" data-act="cityChange-click">开平</a>
                                <a class="js-city-name" data-ci="603" data-val="{ choosecityid:603 }" data-act="cityChange-click">库尔勒</a>
                                <a class="js-city-name" data-ci="643" data-val="{ choosecityid:643 }" data-act="cityChange-click">奎屯</a>
                                <a class="js-city-name" data-ci="748" data-val="{ choosecityid:748 }" data-act="cityChange-click">开州区</a>
                                <a class="js-city-name" data-ci="880" data-val="{ choosecityid:880 }" data-act="cityChange-click">垦利</a>
                                <a class="js-city-name" data-ci="925" data-val="{ choosecityid:925 }" data-act="cityChange-click">宽城</a>
                                <a class="js-city-name" data-ci="1002" data-val="{ choosecityid:1002 }" data-act="cityChange-click">开阳</a>
                                <a class="js-city-name" data-ci="990" data-val="{ choosecityid:990 }" data-act="cityChange-click">开化</a>
                            </div>
                        </li>
                        <li>
                            <span>L</span>
                            <div>
                                <a class="js-city-name" data-ci="106" data-val="{ choosecityid:106 }" data-act="cityChange-click">廊坊</a><a class="js-city-name" data-ci="137" data-val="{ choosecityid:137 }" data-act="cityChange-click">临汾</a><a class="js-city-name" data-ci="138" data-val="{ choosecityid:138 }" data-act="cityChange-click">吕梁</a><a class="js-city-name" data-ci="157" data-val="{ choosecityid:157 }" data-act="cityChange-click">辽阳</a><a class="js-city-name" data-ci="163" data-val="{ choosecityid:163 }" data-act="cityChange-click">辽源</a><a class="js-city-name" data-ci="179" data-val="{ choosecityid:179 }" data-act="cityChange-click">连云港</a><a class="js-city-name" data-ci="203" data-val="{ choosecityid:203 }" data-act="cityChange-click">六安</a><a class="js-city-name" data-ci="192" data-val="{ choosecityid:192 }" data-act="cityChange-click">丽水</a><a class="js-city-name" data-ci="211" data-val="{ choosecityid:211 }" data-act="cityChange-click">龙岩</a><a class="js-city-name" data-ci="236" data-val="{ choosecityid:236 }" data-act="cityChange-click">洛阳</a><a class="js-city-name" data-ci="232" data-val="{ choosecityid:232 }" data-act="cityChange-click">聊城</a><a class="js-city-name" data-ci="230" data-val="{ choosecityid:230 }" data-act="cityChange-click">临沂</a><a class="js-city-name" data-ci="229" data-val="{ choosecityid:229 }" data-act="cityChange-click">莱芜</a><a class="js-city-name" data-ci="242" data-val="{ choosecityid:242 }" data-act="cityChange-click">漯河</a><a class="js-city-name" data-ci="274" data-val="{ choosecityid:274 }" data-act="cityChange-click">娄底</a><a class="js-city-name" data-ci="304" data-val="{ choosecityid:304 }" data-act="cityChange-click">泸州</a><a class="js-city-name" data-ci="310" data-val="{ choosecityid:310 }" data-act="cityChange-click">乐山</a><a class="js-city-name" data-ci="290" data-val="{ choosecityid:290 }" data-act="cityChange-click">柳州</a><a class="js-city-name" data-ci="300" data-val="{ choosecityid:300 }" data-act="cityChange-click">来宾</a><a class="js-city-name" data-ci="336" data-val="{ choosecityid:336 }" data-act="cityChange-click">临沧</a><a class="js-city-name" data-ci="345" data-val="{ choosecityid:345 }" data-act="cityChange-click">拉萨</a><a class="js-city-name" data-ci="322" data-val="{ choosecityid:322 }" data-act="cityChange-click">六盘水</a><a class="js-city-name" data-ci="321" data-val="{ choosecityid:321 }" data-act="cityChange-click">凉山</a><a class="js-city-name" data-ci="334" data-val="{ choosecityid:334 }" data-act="cityChange-click">丽江</a><a class="js-city-name" data-ci="372" data-val="{ choosecityid:372 }" data-act="cityChange-click">临夏</a><a class="js-city-name" data-ci="371" data-val="{ choosecityid:371 }" data-act="cityChange-click">陇南</a><a class="js-city-name" data-ci="361" data-val="{ choosecityid:361 }" data-act="cityChange-click">兰州</a><a class="js-city-name" data-ci="476" data-val="{ choosecityid:476 }" data-act="cityChange-click">兰溪</a><a class="js-city-name" data-ci="461" data-val="{ choosecityid:461 }" data-act="cityChange-click">临海</a><a class="js-city-name" data-ci="450" data-val="{ choosecityid:450 }" data-act="cityChange-click">溧阳</a><a class="js-city-name" data-ci="509" data-val="{ choosecityid:509 }" data-act="cityChange-click">耒阳</a><a class="js-city-name" data-ci="492" data-val="{ choosecityid:492 }" data-act="cityChange-click">龙口</a><a class="js-city-name" data-ci="567" data-val="{ choosecityid:567 }" data-act="cityChange-click">陆丰</a><a class="js-city-name" data-ci="561" data-val="{ choosecityid:561 }" data-act="cityChange-click">莱阳</a><a class="js-city-name" data-ci="513" data-val="{ choosecityid:513 }" data-act="cityChange-click">乐昌</a><a class="js-city-name" data-ci="529" data-val="{ choosecityid:529 }" data-act="cityChange-click">莱州</a><a class="js-city-name" data-ci="542" data-val="{ choosecityid:542 }" data-act="cityChange-click">临安</a><a class="js-city-name" data-ci="537" data-val="{ choosecityid:537 }" data-act="cityChange-click">临清</a><a class="js-city-name" data-ci="611" data-val="{ choosecityid:611 }" data-act="cityChange-click">乐陵</a><a class="js-city-name" data-ci="618" data-val="{ choosecityid:618 }" data-act="cityChange-click">龙海</a><a class="js-city-name" data-ci="619" data-val="{ choosecityid:619 }" data-act="cityChange-click">醴陵</a><a class="js-city-name" data-ci="617" data-val="{ choosecityid:617 }" data-act="cityChange-click">浏阳</a><a class="js-city-name" data-ci="620" data-val="{ choosecityid:620 }" data-act="cityChange-click">莱西</a><a class="js-city-name" data-ci="628" data-val="{ choosecityid:628 }" data-act="cityChange-click">廉江</a><a class="js-city-name" data-ci="634" data-val="{ choosecityid:634 }" data-act="cityChange-click">阆中</a><a class="js-city-name" data-ci="632" data-val="{ choosecityid:632 }" data-act="cityChange-click">乐平</a><a class="js-city-name" data-ci="596" data-val="{ choosecityid:596 }" data-act="cityChange-click">灵宝</a><a class="js-city-name" data-ci="606" data-val="{ choosecityid:606 }" data-act="cityChange-click">冷水江</a><a class="js-city-name" data-ci="683" data-val="{ choosecityid:683 }" data-act="cityChange-click">连州</a><a class="js-city-name" data-ci="675" data-val="{ choosecityid:675 }" data-act="cityChange-click">灵山</a><a class="js-city-name" data-ci="674" data-val="{ choosecityid:674 }" data-act="cityChange-click">滦南</a><a class="js-city-name" data-ci="690" data-val="{ choosecityid:690 }" data-act="cityChange-click">临江</a><a class="js-city-name" data-ci="688" data-val="{ choosecityid:688 }" data-act="cityChange-click">陵水</a><a class="js-city-name" data-ci="652" data-val="{ choosecityid:652 }" data-act="cityChange-click">鹿泉</a><a class="js-city-name" data-ci="655" data-val="{ choosecityid:655 }" data-act="cityChange-click">利川</a><a class="js-city-name" data-ci="670" data-val="{ choosecityid:670 }" data-act="cityChange-click">凌海</a><a class="js-city-name" data-ci="659" data-val="{ choosecityid:659 }" data-act="cityChange-click">老河口</a><a class="js-city-name" data-ci="745" data-val="{ choosecityid:745 }" data-act="cityChange-click">滦县</a><a class="js-city-name" data-ci="744" data-val="{ choosecityid:744 }" data-act="cityChange-click">乐亭</a><a class="js-city-name" data-ci="739" data-val="{ choosecityid:739 }" data-act="cityChange-click">临朐</a><a class="js-city-name" data-ci="766" data-val="{ choosecityid:766 }" data-act="cityChange-click">栾城</a><a class="js-city-name" data-ci="724" data-val="{ choosecityid:724 }" data-act="cityChange-click">连江</a><a class="js-city-name" data-ci="823" data-val="{ choosecityid:823 }" data-act="cityChange-click">隆昌</a><a class="js-city-name" data-ci="815" data-val="{ choosecityid:815 }" data-act="cityChange-click">林州</a><a class="js-city-name" data-ci="808" data-val="{ choosecityid:808 }" data-act="cityChange-click">临潼</a><a class="js-city-name" data-ci="809" data-val="{ choosecityid:809 }" data-act="cityChange-click">蓝田</a><a class="js-city-name" data-ci="791" data-val="{ choosecityid:791 }" data-act="cityChange-click">临漳</a><a class="js-city-name" data-ci="789" data-val="{ choosecityid:789 }" data-act="cityChange-click">灵石</a><a class="js-city-name" data-ci="786" data-val="{ choosecityid:786 }" data-act="cityChange-click">鲁山</a><a class="js-city-name" data-ci="889" data-val="{ choosecityid:889 }" data-act="cityChange-click">临猗</a><a class="js-city-name" data-ci="868" data-val="{ choosecityid:868 }" data-act="cityChange-click">柳河</a><a class="js-city-name" data-ci="839" data-val="{ choosecityid:839 }" data-act="cityChange-click">鹿邑</a><a class="js-city-name" data-ci="951" data-val="{ choosecityid:951 }" data-act="cityChange-click">临沭</a><a class="js-city-name" data-ci="939" data-val="{ choosecityid:939 }" data-act="cityChange-click">兰陵</a><a class="js-city-name" data-ci="938" data-val="{ choosecityid:938 }" data-act="cityChange-click">龙游</a><a class="js-city-name" data-ci="935" data-val="{ choosecityid:935 }" data-act="cityChange-click">栾川</a><a class="js-city-name" data-ci="934" data-val="{ choosecityid:934 }" data-act="cityChange-click">雷州</a><a class="js-city-name" data-ci="930" data-val="{ choosecityid:930 }" data-act="cityChange-click">隆尧</a><a class="js-city-name" data-ci="919" data-val="{ choosecityid:919 }" data-act="cityChange-click">陵川</a><a class="js-city-name" data-ci="912" data-val="{ choosecityid:912 }" data-act="cityChange-click">龙泉</a><a class="js-city-name" data-ci="905" data-val="{ choosecityid:905 }" data-act="cityChange-click">临邑</a><a class="js-city-name" data-ci="902" data-val="{ choosecityid:902 }" data-act="cityChange-click">利津</a><a class="js-city-name" data-ci="896" data-val="{ choosecityid:896 }" data-act="cityChange-click">梁山</a><a class="js-city-name" data-ci="1010" data-val="{ choosecityid:1010 }" data-act="cityChange-click">澧县</a><a class="js-city-name" data-ci="1011" data-val="{ choosecityid:1011 }" data-act="cityChange-click">辽中</a><a class="js-city-name" data-ci="976" data-val="{ choosecityid:976 }" data-act="cityChange-click">涟水</a><a class="js-city-name" data-ci="1119" data-val="{ choosecityid:1119 }" data-act="cityChange-click">临澧</a><a class="js-city-name" data-ci="1110" data-val="{ choosecityid:1110 }" data-act="cityChange-click">兰考县</a><a class="js-city-name" data-ci="1133" data-val="{ choosecityid:1133 }" data-act="cityChange-click">灵丘县</a><a class="js-city-name" data-ci="1121" data-val="{ choosecityid:1121 }" data-act="cityChange-click">利辛</a><a class="js-city-name" data-ci="1147" data-val="{ choosecityid:1147 }" data-act="cityChange-click">洛川县</a><a class="js-city-name" data-ci="1144" data-val="{ choosecityid:1144 }" data-act="cityChange-click">泸县</a><a class="js-city-name" data-ci="1143" data-val="{ choosecityid:1143 }" data-act="cityChange-click">溧水区</a><a class="js-city-name" data-ci="1138" data-val="{ choosecityid:1138 }" data-act="cityChange-click">禄丰县</a><a class="js-city-name" data-ci="1034" data-val="{ choosecityid:1034 }" data-act="cityChange-click">罗平县</a><a class="js-city-name" data-ci="1037" data-val="{ choosecityid:1037 }" data-act="cityChange-click">涟源市</a><a class="js-city-name" data-ci="1040" data-val="{ choosecityid:1040 }" data-act="cityChange-click">庐江县</a><a class="js-city-name" data-ci="1064" data-val="{ choosecityid:1064 }" data-act="cityChange-click">隆回</a><a class="js-city-name" data-ci="1056" data-val="{ choosecityid:1056 }" data-act="cityChange-click">临颍</a><a class="js-city-name" data-ci="1060" data-val="{ choosecityid:1060 }" data-act="cityChange-click">蓝山</a><a class="js-city-name" data-ci="1083" data-val="{ choosecityid:1083 }" data-act="cityChange-click">隆化县</a><a class="js-city-name" data-ci="1087" data-val="{ choosecityid:1087 }" data-act="cityChange-click">洛宁</a><a class="js-city-name" data-ci="1073" data-val="{ choosecityid:1073 }" data-act="cityChange-click">芦溪</a><a class="js-city-name" data-ci="1079" data-val="{ choosecityid:1079 }" data-act="cityChange-click">卢氏县</a><a class="js-city-name" data-ci="1163" data-val="{ choosecityid:1163 }" data-act="cityChange-click">罗定市</a><a class="js-city-name" data-ci="1171" data-val="{ choosecityid:1171 }" data-act="cityChange-click">乐东</a><a class="js-city-name" data-ci="1178" data-val="{ choosecityid:1178 }" data-act="cityChange-click">梁平</a><a class="js-city-name" data-ci="1183" data-val="{ choosecityid:1183 }" data-act="cityChange-click">临高县</a><a class="js-city-name" data-ci="1184" data-val="{ choosecityid:1184 }" data-act="cityChange-click">罗源县</a>
                            </div>
                        </li>
                        <li>
                            <span>M</span>
                            <div>
                                <a class="js-city-name" data-ci="175" data-val="{ choosecityid:175 }" data-act="cityChange-click">牡丹江</a><a class="js-city-name" data-ci="194" data-val="{ choosecityid:194 }" data-act="cityChange-click">马鞍山</a><a class="js-city-name" data-ci="279" data-val="{ choosecityid:279 }" data-act="cityChange-click">茂名</a><a class="js-city-name" data-ci="282" data-val="{ choosecityid:282 }" data-act="cityChange-click">梅州</a><a class="js-city-name" data-ci="306" data-val="{ choosecityid:306 }" data-act="cityChange-click">绵阳</a><a class="js-city-name" data-ci="312" data-val="{ choosecityid:312 }" data-act="cityChange-click">眉山</a><a class="js-city-name" data-ci="566" data-val="{ choosecityid:566 }" data-act="cityChange-click">密山</a><a class="js-city-name" data-ci="563" data-val="{ choosecityid:563 }" data-act="cityChange-click">漠河</a><a class="js-city-name" data-ci="572" data-val="{ choosecityid:572 }" data-act="cityChange-click">满洲里</a><a class="js-city-name" data-ci="610" data-val="{ choosecityid:610 }" data-act="cityChange-click">明光</a><a class="js-city-name" data-ci="584" data-val="{ choosecityid:584 }" data-act="cityChange-click">梅河口</a><a class="js-city-name" data-ci="694" data-val="{ choosecityid:694 }" data-act="cityChange-click">孟州</a><a class="js-city-name" data-ci="668" data-val="{ choosecityid:668 }" data-act="cityChange-click">麻城</a><a class="js-city-name" data-ci="872" data-val="{ choosecityid:872 }" data-act="cityChange-click">渑池</a><a class="js-city-name" data-ci="848" data-val="{ choosecityid:848 }" data-act="cityChange-click">眉县</a><a class="js-city-name" data-ci="860" data-val="{ choosecityid:860 }" data-act="cityChange-click">民权</a><a class="js-city-name" data-ci="838" data-val="{ choosecityid:838 }" data-act="cityChange-click">孟津</a><a class="js-city-name" data-ci="846" data-val="{ choosecityid:846 }" data-act="cityChange-click">牟平</a><a class="js-city-name" data-ci="944" data-val="{ choosecityid:944 }" data-act="cityChange-click">蒙阴</a><a class="js-city-name" data-ci="906" data-val="{ choosecityid:906 }" data-act="cityChange-click">绵竹</a><a class="js-city-name" data-ci="1116" data-val="{ choosecityid:1116 }" data-act="cityChange-click">蒙自市</a><a class="js-city-name" data-ci="1122" data-val="{ choosecityid:1122 }" data-act="cityChange-click">蒙城</a><a class="js-city-name" data-ci="1222" data-val="{ choosecityid:1222 }" data-act="cityChange-click">明水县</a><a class="js-city-name" data-ci="1216" data-val="{ choosecityid:1216 }" data-act="cityChange-click">米易县</a><a class="js-city-name" data-ci="1219" data-val="{ choosecityid:1219 }" data-act="cityChange-click">闽侯县</a><a class="js-city-name" data-ci="1210" data-val="{ choosecityid:1210 }" data-act="cityChange-click">勐腊县</a>
                            </div>
                        </li>
                        <li>
                            <span>N</span>
                            <div>
                                <a class="js-city-name" data-ci="51" data-val="{ choosecityid:51 }" data-act="cityChange-click">宁波</a><a class="js-city-name" data-ci="55" data-val="{ choosecityid:55 }" data-act="cityChange-click">南京</a><a class="js-city-name" data-ci="83" data-val="{ choosecityid:83 }" data-act="cityChange-click">南昌</a><a class="js-city-name" data-ci="82" data-val="{ choosecityid:82 }" data-act="cityChange-click">南通</a><a class="js-city-name" data-ci="99" data-val="{ choosecityid:99 }" data-act="cityChange-click">南宁</a><a class="js-city-name" data-ci="212" data-val="{ choosecityid:212 }" data-act="cityChange-click">宁德</a><a class="js-city-name" data-ci="210" data-val="{ choosecityid:210 }" data-act="cityChange-click">南平</a><a class="js-city-name" data-ci="244" data-val="{ choosecityid:244 }" data-act="cityChange-click">南阳</a><a class="js-city-name" data-ci="309" data-val="{ choosecityid:309 }" data-act="cityChange-click">内江</a><a class="js-city-name" data-ci="311" data-val="{ choosecityid:311 }" data-act="cityChange-click">南充</a><a class="js-city-name" data-ci="343" data-val="{ choosecityid:343 }" data-act="cityChange-click">怒江</a><a class="js-city-name" data-ci="547" data-val="{ choosecityid:547 }" data-act="cityChange-click">南沙</a><a class="js-city-name" data-ci="512" data-val="{ choosecityid:512 }" data-act="cityChange-click">宁海</a><a class="js-city-name" data-ci="520" data-val="{ choosecityid:520 }" data-act="cityChange-click">宁乡</a><a class="js-city-name" data-ci="621" data-val="{ choosecityid:621 }" data-act="cityChange-click">南安</a><a class="js-city-name" data-ci="687" data-val="{ choosecityid:687 }" data-act="cityChange-click">南雄</a><a class="js-city-name" data-ci="682" data-val="{ choosecityid:682 }" data-act="cityChange-click">讷河</a><a class="js-city-name" data-ci="741" data-val="{ choosecityid:741 }" data-act="cityChange-click">南乐</a><a class="js-city-name" data-ci="820" data-val="{ choosecityid:820 }" data-act="cityChange-click">宁津</a><a class="js-city-name" data-ci="813" data-val="{ choosecityid:813 }" data-act="cityChange-click">宁晋</a><a class="js-city-name" data-ci="775" data-val="{ choosecityid:775 }" data-act="cityChange-click">南陵</a><a class="js-city-name" data-ci="781" data-val="{ choosecityid:781 }" data-act="cityChange-click">宁国</a><a class="js-city-name" data-ci="779" data-val="{ choosecityid:779 }" data-act="cityChange-click">宁阳</a><a class="js-city-name" data-ci="931" data-val="{ choosecityid:931 }" data-act="cityChange-click">内丘</a><a class="js-city-name" data-ci="1013" data-val="{ choosecityid:1013 }" data-act="cityChange-click">南和</a><a class="js-city-name" data-ci="979" data-val="{ choosecityid:979 }" data-act="cityChange-click">内黄</a><a class="js-city-name" data-ci="1112" data-val="{ choosecityid:1112 }" data-act="cityChange-click">宁陵</a><a class="js-city-name" data-ci="1053" data-val="{ choosecityid:1053 }" data-act="cityChange-click">南部县</a><a class="js-city-name" data-ci="1075" data-val="{ choosecityid:1075 }" data-act="cityChange-click">南皮县</a><a class="js-city-name" data-ci="1224" data-val="{ choosecityid:1224 }" data-act="cityChange-click">宁远县</a><a class="js-city-name" data-ci="1166" data-val="{ choosecityid:1166 }" data-act="cityChange-click">嫩江县</a>
                            </div>
                        </li>
                        <li>
                            <span>P</span>
                            <div>
                                <a class="js-city-name" data-ci="158" data-val="{ choosecityid:158 }" data-act="cityChange-click">盘锦</a><a class="js-city-name" data-ci="207" data-val="{ choosecityid:207 }" data-act="cityChange-click">莆田</a><a class="js-city-name" data-ci="214" data-val="{ choosecityid:214 }" data-act="cityChange-click">萍乡</a><a class="js-city-name" data-ci="237" data-val="{ choosecityid:237 }" data-act="cityChange-click">平顶山</a><a class="js-city-name" data-ci="240" data-val="{ choosecityid:240 }" data-act="cityChange-click">濮阳</a><a class="js-city-name" data-ci="303" data-val="{ choosecityid:303 }" data-act="cityChange-click">攀枝花</a><a class="js-city-name" data-ci="335" data-val="{ choosecityid:335 }" data-act="cityChange-click">普洱</a><a class="js-city-name" data-ci="367" data-val="{ choosecityid:367 }" data-act="cityChange-click">平凉</a><a class="js-city-name" data-ci="493" data-val="{ choosecityid:493 }" data-act="cityChange-click">邳州</a><a class="js-city-name" data-ci="546" data-val="{ choosecityid:546 }" data-act="cityChange-click">普宁</a><a class="js-city-name" data-ci="524" data-val="{ choosecityid:524 }" data-act="cityChange-click">平湖</a><a class="js-city-name" data-ci="582" data-val="{ choosecityid:582 }" data-act="cityChange-click">平度</a><a class="js-city-name" data-ci="585" data-val="{ choosecityid:585 }" data-act="cityChange-click">彭州</a><a class="js-city-name" data-ci="587" data-val="{ choosecityid:587 }" data-act="cityChange-click">蓬莱</a><a class="js-city-name" data-ci="701" data-val="{ choosecityid:701 }" data-act="cityChange-click">鄱阳</a><a class="js-city-name" data-ci="761" data-val="{ choosecityid:761 }" data-act="cityChange-click">磐石</a><a class="js-city-name" data-ci="730" data-val="{ choosecityid:730 }" data-act="cityChange-click">浦江</a><a class="js-city-name" data-ci="805" data-val="{ choosecityid:805 }" data-act="cityChange-click">平潭</a><a class="js-city-name" data-ci="777" data-val="{ choosecityid:777 }" data-act="cityChange-click">平原</a><a class="js-city-name" data-ci="893" data-val="{ choosecityid:893 }" data-act="cityChange-click">平山</a><a class="js-city-name" data-ci="849" data-val="{ choosecityid:849 }" data-act="cityChange-click">濮阳县</a><a class="js-city-name" data-ci="833" data-val="{ choosecityid:833 }" data-act="cityChange-click">沛县</a><a class="js-city-name" data-ci="837" data-val="{ choosecityid:837 }" data-act="cityChange-click">蒲城</a><a class="js-city-name" data-ci="842" data-val="{ choosecityid:842 }" data-act="cityChange-click">盘县</a><a class="js-city-name" data-ci="847" data-val="{ choosecityid:847 }" data-act="cityChange-click">平江</a><a class="js-city-name" data-ci="950" data-val="{ choosecityid:950 }" data-act="cityChange-click">平邑</a><a class="js-city-name" data-ci="987" data-val="{ choosecityid:987 }" data-act="cityChange-click">平遥</a><a class="js-city-name" data-ci="991" data-val="{ choosecityid:991 }" data-act="cityChange-click">平果</a><a class="js-city-name" data-ci="972" data-val="{ choosecityid:972 }" data-act="cityChange-click">平阳</a><a class="js-city-name" data-ci="960" data-val="{ choosecityid:960 }" data-act="cityChange-click">平舆</a><a class="js-city-name" data-ci="1106" data-val="{ choosecityid:1106 }" data-act="cityChange-click">平罗县</a><a class="js-city-name" data-ci="1156" data-val="{ choosecityid:1156 }" data-act="cityChange-click">平阴县</a><a class="js-city-name" data-ci="1214" data-val="{ choosecityid:1214 }" data-act="cityChange-click">平昌县</a>
                            </div>
                        </li>
                        <li>
                            <span>Q</span>
                            <div>
                                <a class="js-city-name" data-ci="60" data-val="{ choosecityid:60 }" data-act="cityChange-click">青岛</a><a class="js-city-name" data-ci="110" data-val="{ choosecityid:110 }" data-act="cityChange-click">泉州</a><a class="js-city-name" data-ci="109" data-val="{ choosecityid:109 }" data-act="cityChange-click">齐齐哈尔</a><a class="js-city-name" data-ci="122" data-val="{ choosecityid:122 }" data-act="cityChange-click">秦皇岛</a><a class="js-city-name" data-ci="174" data-val="{ choosecityid:174 }" data-act="cityChange-click">七台河</a><a class="js-city-name" data-ci="189" data-val="{ choosecityid:189 }" data-act="cityChange-click">衢州</a><a class="js-city-name" data-ci="286" data-val="{ choosecityid:286 }" data-act="cityChange-click">清远</a><a class="js-city-name" data-ci="294" data-val="{ choosecityid:294 }" data-act="cityChange-click">钦州</a><a class="js-city-name" data-ci="326" data-val="{ choosecityid:326 }" data-act="cityChange-click">黔西南</a><a class="js-city-name" data-ci="330" data-val="{ choosecityid:330 }" data-act="cityChange-click">曲靖</a><a class="js-city-name" data-ci="328" data-val="{ choosecityid:328 }" data-act="cityChange-click">黔东南</a><a class="js-city-name" data-ci="329" data-val="{ choosecityid:329 }" data-act="cityChange-click">黔南</a><a class="js-city-name" data-ci="369" data-val="{ choosecityid:369 }" data-act="cityChange-click">庆阳</a><a class="js-city-name" data-ci="430" data-val="{ choosecityid:430 }" data-act="cityChange-click">迁安</a><a class="js-city-name" data-ci="418" data-val="{ choosecityid:418 }" data-act="cityChange-click">琼海</a><a class="js-city-name" data-ci="507" data-val="{ choosecityid:507 }" data-act="cityChange-click">曲阜</a><a class="js-city-name" data-ci="500" data-val="{ choosecityid:500 }" data-act="cityChange-click">启东</a><a class="js-city-name" data-ci="496" data-val="{ choosecityid:496 }" data-act="cityChange-click">青州</a><a class="js-city-name" data-ci="550" data-val="{ choosecityid:550 }" data-act="cityChange-click">潜江</a><a class="js-city-name" data-ci="644" data-val="{ choosecityid:644 }" data-act="cityChange-click">沁阳</a><a class="js-city-name" data-ci="647" data-val="{ choosecityid:647 }" data-act="cityChange-click">邛崃</a><a class="js-city-name" data-ci="740" data-val="{ choosecityid:740 }" data-act="cityChange-click">清丰</a><a class="js-city-name" data-ci="727" data-val="{ choosecityid:727 }" data-act="cityChange-click">齐河</a><a class="js-city-name" data-ci="864" data-val="{ choosecityid:864 }" data-act="cityChange-click">淇县</a><a class="js-city-name" data-ci="865" data-val="{ choosecityid:865 }" data-act="cityChange-click">全椒</a><a class="js-city-name" data-ci="929" data-val="{ choosecityid:929 }" data-act="cityChange-click">清河</a><a class="js-city-name" data-ci="922" data-val="{ choosecityid:922 }" data-act="cityChange-click">青田</a><a class="js-city-name" data-ci="914" data-val="{ choosecityid:914 }" data-act="cityChange-click">栖霞</a><a class="js-city-name" data-ci="1020" data-val="{ choosecityid:1020 }" data-act="cityChange-click">青县</a><a class="js-city-name" data-ci="1004" data-val="{ choosecityid:1004 }" data-act="cityChange-click">潜山</a><a class="js-city-name" data-ci="998" data-val="{ choosecityid:998 }" data-act="cityChange-click">庆云</a><a class="js-city-name" data-ci="1089" data-val="{ choosecityid:1089 }" data-act="cityChange-click">祁东县</a><a class="js-city-name" data-ci="1115" data-val="{ choosecityid:1115 }" data-act="cityChange-click">杞县</a><a class="js-city-name" data-ci="1107" data-val="{ choosecityid:1107 }" data-act="cityChange-click">庆安县</a><a class="js-city-name" data-ci="1131" data-val="{ choosecityid:1131 }" data-act="cityChange-click">青冈县</a><a class="js-city-name" data-ci="1139" data-val="{ choosecityid:1139 }" data-act="cityChange-click">岐山县</a><a class="js-city-name" data-ci="1220" data-val="{ choosecityid:1220 }" data-act="cityChange-click">青阳县</a>
                            </div>
                        </li>
                        <li>
                            <span>R</span>
                            <div>
                                <a class="js-city-name" data-ci="228" data-val="{ choosecityid:228 }" data-act="cityChange-click">日照</a><a class="js-city-name" data-ci="348" data-val="{ choosecityid:348 }" data-act="cityChange-click">日喀则</a><a class="js-city-name" data-ci="475" data-val="{ choosecityid:475 }" data-act="cityChange-click">仁怀</a><a class="js-city-name" data-ci="469" data-val="{ choosecityid:469 }" data-act="cityChange-click">瑞安</a><a class="js-city-name" data-ci="501" data-val="{ choosecityid:501 }" data-act="cityChange-click">如皋</a><a class="js-city-name" data-ci="497" data-val="{ choosecityid:497 }" data-act="cityChange-click">荣成</a><a class="js-city-name" data-ci="499" data-val="{ choosecityid:499 }" data-act="cityChange-click">乳山</a><a class="js-city-name" data-ci="616" data-val="{ choosecityid:616 }" data-act="cityChange-click">汝州</a><a class="js-city-name" data-ci="639" data-val="{ choosecityid:639 }" data-act="cityChange-click">瑞金</a><a class="js-city-name" data-ci="657" data-val="{ choosecityid:657 }" data-act="cityChange-click">瑞昌</a><a class="js-city-name" data-ci="749" data-val="{ choosecityid:749 }" data-act="cityChange-click">仁寿</a><a class="js-city-name" data-ci="917" data-val="{ choosecityid:917 }" data-act="cityChange-click">任丘</a><a class="js-city-name" data-ci="988" data-val="{ choosecityid:988 }" data-act="cityChange-click">如东</a><a class="js-city-name" data-ci="966" data-val="{ choosecityid:966 }" data-act="cityChange-click">汝阳</a><a class="js-city-name" data-ci="1101" data-val="{ choosecityid:1101 }" data-act="cityChange-click">容县</a><a class="js-city-name" data-ci="1095" data-val="{ choosecityid:1095 }" data-act="cityChange-click">汝城县</a><a class="js-city-name" data-ci="1114" data-val="{ choosecityid:1114 }" data-act="cityChange-click">荣昌区</a>
                            </div>
                        </li>
                        <li>
                            <span>S</span>
                            <div>
                                <a class="js-city-name" data-ci="10" data-val="{ choosecityid:10 }" data-act="cityChange-click">上海</a><a class="js-city-name" data-ci="30" data-val="{ choosecityid:30 }" data-act="cityChange-click">深圳</a><a class="js-city-name" data-ci="66" data-val="{ choosecityid:66 }" data-act="cityChange-click">沈阳</a><a class="js-city-name" data-ci="76" data-val="{ choosecityid:76 }" data-act="cityChange-click">石家庄</a><a class="js-city-name" data-ci="80" data-val="{ choosecityid:80 }" data-act="cityChange-click">苏州</a><a class="js-city-name" data-ci="111" data-val="{ choosecityid:111 }" data-act="cityChange-click">三亚</a><a class="js-city-name" data-ci="117" data-val="{ choosecityid:117 }" data-act="cityChange-click">汕头</a><a class="js-city-name" data-ci="133" data-val="{ choosecityid:133 }" data-act="cityChange-click">朔州</a><a class="js-city-name" data-ci="171" data-val="{ choosecityid:171 }" data-act="cityChange-click">双鸭山</a><a class="js-city-name" data-ci="162" data-val="{ choosecityid:162 }" data-act="cityChange-click">四平</a><a class="js-city-name" data-ci="166" data-val="{ choosecityid:166 }" data-act="cityChange-click">松原</a><a class="js-city-name" data-ci="187" data-val="{ choosecityid:187 }" data-act="cityChange-click">绍兴</a><a class="js-city-name" data-ci="184" data-val="{ choosecityid:184 }" data-act="cityChange-click">宿迁</a><a class="js-city-name" data-ci="177" data-val="{ choosecityid:177 }" data-act="cityChange-click">绥化</a><a class="js-city-name" data-ci="201" data-val="{ choosecityid:201 }" data-act="cityChange-click">宿州</a><a class="js-city-name" data-ci="221" data-val="{ choosecityid:221 }" data-act="cityChange-click">上饶</a><a class="js-city-name" data-ci="208" data-val="{ choosecityid:208 }" data-act="cityChange-click">三明</a><a class="js-city-name" data-ci="251" data-val="{ choosecityid:251 }" data-act="cityChange-click">十堰</a><a class="js-city-name" data-ci="245" data-val="{ choosecityid:245 }" data-act="cityChange-click">商丘</a><a class="js-city-name" data-ci="243" data-val="{ choosecityid:243 }" data-act="cityChange-click">三门峡</a><a class="js-city-name" data-ci="276" data-val="{ choosecityid:276 }" data-act="cityChange-click">韶关</a><a class="js-city-name" data-ci="283" data-val="{ choosecityid:283 }" data-act="cityChange-click">汕尾</a><a class="js-city-name" data-ci="260" data-val="{ choosecityid:260 }" data-act="cityChange-click">随州</a><a class="js-city-name" data-ci="266" data-val="{ choosecityid:266 }" data-act="cityChange-click">邵阳</a><a class="js-city-name" data-ci="308" data-val="{ choosecityid:308 }" data-act="cityChange-click">遂宁</a><a class="js-city-name" data-ci="383" data-val="{ choosecityid:383 }" data-act="cityChange-click">石嘴山</a><a class="js-city-name" data-ci="360" data-val="{ choosecityid:360 }" data-act="cityChange-click">商洛</a><a class="js-city-name" data-ci="408" data-val="{ choosecityid:408 }" data-act="cityChange-click">石河子</a><a class="js-city-name" data-ci="406" data-val="{ choosecityid:406 }" data-act="cityChange-click">顺德</a><a class="js-city-name" data-ci="440" data-val="{ choosecityid:440 }" data-act="cityChange-click">石狮</a><a class="js-city-name" data-ci="456" data-val="{ choosecityid:456 }" data-act="cityChange-click">上虞</a><a class="js-city-name" data-ci="495" data-val="{ choosecityid:495 }" data-act="cityChange-click">寿光</a><a class="js-city-name" data-ci="487" data-val="{ choosecityid:487 }" data-act="cityChange-click">神农架</a><a class="js-city-name" data-ci="569" data-val="{ choosecityid:569 }" data-act="cityChange-click">韶山</a><a class="js-city-name" data-ci="532" data-val="{ choosecityid:532 }" data-act="cityChange-click">射阳</a><a class="js-city-name" data-ci="531" data-val="{ choosecityid:531 }" data-act="cityChange-click">沭阳</a><a class="js-city-name" data-ci="530" data-val="{ choosecityid:530 }" data-act="cityChange-click">嵊州</a><a class="js-city-name" data-ci="538" data-val="{ choosecityid:538 }" data-act="cityChange-click">三河</a><a class="js-city-name" data-ci="613" data-val="{ choosecityid:613 }" data-act="cityChange-click">沙河</a><a class="js-city-name" data-ci="633" data-val="{ choosecityid:633 }" data-act="cityChange-click">四会</a><a class="js-city-name" data-ci="648" data-val="{ choosecityid:648 }" data-act="cityChange-click">松滋</a><a class="js-city-name" data-ci="669" data-val="{ choosecityid:669 }" data-act="cityChange-click">舒兰</a><a class="js-city-name" data-ci="736" data-val="{ choosecityid:736 }" data-act="cityChange-click">邵东</a><a class="js-city-name" data-ci="762" data-val="{ choosecityid:762 }" data-act="cityChange-click">沙湾</a><a class="js-city-name" data-ci="760" data-val="{ choosecityid:760 }" data-act="cityChange-click">泗阳</a><a class="js-city-name" data-ci="755" data-val="{ choosecityid:755 }" data-act="cityChange-click">睢县</a><a class="js-city-name" data-ci="819" data-val="{ choosecityid:819 }" data-act="cityChange-click">石泉</a><a class="js-city-name" data-ci="830" data-val="{ choosecityid:830 }" data-act="cityChange-click">单县</a><a class="js-city-name" data-ci="824" data-val="{ choosecityid:824 }" data-act="cityChange-click">泗洪</a><a class="js-city-name" data-ci="804" data-val="{ choosecityid:804 }" data-act="cityChange-click">上高</a><a class="js-city-name" data-ci="797" data-val="{ choosecityid:797 }" data-act="cityChange-click">绥中</a><a class="js-city-name" data-ci="796" data-val="{ choosecityid:796 }" data-act="cityChange-click">神木</a><a class="js-city-name" data-ci="768" data-val="{ choosecityid:768 }" data-act="cityChange-click">涉县</a><a class="js-city-name" data-ci="886" data-val="{ choosecityid:886 }" data-act="cityChange-click">上蔡</a><a class="js-city-name" data-ci="895" data-val="{ choosecityid:895 }" data-act="cityChange-click">遂昌</a><a class="js-city-name" data-ci="875" data-val="{ choosecityid:875 }" data-act="cityChange-click">睢宁</a><a class="js-city-name" data-ci="840" data-val="{ choosecityid:840 }" data-act="cityChange-click">沈丘</a><a class="js-city-name" data-ci="845" data-val="{ choosecityid:845 }" data-act="cityChange-click">三门</a><a class="js-city-name" data-ci="953" data-val="{ choosecityid:953 }" data-act="cityChange-click">什邡</a><a class="js-city-name" data-ci="955" data-val="{ choosecityid:955 }" data-act="cityChange-click">上杭</a><a class="js-city-name" data-ci="907" data-val="{ choosecityid:907 }" data-act="cityChange-click">石岛</a><a class="js-city-name" data-ci="1017" data-val="{ choosecityid:1017 }" data-act="cityChange-click">泗水</a><a class="js-city-name" data-ci="1022" data-val="{ choosecityid:1022 }" data-act="cityChange-click">社旗</a><a class="js-city-name" data-ci="1015" data-val="{ choosecityid:1015 }" data-act="cityChange-click">商河</a><a class="js-city-name" data-ci="992" data-val="{ choosecityid:992 }" data-act="cityChange-click">射洪</a><a class="js-city-name" data-ci="982" data-val="{ choosecityid:982 }" data-act="cityChange-click">舒城</a><a class="js-city-name" data-ci="965" data-val="{ choosecityid:965 }" data-act="cityChange-click">嵩县</a><a class="js-city-name" data-ci="1118" data-val="{ choosecityid:1118 }" data-act="cityChange-click">石门</a><a class="js-city-name" data-ci="1113" data-val="{ choosecityid:1113 }" data-act="cityChange-click">桑植</a><a class="js-city-name" data-ci="1108" data-val="{ choosecityid:1108 }" data-act="cityChange-click">商城县</a><a class="js-city-name" data-ci="1120" data-val="{ choosecityid:1120 }" data-act="cityChange-click">鄯善县</a><a class="js-city-name" data-ci="1039" data-val="{ choosecityid:1039 }" data-act="cityChange-click">深州市</a><a class="js-city-name" data-ci="1024" data-val="{ choosecityid:1024 }" data-act="cityChange-click">泗县</a><a class="js-city-name" data-ci="1055" data-val="{ choosecityid:1055 }" data-act="cityChange-click">商水县</a><a class="js-city-name" data-ci="1045" data-val="{ choosecityid:1045 }" data-act="cityChange-click">上林县</a><a class="js-city-name" data-ci="1067" data-val="{ choosecityid:1067 }" data-act="cityChange-click">遂川</a><a class="js-city-name" data-ci="1071" data-val="{ choosecityid:1071 }" data-act="cityChange-click">上栗</a><a class="js-city-name" data-ci="1062" data-val="{ choosecityid:1062 }" data-act="cityChange-click">双峰</a><a class="js-city-name" data-ci="1081" data-val="{ choosecityid:1081 }" data-act="cityChange-click">肃宁县</a><a class="js-city-name" data-ci="1077" data-val="{ choosecityid:1077 }" data-act="cityChange-click">莎车县</a><a class="js-city-name" data-ci="1155" data-val="{ choosecityid:1155 }" data-act="cityChange-click">绥德县</a><a class="js-city-name" data-ci="1158" data-val="{ choosecityid:1158 }" data-act="cityChange-click">沙县</a><a class="js-city-name" data-ci="1176" data-val="{ choosecityid:1176 }" data-act="cityChange-click">深泽县</a><a class="js-city-name" data-ci="1180" data-val="{ choosecityid:1180 }" data-act="cityChange-click">石柱</a><a class="js-city-name" data-ci="1189" data-val="{ choosecityid:1189 }" data-act="cityChange-click">邵武</a><a class="js-city-name" data-ci="1192" data-val="{ choosecityid:1192 }" data-act="cityChange-click">寿县</a><a class="js-city-name" data-ci="1211" data-val="{ choosecityid:1211 }" data-act="cityChange-click">三台县</a>
                            </div>
                        </li>
                        <li>
                            <span>T</span>
                            <div>
                                <a class="js-city-name" data-ci="40" data-val="{ choosecityid:40 }" data-act="cityChange-click">天津</a><a class="js-city-name" data-ci="101" data-val="{ choosecityid:101 }" data-act="cityChange-click">太原</a><a class="js-city-name" data-ci="121" data-val="{ choosecityid:121 }" data-act="cityChange-click">唐山</a><a class="js-city-name" data-ci="143" data-val="{ choosecityid:143 }" data-act="cityChange-click">通辽</a><a class="js-city-name" data-ci="159" data-val="{ choosecityid:159 }" data-act="cityChange-click">铁岭</a><a class="js-city-name" data-ci="164" data-val="{ choosecityid:164 }" data-act="cityChange-click">通化</a><a class="js-city-name" data-ci="191" data-val="{ choosecityid:191 }" data-act="cityChange-click">台州</a><a class="js-city-name" data-ci="183" data-val="{ choosecityid:183 }" data-act="cityChange-click">泰州</a><a class="js-city-name" data-ci="196" data-val="{ choosecityid:196 }" data-act="cityChange-click">铜陵</a><a class="js-city-name" data-ci="226" data-val="{ choosecityid:226 }" data-act="cityChange-click">泰安</a><a class="js-city-name" data-ci="325" data-val="{ choosecityid:325 }" data-act="cityChange-click">铜仁</a><a class="js-city-name" data-ci="352" data-val="{ choosecityid:352 }" data-act="cityChange-click">铜川</a><a class="js-city-name" data-ci="364" data-val="{ choosecityid:364 }" data-act="cityChange-click">天水</a><a class="js-city-name" data-ci="399" data-val="{ choosecityid:399 }" data-act="cityChange-click">塔城</a><a class="js-city-name" data-ci="389" data-val="{ choosecityid:389 }" data-act="cityChange-click">吐鲁番</a><a class="js-city-name" data-ci="432" data-val="{ choosecityid:432 }" data-act="cityChange-click">太仓</a><a class="js-city-name" data-ci="425" data-val="{ choosecityid:425 }" data-act="cityChange-click">桐乡</a><a class="js-city-name" data-ci="503" data-val="{ choosecityid:503 }" data-act="cityChange-click">台山</a><a class="js-city-name" data-ci="482" data-val="{ choosecityid:482 }" data-act="cityChange-click">腾冲</a><a class="js-city-name" data-ci="549" data-val="{ choosecityid:549 }" data-act="cityChange-click">滕州</a><a class="js-city-name" data-ci="554" data-val="{ choosecityid:554 }" data-act="cityChange-click">桐庐</a><a class="js-city-name" data-ci="518" data-val="{ choosecityid:518 }" data-act="cityChange-click">泰兴</a><a class="js-city-name" data-ci="626" data-val="{ choosecityid:626 }" data-act="cityChange-click">天长</a><a class="js-city-name" data-ci="578" data-val="{ choosecityid:578 }" data-act="cityChange-click">天门</a><a class="js-city-name" data-ci="673" data-val="{ choosecityid:673 }" data-act="cityChange-click">桐城</a><a class="js-city-name" data-ci="666" data-val="{ choosecityid:666 }" data-act="cityChange-click">洮南</a><a class="js-city-name" data-ci="743" data-val="{ choosecityid:743 }" data-act="cityChange-click">台前</a><a class="js-city-name" data-ci="759" data-val="{ choosecityid:759 }" data-act="cityChange-click">太和</a><a class="js-city-name" data-ci="817" data-val="{ choosecityid:817 }" data-act="cityChange-click">汤阴</a><a class="js-city-name" data-ci="812" data-val="{ choosecityid:812 }" data-act="cityChange-click">藤县</a><a class="js-city-name" data-ci="790" data-val="{ choosecityid:790 }" data-act="cityChange-click">太谷</a><a class="js-city-name" data-ci="782" data-val="{ choosecityid:782 }" data-act="cityChange-click">天台</a><a class="js-city-name" data-ci="879" data-val="{ choosecityid:879 }" data-act="cityChange-click">土默特右旗</a><a class="js-city-name" data-ci="947" data-val="{ choosecityid:947 }" data-act="cityChange-click">铜梁</a><a class="js-city-name" data-ci="942" data-val="{ choosecityid:942 }" data-act="cityChange-click">郯城</a><a class="js-city-name" data-ci="1009" data-val="{ choosecityid:1009 }" data-act="cityChange-click">桃源</a><a class="js-city-name" data-ci="962" data-val="{ choosecityid:962 }" data-act="cityChange-click">同安</a><a class="js-city-name" data-ci="1111" data-val="{ choosecityid:1111 }" data-act="cityChange-click">通许县</a><a class="js-city-name" data-ci="1135" data-val="{ choosecityid:1135 }" data-act="cityChange-click">通榆县</a><a class="js-city-name" data-ci="1132" data-val="{ choosecityid:1132 }" data-act="cityChange-click">通海县</a><a class="js-city-name" data-ci="1136" data-val="{ choosecityid:1136 }" data-act="cityChange-click">唐河</a><a class="js-city-name" data-ci="1030" data-val="{ choosecityid:1030 }" data-act="cityChange-click">泰和县</a><a class="js-city-name" data-ci="1054" data-val="{ choosecityid:1054 }" data-act="cityChange-click">太康县</a><a class="js-city-name" data-ci="1041" data-val="{ choosecityid:1041 }" data-act="cityChange-click">铜鼓</a><a class="js-city-name" data-ci="1044" data-val="{ choosecityid:1044 }" data-act="cityChange-click">田东县</a><a class="js-city-name" data-ci="1215" data-val="{ choosecityid:1215 }" data-act="cityChange-click">通江县</a>
                            </div>
                        </li>
                        <li>
                            <span>W</span>
                            <div>
                                <a class="js-city-name" data-ci="52" data-val="{ choosecityid:52 }" data-act="cityChange-click">无锡</a><a class="js-city-name" data-ci="57" data-val="{ choosecityid:57 }" data-act="cityChange-click">武汉</a><a class="js-city-name" data-ci="102" data-val="{ choosecityid:102 }" data-act="cityChange-click">芜湖</a><a class="js-city-name" data-ci="112" data-val="{ choosecityid:112 }" data-act="cityChange-click">温州</a><a class="js-city-name" data-ci="141" data-val="{ choosecityid:141 }" data-act="cityChange-click">乌海</a><a class="js-city-name" data-ci="147" data-val="{ choosecityid:147 }" data-act="cityChange-click">乌兰察布</a><a class="js-city-name" data-ci="227" data-val="{ choosecityid:227 }" data-act="cityChange-click">威海</a><a class="js-city-name" data-ci="224" data-val="{ choosecityid:224 }" data-act="cityChange-click">潍坊</a><a class="js-city-name" data-ci="291" data-val="{ choosecityid:291 }" data-act="cityChange-click">梧州</a><a class="js-city-name" data-ci="339" data-val="{ choosecityid:339 }" data-act="cityChange-click">文山</a><a class="js-city-name" data-ci="355" data-val="{ choosecityid:355 }" data-act="cityChange-click">渭南</a><a class="js-city-name" data-ci="365" data-val="{ choosecityid:365 }" data-act="cityChange-click">武威</a><a class="js-city-name" data-ci="387" data-val="{ choosecityid:387 }" data-act="cityChange-click">乌鲁木齐</a><a class="js-city-name" data-ci="384" data-val="{ choosecityid:384 }" data-act="cityChange-click">吴忠</a><a class="js-city-name" data-ci="443" data-val="{ choosecityid:443 }" data-act="cityChange-click">武夷山</a><a class="js-city-name" data-ci="433" data-val="{ choosecityid:433 }" data-act="cityChange-click">吴江</a><a class="js-city-name" data-ci="428" data-val="{ choosecityid:428 }" data-act="cityChange-click">万州</a><a class="js-city-name" data-ci="479" data-val="{ choosecityid:479 }" data-act="cityChange-click">婺源</a><a class="js-city-name" data-ci="457" data-val="{ choosecityid:457 }" data-act="cityChange-click">温岭</a><a class="js-city-name" data-ci="449" data-val="{ choosecityid:449 }" data-act="cityChange-click">武安</a><a class="js-city-name" data-ci="498" data-val="{ choosecityid:498 }" data-act="cityChange-click">文登</a><a class="js-city-name" data-ci="551" data-val="{ choosecityid:551 }" data-act="cityChange-click">乌镇</a><a class="js-city-name" data-ci="592" data-val="{ choosecityid:592 }" data-act="cityChange-click">吴川</a><a class="js-city-name" data-ci="607" data-val="{ choosecityid:607 }" data-act="cityChange-click">文昌</a><a class="js-city-name" data-ci="684" data-val="{ choosecityid:684 }" data-act="cityChange-click">舞钢</a><a class="js-city-name" data-ci="680" data-val="{ choosecityid:680 }" data-act="cityChange-click">万宁</a><a class="js-city-name" data-ci="696" data-val="{ choosecityid:696 }" data-act="cityChange-click">温县</a><a class="js-city-name" data-ci="697" data-val="{ choosecityid:697 }" data-act="cityChange-click">武陟</a><a class="js-city-name" data-ci="667" data-val="{ choosecityid:667 }" data-act="cityChange-click">武穴</a><a class="js-city-name" data-ci="747" data-val="{ choosecityid:747 }" data-act="cityChange-click">乌苏</a><a class="js-city-name" data-ci="826" data-val="{ choosecityid:826 }" data-act="cityChange-click">卫辉</a><a class="js-city-name" data-ci="773" data-val="{ choosecityid:773 }" data-act="cityChange-click">芜湖县</a><a class="js-city-name" data-ci="769" data-val="{ choosecityid:769 }" data-act="cityChange-click">无为</a><a class="js-city-name" data-ci="850" data-val="{ choosecityid:850 }" data-act="cityChange-click">乌拉特前旗</a><a class="js-city-name" data-ci="926" data-val="{ choosecityid:926 }" data-act="cityChange-click">围场</a><a class="js-city-name" data-ci="904" data-val="{ choosecityid:904 }" data-act="cityChange-click">武城</a><a class="js-city-name" data-ci="898" data-val="{ choosecityid:898 }" data-act="cityChange-click">汶上</a><a class="js-city-name" data-ci="897" data-val="{ choosecityid:897 }" data-act="cityChange-click">微山</a><a class="js-city-name" data-ci="1019" data-val="{ choosecityid:1019 }" data-act="cityChange-click">无极</a><a class="js-city-name" data-ci="1023" data-val="{ choosecityid:1023 }" data-act="cityChange-click">万荣</a><a class="js-city-name" data-ci="1014" data-val="{ choosecityid:1014 }" data-act="cityChange-click">舞阳</a><a class="js-city-name" data-ci="1006" data-val="{ choosecityid:1006 }" data-act="cityChange-click">威宁</a><a class="js-city-name" data-ci="995" data-val="{ choosecityid:995 }" data-act="cityChange-click">武鸣</a><a class="js-city-name" data-ci="973" data-val="{ choosecityid:973 }" data-act="cityChange-click">武义</a><a class="js-city-name" data-ci="967" data-val="{ choosecityid:967 }" data-act="cityChange-click">瓦房店</a><a class="js-city-name" data-ci="1109" data-val="{ choosecityid:1109 }" data-act="cityChange-click">尉氏县</a><a class="js-city-name" data-ci="1128" data-val="{ choosecityid:1128 }" data-act="cityChange-click">武隆县</a><a class="js-city-name" data-ci="1025" data-val="{ choosecityid:1025 }" data-act="cityChange-click">万载</a><a class="js-city-name" data-ci="1049" data-val="{ choosecityid:1049 }" data-act="cityChange-click">武平县</a><a class="js-city-name" data-ci="1046" data-val="{ choosecityid:1046 }" data-act="cityChange-click">威县</a><a class="js-city-name" data-ci="1223" data-val="{ choosecityid:1223 }" data-act="cityChange-click">武冈市</a><a class="js-city-name" data-ci="1217" data-val="{ choosecityid:1217 }" data-act="cityChange-click">望奎县</a><a class="js-city-name" data-ci="1187" data-val="{ choosecityid:1187 }" data-act="cityChange-click">五常市</a><a class="js-city-name" data-ci="1207" data-val="{ choosecityid:1207 }" data-act="cityChange-click">旺苍县</a>
                            </div>
                        </li>
                        <li>
                            <span>X</span>
                            <div>
                                <a class="js-city-name" data-ci="42" data-val="{ choosecityid:42 }" data-act="cityChange-click">西安</a><a class="js-city-name" data-ci="62" data-val="{ choosecityid:62 }" data-act="cityChange-click">厦门</a><a class="js-city-name" data-ci="103" data-val="{ choosecityid:103 }" data-act="cityChange-click">新乡</a><a class="js-city-name" data-ci="119" data-val="{ choosecityid:119 }" data-act="cityChange-click">徐州</a><a class="js-city-name" data-ci="124" data-val="{ choosecityid:124 }" data-act="cityChange-click">邢台</a><a class="js-city-name" data-ci="136" data-val="{ choosecityid:136 }" data-act="cityChange-click">忻州</a><a class="js-city-name" data-ci="148" data-val="{ choosecityid:148 }" data-act="cityChange-click">兴安盟</a><a class="js-city-name" data-ci="149" data-val="{ choosecityid:149 }" data-act="cityChange-click">锡林郭勒</a><a class="js-city-name" data-ci="206" data-val="{ choosecityid:206 }" data-act="cityChange-click">宣城</a><a class="js-city-name" data-ci="215" data-val="{ choosecityid:215 }" data-act="cityChange-click">新余</a><a class="js-city-name" data-ci="253" data-val="{ choosecityid:253 }" data-act="cityChange-click">襄阳</a><a class="js-city-name" data-ci="246" data-val="{ choosecityid:246 }" data-act="cityChange-click">信阳</a><a class="js-city-name" data-ci="241" data-val="{ choosecityid:241 }" data-act="cityChange-click">许昌</a><a class="js-city-name" data-ci="275" data-val="{ choosecityid:275 }" data-act="cityChange-click">湘西</a><a class="js-city-name" data-ci="259" data-val="{ choosecityid:259 }" data-act="cityChange-click">咸宁</a><a class="js-city-name" data-ci="256" data-val="{ choosecityid:256 }" data-act="cityChange-click">孝感</a><a class="js-city-name" data-ci="264" data-val="{ choosecityid:264 }" data-act="cityChange-click">湘潭</a><a class="js-city-name" data-ci="340" data-val="{ choosecityid:340 }" data-act="cityChange-click">西双版纳</a><a class="js-city-name" data-ci="374" data-val="{ choosecityid:374 }" data-act="cityChange-click">西宁</a><a class="js-city-name" data-ci="354" data-val="{ choosecityid:354 }" data-act="cityChange-click">咸阳</a><a class="js-city-name" data-ci="412" data-val="{ choosecityid:412 }" data-act="cityChange-click">仙桃</a><a class="js-city-name" data-ci="484" data-val="{ choosecityid:484 }" data-act="cityChange-click">香格里拉</a><a class="js-city-name" data-ci="548" data-val="{ choosecityid:548 }" data-act="cityChange-click">新沂</a><a class="js-city-name" data-ci="556" data-val="{ choosecityid:556 }" data-act="cityChange-click">新密</a><a class="js-city-name" data-ci="557" data-val="{ choosecityid:557 }" data-act="cityChange-click">荥阳</a><a class="js-city-name" data-ci="555" data-val="{ choosecityid:555 }" data-act="cityChange-click">新郑</a><a class="js-city-name" data-ci="562" data-val="{ choosecityid:562 }" data-act="cityChange-click">兴宁</a><a class="js-city-name" data-ci="560" data-val="{ choosecityid:560 }" data-act="cityChange-click">西塘</a><a class="js-city-name" data-ci="574" data-val="{ choosecityid:574 }" data-act="cityChange-click">新民</a><a class="js-city-name" data-ci="517" data-val="{ choosecityid:517 }" data-act="cityChange-click">兴化</a><a class="js-city-name" data-ci="525" data-val="{ choosecityid:525 }" data-act="cityChange-click">湘阴</a><a class="js-city-name" data-ci="523" data-val="{ choosecityid:523 }" data-act="cityChange-click">新泰</a><a class="js-city-name" data-ci="534" data-val="{ choosecityid:534 }" data-act="cityChange-click">响水</a><a class="js-city-name" data-ci="543" data-val="{ choosecityid:543 }" data-act="cityChange-click">辛集</a><a class="js-city-name" data-ci="614" data-val="{ choosecityid:614 }" data-act="cityChange-click">湘乡</a><a class="js-city-name" data-ci="580" data-val="{ choosecityid:580 }" data-act="cityChange-click">项城</a><a class="js-city-name" data-ci="604" data-val="{ choosecityid:604 }" data-act="cityChange-click">孝义</a><a class="js-city-name" data-ci="695" data-val="{ choosecityid:695 }" data-act="cityChange-click">修武</a><a class="js-city-name" data-ci="692" data-val="{ choosecityid:692 }" data-act="cityChange-click">象山</a><a class="js-city-name" data-ci="641" data-val="{ choosecityid:641 }" data-act="cityChange-click">兴城</a><a class="js-city-name" data-ci="661" data-val="{ choosecityid:661 }" data-act="cityChange-click">兴平</a><a class="js-city-name" data-ci="764" data-val="{ choosecityid:764 }" data-act="cityChange-click">仙居</a><a class="js-city-name" data-ci="728" data-val="{ choosecityid:728 }" data-act="cityChange-click">夏津</a><a class="js-city-name" data-ci="729" data-val="{ choosecityid:729 }" data-act="cityChange-click">信宜</a><a class="js-city-name" data-ci="734" data-val="{ choosecityid:734 }" data-act="cityChange-click">新化</a><a class="js-city-name" data-ci="818" data-val="{ choosecityid:818 }" data-act="cityChange-click">新安</a><a class="js-city-name" data-ci="828" data-val="{ choosecityid:828 }" data-act="cityChange-click">新乡县</a><a class="js-city-name" data-ci="802" data-val="{ choosecityid:802 }" data-act="cityChange-click">宣威</a><a class="js-city-name" data-ci="810" data-val="{ choosecityid:810 }" data-act="cityChange-click">霞浦</a><a class="js-city-name" data-ci="776" data-val="{ choosecityid:776 }" data-act="cityChange-click">襄垣</a><a class="js-city-name" data-ci="885" data-val="{ choosecityid:885 }" data-act="cityChange-click">西平</a><a class="js-city-name" data-ci="892" data-val="{ choosecityid:892 }" data-act="cityChange-click">新乐</a><a class="js-city-name" data-ci="870" data-val="{ choosecityid:870 }" data-act="cityChange-click">西乡</a><a class="js-city-name" data-ci="853" data-val="{ choosecityid:853 }" data-act="cityChange-click">徐闻</a><a class="js-city-name" data-ci="857" data-val="{ choosecityid:857 }" data-act="cityChange-click">夏邑</a><a class="js-city-name" data-ci="863" data-val="{ choosecityid:863 }" data-act="cityChange-click">浚县</a><a class="js-city-name" data-ci="843" data-val="{ choosecityid:843 }" data-act="cityChange-click">盱眙</a><a class="js-city-name" data-ci="957" data-val="{ choosecityid:957 }" data-act="cityChange-click">香河</a><a class="js-city-name" data-ci="959" data-val="{ choosecityid:959 }" data-act="cityChange-click">信丰</a><a class="js-city-name" data-ci="949" data-val="{ choosecityid:949 }" data-act="cityChange-click">浠水</a><a class="js-city-name" data-ci="936" data-val="{ choosecityid:936 }" data-act="cityChange-click">西华</a><a class="js-city-name" data-ci="920" data-val="{ choosecityid:920 }" data-act="cityChange-click">薛城</a><a class="js-city-name" data-ci="903" data-val="{ choosecityid:903 }" data-act="cityChange-click">新昌</a><a class="js-city-name" data-ci="1021" data-val="{ choosecityid:1021 }" data-act="cityChange-click">淅川</a><a class="js-city-name" data-ci="996" data-val="{ choosecityid:996 }" data-act="cityChange-click">溆浦</a><a class="js-city-name" data-ci="961" data-val="{ choosecityid:961 }" data-act="cityChange-click">新蔡</a><a class="js-city-name" data-ci="1129" data-val="{ choosecityid:1129 }" data-act="cityChange-click">秀山土家族苗族自治县</a><a class="js-city-name" data-ci="1123" data-val="{ choosecityid:1123 }" data-act="cityChange-click">新洲区</a><a class="js-city-name" data-ci="1149" data-val="{ choosecityid:1149 }" data-act="cityChange-click">仙游县</a><a class="js-city-name" data-ci="1137" data-val="{ choosecityid:1137 }" data-act="cityChange-click">新野</a><a class="js-city-name" data-ci="1033" data-val="{ choosecityid:1033 }" data-act="cityChange-click">兴国县</a><a class="js-city-name" data-ci="1036" data-val="{ choosecityid:1036 }" data-act="cityChange-click">新田</a><a class="js-city-name" data-ci="1026" data-val="{ choosecityid:1026 }" data-act="cityChange-click">新干</a><a class="js-city-name" data-ci="1051" data-val="{ choosecityid:1051 }" data-act="cityChange-click">祥云县</a><a class="js-city-name" data-ci="1050" data-val="{ choosecityid:1050 }" data-act="cityChange-click">寻乌县</a><a class="js-city-name" data-ci="1057" data-val="{ choosecityid:1057 }" data-act="cityChange-click">襄城县</a><a class="js-city-name" data-ci="1063" data-val="{ choosecityid:1063 }" data-act="cityChange-click">新宁</a><a class="js-city-name" data-ci="1082" data-val="{ choosecityid:1082 }" data-act="cityChange-click">献县</a><a class="js-city-name" data-ci="1167" data-val="{ choosecityid:1167 }" data-act="cityChange-click">新津县</a><a class="js-city-name" data-ci="1213" data-val="{ choosecityid:1213 }" data-act="cityChange-click">旬阳县</a>
                            </div>
                        </li>
                        <li>
                            <span>Y</span>
                            <div>
                                <a class="js-city-name" data-ci="104" data-val="{ choosecityid:104 }" data-act="cityChange-click">烟台</a><a class="js-city-name" data-ci="120" data-val="{ choosecityid:120 }" data-act="cityChange-click">扬州</a><a class="js-city-name" data-ci="130" data-val="{ choosecityid:130 }" data-act="cityChange-click">阳泉</a><a class="js-city-name" data-ci="135" data-val="{ choosecityid:135 }" data-act="cityChange-click">运城</a><a class="js-city-name" data-ci="155" data-val="{ choosecityid:155 }" data-act="cityChange-click">营口</a><a class="js-city-name" data-ci="168" data-val="{ choosecityid:168 }" data-act="cityChange-click">延边</a><a class="js-city-name" data-ci="172" data-val="{ choosecityid:172 }" data-act="cityChange-click">伊春</a><a class="js-city-name" data-ci="181" data-val="{ choosecityid:181 }" data-act="cityChange-click">盐城</a><a class="js-city-name" data-ci="216" data-val="{ choosecityid:216 }" data-act="cityChange-click">鹰潭</a><a class="js-city-name" data-ci="219" data-val="{ choosecityid:219 }" data-act="cityChange-click">宜春</a><a class="js-city-name" data-ci="252" data-val="{ choosecityid:252 }" data-act="cityChange-click">宜昌</a><a class="js-city-name" data-ci="272" data-val="{ choosecityid:272 }" data-act="cityChange-click">永州</a><a class="js-city-name" data-ci="285" data-val="{ choosecityid:285 }" data-act="cityChange-click">阳江</a><a class="js-city-name" data-ci="267" data-val="{ choosecityid:267 }" data-act="cityChange-click">岳阳</a><a class="js-city-name" data-ci="270" data-val="{ choosecityid:270 }" data-act="cityChange-click">益阳</a><a class="js-city-name" data-ci="313" data-val="{ choosecityid:313 }" data-act="cityChange-click">宜宾</a><a class="js-city-name" data-ci="316" data-val="{ choosecityid:316 }" data-act="cityChange-click">雅安</a><a class="js-city-name" data-ci="289" data-val="{ choosecityid:289 }" data-act="cityChange-click">云浮</a><a class="js-city-name" data-ci="296" data-val="{ choosecityid:296 }" data-act="cityChange-click">玉林</a><a class="js-city-name" data-ci="331" data-val="{ choosecityid:331 }" data-act="cityChange-click">玉溪</a><a class="js-city-name" data-ci="382" data-val="{ choosecityid:382 }" data-act="cityChange-click">银川</a><a class="js-city-name" data-ci="356" data-val="{ choosecityid:356 }" data-act="cityChange-click">延安</a><a class="js-city-name" data-ci="358" data-val="{ choosecityid:358 }" data-act="cityChange-click">榆林</a><a class="js-city-name" data-ci="405" data-val="{ choosecityid:405 }" data-act="cityChange-click">义乌</a><a class="js-city-name" data-ci="398" data-val="{ choosecityid:398 }" data-act="cityChange-click">伊犁</a><a class="js-city-name" data-ci="470" data-val="{ choosecityid:470 }" data-act="cityChange-click">乐清</a><a class="js-city-name" data-ci="466" data-val="{ choosecityid:466 }" data-act="cityChange-click">阳朔</a><a class="js-city-name" data-ci="459" data-val="{ choosecityid:459 }" data-act="cityChange-click">余姚</a><a class="js-city-name" data-ci="458" data-val="{ choosecityid:458 }" data-act="cityChange-click">永康</a><a class="js-city-name" data-ci="454" data-val="{ choosecityid:454 }" data-act="cityChange-click">宜兴</a><a class="js-city-name" data-ci="453" data-val="{ choosecityid:453 }" data-act="cityChange-click">兖州</a><a class="js-city-name" data-ci="559" data-val="{ choosecityid:559 }" data-act="cityChange-click">扬中</a><a class="js-city-name" data-ci="516" data-val="{ choosecityid:516 }" data-act="cityChange-click">伊川</a><a class="js-city-name" data-ci="514" data-val="{ choosecityid:514 }" data-act="cityChange-click">英德</a><a class="js-city-name" data-ci="522" data-val="{ choosecityid:522 }" data-act="cityChange-click">仪征</a><a class="js-city-name" data-ci="528" data-val="{ choosecityid:528 }" data-act="cityChange-click">偃师</a><a class="js-city-name" data-ci="608" data-val="{ choosecityid:608 }" data-act="cityChange-click">禹城</a><a class="js-city-name" data-ci="609" data-val="{ choosecityid:609 }" data-act="cityChange-click">禹州</a><a class="js-city-name" data-ci="622" data-val="{ choosecityid:622 }" data-act="cityChange-click">伊宁</a><a class="js-city-name" data-ci="625" data-val="{ choosecityid:625 }" data-act="cityChange-click">宜城</a><a class="js-city-name" data-ci="637" data-val="{ choosecityid:637 }" data-act="cityChange-click">原平</a><a class="js-city-name" data-ci="577" data-val="{ choosecityid:577 }" data-act="cityChange-click">永城</a><a class="js-city-name" data-ci="597" data-val="{ choosecityid:597 }" data-act="cityChange-click">永济</a><a class="js-city-name" data-ci="693" data-val="{ choosecityid:693 }" data-act="cityChange-click">玉环</a><a class="js-city-name" data-ci="656" data-val="{ choosecityid:656 }" data-act="cityChange-click">宜都</a><a class="js-city-name" data-ci="658" data-val="{ choosecityid:658 }" data-act="cityChange-click">沅江</a><a class="js-city-name" data-ci="763" data-val="{ choosecityid:763 }" data-act="cityChange-click">永年</a><a class="js-city-name" data-ci="733" data-val="{ choosecityid:733 }" data-act="cityChange-click">永川</a><a class="js-city-name" data-ci="822" data-val="{ choosecityid:822 }" data-act="cityChange-click">阎良</a><a class="js-city-name" data-ci="829" data-val="{ choosecityid:829 }" data-act="cityChange-click">原阳</a><a class="js-city-name" data-ci="803" data-val="{ choosecityid:803 }" data-act="cityChange-click">易县</a><a class="js-city-name" data-ci="814" data-val="{ choosecityid:814 }" data-act="cityChange-click">宜阳</a><a class="js-city-name" data-ci="784" data-val="{ choosecityid:784 }" data-act="cityChange-click">叶县</a><a class="js-city-name" data-ci="770" data-val="{ choosecityid:770 }" data-act="cityChange-click">阳城</a><a class="js-city-name" data-ci="778" data-val="{ choosecityid:778 }" data-act="cityChange-click">云阳</a><a class="js-city-name" data-ci="884" data-val="{ choosecityid:884 }" data-act="cityChange-click">郓城</a><a class="js-city-name" data-ci="876" data-val="{ choosecityid:876 }" data-act="cityChange-click">玉山</a><a class="js-city-name" data-ci="878" data-val="{ choosecityid:878 }" data-act="cityChange-click">阳谷</a><a class="js-city-name" data-ci="859" data-val="{ choosecityid:859 }" data-act="cityChange-click">虞城</a><a class="js-city-name" data-ci="958" data-val="{ choosecityid:958 }" data-act="cityChange-click">于都</a><a class="js-city-name" data-ci="940" data-val="{ choosecityid:940 }" data-act="cityChange-click">沂水</a><a class="js-city-name" data-ci="943" data-val="{ choosecityid:943 }" data-act="cityChange-click">沂南</a><a class="js-city-name" data-ci="908" data-val="{ choosecityid:908 }" data-act="cityChange-click">杨凌</a><a class="js-city-name" data-ci="901" data-val="{ choosecityid:901 }" data-act="cityChange-click">伊金霍洛旗</a><a class="js-city-name" data-ci="1096" data-val="{ choosecityid:1096 }" data-act="cityChange-click">攸县</a><a class="js-city-name" data-ci="1099" data-val="{ choosecityid:1099 }" data-act="cityChange-click">永顺县</a><a class="js-city-name" data-ci="1094" data-val="{ choosecityid:1094 }" data-act="cityChange-click">永兴县</a><a class="js-city-name" data-ci="1127" data-val="{ choosecityid:1127 }" data-act="cityChange-click">酉阳土家族苗族自治县</a><a class="js-city-name" data-ci="1151" data-val="{ choosecityid:1151 }" data-act="cityChange-click">应县</a><a class="js-city-name" data-ci="1027" data-val="{ choosecityid:1027 }" data-act="cityChange-click">宜丰</a><a class="js-city-name" data-ci="1043" data-val="{ choosecityid:1043 }" data-act="cityChange-click">营山县</a><a class="js-city-name" data-ci="1047" data-val="{ choosecityid:1047 }" data-act="cityChange-click">永安</a><a class="js-city-name" data-ci="1069" data-val="{ choosecityid:1069 }" data-act="cityChange-click">永丰</a><a class="js-city-name" data-ci="1058" data-val="{ choosecityid:1058 }" data-act="cityChange-click">鄢陵</a><a class="js-city-name" data-ci="1072" data-val="{ choosecityid:1072 }" data-act="cityChange-click">永新</a><a class="js-city-name" data-ci="1218" data-val="{ choosecityid:1218 }" data-act="cityChange-click">宜良县</a><a class="js-city-name" data-ci="1159" data-val="{ choosecityid:1159 }" data-act="cityChange-click">阳山县</a><a class="js-city-name" data-ci="1160" data-val="{ choosecityid:1160 }" data-act="cityChange-click">榆树市</a><a class="js-city-name" data-ci="1162" data-val="{ choosecityid:1162 }" data-act="cityChange-click">沅陵县</a><a class="js-city-name" data-ci="1169" data-val="{ choosecityid:1169 }" data-act="cityChange-click">永登县</a><a class="js-city-name" data-ci="1181" data-val="{ choosecityid:1181 }" data-act="cityChange-click">鱼台县</a><a class="js-city-name" data-ci="1182" data-val="{ choosecityid:1182 }" data-act="cityChange-click">宜州市</a><a class="js-city-name" data-ci="1186" data-val="{ choosecityid:1186 }" data-act="cityChange-click">义马市</a><a class="js-city-name" data-ci="1199" data-val="{ choosecityid:1199 }" data-act="cityChange-click">盂县</a><a class="js-city-name" data-ci="1198" data-val="{ choosecityid:1198 }" data-act="cityChange-click">永嘉县</a>
                            </div>
                        </li>
                        <li>
                            <span>Z</span>
                            <div>
                                <a class="js-city-name" data-ci="73" data-val="{ choosecityid:73 }" data-act="cityChange-click">郑州</a><a class="js-city-name" data-ci="81" data-val="{ choosecityid:81 }" data-act="cityChange-click">淄博</a><a class="js-city-name" data-ci="108" data-val="{ choosecityid:108 }" data-act="cityChange-click">珠海</a><a class="js-city-name" data-ci="113" data-val="{ choosecityid:113 }" data-act="cityChange-click">中山</a><a class="js-city-name" data-ci="125" data-val="{ choosecityid:125 }" data-act="cityChange-click">张家口</a><a class="js-city-name" data-ci="190" data-val="{ choosecityid:190 }" data-act="cityChange-click">舟山</a><a class="js-city-name" data-ci="182" data-val="{ choosecityid:182 }" data-act="cityChange-click">镇江</a><a class="js-city-name" data-ci="222" data-val="{ choosecityid:222 }" data-act="cityChange-click">枣庄</a><a class="js-city-name" data-ci="209" data-val="{ choosecityid:209 }" data-act="cityChange-click">漳州</a><a class="js-city-name" data-ci="248" data-val="{ choosecityid:248 }" data-act="cityChange-click">驻马店</a><a class="js-city-name" data-ci="247" data-val="{ choosecityid:247 }" data-act="cityChange-click">周口</a><a class="js-city-name" data-ci="278" data-val="{ choosecityid:278 }" data-act="cityChange-click">湛江</a><a class="js-city-name" data-ci="280" data-val="{ choosecityid:280 }" data-act="cityChange-click">肇庆</a><a class="js-city-name" data-ci="263" data-val="{ choosecityid:263 }" data-act="cityChange-click">株洲</a><a class="js-city-name" data-ci="269" data-val="{ choosecityid:269 }" data-act="cityChange-click">张家界</a><a class="js-city-name" data-ci="318" data-val="{ choosecityid:318 }" data-act="cityChange-click">资阳</a><a class="js-city-name" data-ci="302" data-val="{ choosecityid:302 }" data-act="cityChange-click">自贡</a><a class="js-city-name" data-ci="323" data-val="{ choosecityid:323 }" data-act="cityChange-click">遵义</a><a class="js-city-name" data-ci="333" data-val="{ choosecityid:333 }" data-act="cityChange-click">昭通</a><a class="js-city-name" data-ci="366" data-val="{ choosecityid:366 }" data-act="cityChange-click">张掖</a><a class="js-city-name" data-ci="386" data-val="{ choosecityid:386 }" data-act="cityChange-click">中卫</a><a class="js-city-name" data-ci="426" data-val="{ choosecityid:426 }" data-act="cityChange-click">涿州</a><a class="js-city-name" data-ci="419" data-val="{ choosecityid:419 }" data-act="cityChange-click">张家港</a><a class="js-city-name" data-ci="474" data-val="{ choosecityid:474 }" data-act="cityChange-click">增城</a><a class="js-city-name" data-ci="468" data-val="{ choosecityid:468 }" data-act="cityChange-click">诸暨</a><a class="js-city-name" data-ci="465" data-val="{ choosecityid:465 }" data-act="cityChange-click">章丘</a><a class="js-city-name" data-ci="508" data-val="{ choosecityid:508 }" data-act="cityChange-click">邹平</a><a class="js-city-name" data-ci="494" data-val="{ choosecityid:494 }" data-act="cityChange-click">枣阳</a><a class="js-city-name" data-ci="558" data-val="{ choosecityid:558 }" data-act="cityChange-click">庄河</a><a class="js-city-name" data-ci="526" data-val="{ choosecityid:526 }" data-act="cityChange-click">诸城</a><a class="js-city-name" data-ci="612" data-val="{ choosecityid:612 }" data-act="cityChange-click">钟祥</a><a class="js-city-name" data-ci="586" data-val="{ choosecityid:586 }" data-act="cityChange-click">招远</a><a class="js-city-name" data-ci="591" data-val="{ choosecityid:591 }" data-act="cityChange-click">遵化</a><a class="js-city-name" data-ci="654" data-val="{ choosecityid:654 }" data-act="cityChange-click">枝江</a><a class="js-city-name" data-ci="671" data-val="{ choosecityid:671 }" data-act="cityChange-click">樟树</a><a class="js-city-name" data-ci="663" data-val="{ choosecityid:663 }" data-act="cityChange-click">漳浦</a><a class="js-city-name" data-ci="757" data-val="{ choosecityid:757 }" data-act="cityChange-click">正定</a><a class="js-city-name" data-ci="821" data-val="{ choosecityid:821 }" data-act="cityChange-click">中牟</a><a class="js-city-name" data-ci="891" data-val="{ choosecityid:891 }" data-act="cityChange-click">准格尔旗</a><a class="js-city-name" data-ci="858" data-val="{ choosecityid:858 }" data-act="cityChange-click">柘城</a><a class="js-city-name" data-ci="834" data-val="{ choosecityid:834 }" data-act="cityChange-click">邹城</a><a class="js-city-name" data-ci="841" data-val="{ choosecityid:841 }" data-act="cityChange-click">赵县</a><a class="js-city-name" data-ci="1007" data-val="{ choosecityid:1007 }" data-act="cityChange-click">织金</a><a class="js-city-name" data-ci="997" data-val="{ choosecityid:997 }" data-act="cityChange-click">芷江</a><a class="js-city-name" data-ci="985" data-val="{ choosecityid:985 }" data-act="cityChange-click">周至</a><a class="js-city-name" data-ci="1093" data-val="{ choosecityid:1093 }" data-act="cityChange-click">资兴市</a><a class="js-city-name" data-ci="1140" data-val="{ choosecityid:1140 }" data-act="cityChange-click">扎兰屯市</a><a class="js-city-name" data-ci="1048" data-val="{ choosecityid:1048 }" data-act="cityChange-click">漳平</a><a class="js-city-name" data-ci="1179" data-val="{ choosecityid:1179 }" data-act="cityChange-click">忠县</a><a class="js-city-name" data-ci="1196" data-val="{ choosecityid:1196 }" data-act="cityChange-click">柘荣</a><a class="js-city-name" data-ci="1200" data-val="{ choosecityid:1200 }" data-act="cityChange-click">中江县</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>



            <div class="nav">
                <ul class="navbar">
                    <li><a href="${pageContext.request.contextPath }/IndexCtrl" data-act="home-click">首页</a></li>
                    <li><a href="${pageContext.request.contextPath }/IndexCtrl" data-act="movies-click" class="active">电影</a></li>
                    <li><a href="${pageContext.request.contextPath }/QueryCinemaCtrl" data-act="cinemas-click">影院</a></li>
                    <li><a href="${pageContext.request.contextPath }/QueryMovieBoardCtrl" data-act="board-click">榜单</a></li>
                    <li><a href="${pageContext.request.contextPath }/hotIndex.jsp" data-act="hotNews-click">热点</a></li>
                </ul>
            </div>
            <div class="user-info">
                <div class="user-avatar J-login">
                    <img src="../images/7dd82a16316ab32c8359debdb04396ef2897.png">
                    <span class="caret"></span>
                    <ul class="user-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/IndexCtrl">登录</a>
                        </li>
                    </ul>

                </div>
            </div>

            <form action="/query" target="_blank" class="search-form" data-actform="search-click">
                <input name="kw" class="search" type="search" maxlength="32" placeholder="找影视剧、影人、影院" autocomplete="off">
                <input class="submit" type="submit" value>
            </form>


            <div class="app-download">
                <a href="" target="_blank">
                    <span class="iphone-icon"></span>
                    <span class="apptext">APP下载</span>
                    <span class="caret"></span>
                    <div class="download-icon">
                        <p class="down-title">扫码下载APP</p>
                        <p class="down-content">选座更优惠</p>
                    </div>
                </a>
            </div>
        </div>
    </div>

  <div class="header-placeholder"></div>

<!--导航栏-->

      <div class="subnav">
          <ul class="navbar">
              <li><a class="active" href="play_now.jsp">正在热映</a></li>
              <li><a href="movieCtrl">即将上映</a></li>
              <li><a href="classic_movies.jsp">经典影片</a></li>
          </ul>
      </div>
<!--内容-->
<div class="container" id="app">
    <div class="movies-channel">
        <div class="tags-panel">
            <ul class="tags-lines">
                <li class="tags-line" data-val="{tagTypeName:'cat'}">
                    <div class="tags-title">类型 :</div>
                    <ul class="tags">
                        <li class="active" data-state-val="{ catTagName:'全部'}">
                            <a style="cursor: default">全部</a>
                        </li>
                        <li>
                            <a>爱情</a>
                        </li>
                        <li>
                            <a>喜剧</a>
                        </li>
                        <li>
                            <a>动画</a>
                        </li>
                        <li>
                            <a>剧情</a>
                        </li>
                        <li>
                            <a>恐怖</a>
                        </li>
                        <li>
                            <a>惊悚</a>
                        </li>
                        <li>
                            <a>科幻</a>
                        </li>
                        <li>
                            <a>动作</a>
                        </li>
                        <li>
                            <a>悬疑</a>
                        </li>
                        <li>
                            <a>犯罪</a>
                        </li>
                        <li>
                            <a>冒险</a>
                        </li>
                        <li>
                            <a>战争</a>
                        </li>
                        <li>
                            <a>奇幻</a>
                        </li>
                        <li>
                            <a>运动</a>
                        </li>
                        <li>
                            <a>家庭</a>
                        </li>
                        <li>
                            <a>古装</a>
                        </li>
                        <li>
                            <a>武侠</a>
                        </li>
                        <li>
                            <a>西部</a>
                        </li>
                        <li>
                            <a>历史</a>
                        </li>
                        <li>
                            <a>传记</a>
                        </li>
                        <li>
                            <a>歌舞</a>
                        </li>
                        <li>
                            <a>黑色电影</a>
                        </li>
                        <li>
                            <a>短片</a>
                        </li>
                        <li>
                            <a>纪录片</a>
                        </li>
                        <li>
                            <a>其他</a>
                        </li>
                    </ul>
                </li>
                <li class="tags-line tags-line-border" data-val="{tagTypeName:'source'}">
                    <div class="tags-title">区域 :</div>
                    <ul class="tags">
                        <li class="active" data-state-val="{ sourceTagName:'全部'}">
                            <a data-act="tag-click" data-val="{TagName:'全部'}" href="javascript:void(0);" style="cursor: default">全部</a>
                        </li>
                        <li>
                            <a>大陆</a>
                        </li>
                        <li>
                            <a>美国</a>
                        </li>
                        <li>
                            <a>韩国</a>
                        </li>
                        <li>
                            <a>日本</a>
                        </li>
                        <li>
                            <a>中国香港</a>
                        </li>
                        <li>
                            <a>中国台湾</a>
                        </li>
                        <li>
                            <a>泰国</a>
                        </li>
                        <li>
                            <a>印度</a>
                        </li>
                        <li>
                            <a>法国</a>
                        </li>
                        <li>
                            <a>英国</a>
                        </li>
                        <li>
                            <a>俄罗斯</a>
                        </li>
                        <li>
                            <a>意大利</a>
                        </li>
                        <li>
                            <a>西班牙</a>
                        </li>
                        <li>
                            <a>德国</a>
                        </li>
                        <li>
                            <a>波兰</a>
                        </li>
                        <li>
                            <a>澳大利亚</a>
                        </li>
                        <li>
                            <a>伊朗</a>
                        </li>
                        <li>
                            <a>其他</a>
                        </li>
                    </ul>
                </li>
                <li class="tags-line tags-line-border">
                    <div class="tags-title">年代 :</div>
                    <ul class="tags">
                        <li class="active">
                            <a  style="cursor: default">全部</a>
                        </li>
                        <li>
                            <a>2018以后</a>
                        </li>
                        <li>
                            <a>2018</a>
                        </li>
                        <li>
                            <a>2017</a>
                        </li>
                        <li>
                            <a>2016</a>
                        </li>
                        <li>
                            <a>2015</a>
                        </li>
                        <li>
                            <a>2014</a>
                        </li>
                        <li>
                            <a>2013</a>
                        </li>
                        <li>
                            <a>2012</a>
                        </li>
                        <li>
                            <a>2011</a>
                        </li>
                        <li>
                            <a>2000-2010</a>
                        </li>
                        <li>
                            <a>90年代</a>
                        </li>
                        <li>
                            <a>80年代</a>
                        </li>
                        <li>
                            <a>70年代</a>
                        </li>
                        <li>
                            <a>更早</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="movies-panel">
            <div class="movies-sorter">
                <div class="cat-sorter">
                    <ul>
                        <li>

                    <span class="sort-control-group">
                         <span class="sort-control sort-radio sort-radio-checked" onclick="currentRadio(0);"></span>
                        <span class="sort-control-label">按热门排序</span>
                    </span>

                        </li>
                        <li>

                        <span class="sort-control-group">
                              <span class="sort-control sort-radio" onclick="currentRadio(1);"></span>
                              <span class="sort-control-label">按时间排序</span>
                        </span>

                        </li>
                        <li>

                  <span class="sort-control-group">
                       <span class="sort-control sort-radio" onclick="currentRadio(2);"></span>
              <span class="sort-control-label">按评价排序</span>
                  </span>

                        </li>
                    </ul>
                </div>

            </div>
            <div class="movies-list">

                <div class="no-movies">
                    抱歉，没有找到相关结果，请尝试用其他条件筛选。
                </div>

            </div>

            </div>
            <div class="movies-pager">

            </div>
        </div>
    </div>
</div>
<div class="footer" style="visibility: visible;">
    <p class="friendly-links">
        商务合作邮箱：v@maoyan.com
        客服电话：10105335
        违法和不良信息举报电话：4006018900
        <br>
        投诉举报邮箱：tousujubao@meituan.com
        舞弊线索举报邮箱：wubijubao@maoyan.com
    </p>
    <p class="friendly-links">
        友情链接 :
        <a href="http://www.meituan.com" data-query="utm_source=wwwmaoyan" target="_blank">美团网</a>
        <span></span>
        <a href="http://i.meituan.com/client" data-query="utm_source=wwwmaoyan" target="_blank">美团下载</a>
    </p>
    <p>
        ©2016
        猫眼电影 maoyan.com
        <a href="https://tsm.miit.gov.cn/pages/EnterpriseSearchList_Portal.aspx?type=0&amp;keyword=京ICP证160733号&amp;pageNo=1" target="_blank">京ICP证160733号</a>
        <a href="http://www.miibeian.gov.cn" target="_blank">京ICP备16022489号-1</a>
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102003232" target="_blank">京公网安备 11010102003232号</a>
        <a href="/about/licence" target="_blank">网络文化经营许可证</a>
        <a href="http://www.meituan.com/about/rules" target="_blank">电子公告服务规则</a>
    </p>
    <p>北京猫眼文化传媒有限公司</p>
</div>
</body>
</html>