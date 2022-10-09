<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 상품페이지 </title>
<!--summernote jquery  -->
 <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
 <!-- bootStrap -->	
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

 <style>
    #header { position: relative; background-color:#ffffff;}
    *:focus { outline:none;} 
    
    #wrap{margin:0px;padding:0px ;background-color:#fff}
    .layout_inner{position:relative;width:1050px; margin:0px auto; }
    /*top_menu*/
    .top_menu{ width:100%;height:37px; border-bottom:solid 1px #DCDCDC; background-color:#FFFFFF;}
    .top_menu .left_menu {float:left; overflow:hidden; margin-top:12px;}
    .top_menu .left_menu .btn {line-height:1.6; padding: 0 12px 0 11px; float:left; font-size:12px; color:#666;}
    .top_menu .left_menu .btn:hover {color:#f64356;}
    .top_menu .left_menu .btn:first-child {padding-left:0;}
    .top_menu .left_menu .line {float:left; width:1px; height:10px; margin-top:2px; background:#d8d8da; }
    
    .top_menu .right_menu {position:absolute; right:0px; top:0px; margin-top:12px;z-index:100;}
    .top_menu .right_menu .no {overflow:hidden;float:left;line-height:1.6;padding: 0 11px; font-size:12px; color:#666;}
    .top_menu .right_menu .no:hover {color:#f64356;}
    .top_menu .right_menu .ic {padding-left: 25px; background:transparent url('/skin/demo01/img/mobile_icon.png') 10px 2px no-repeat;}
    .top_menu .right_menu .ic:hover {background:transparent url('/skin/demo01/img/mobile_icon_on.png') 10px 2px  no-repeat;}
    .top_menu .right_menu .line {float:left; width:1px; height:10px; margin-top:2px; background:#d8d8da; }
    
    
    .top_menu .right_menu .sub_menu {float:left; position:relative;}
    .top_menu .right_menu .sub_menu .over {display:none; position:absolute; background:#fff; border: 1px solid #f64356; border-top:none;width:100%; margin-top:25px;  left:-1px; top:0; }
    .top_menu .right_menu .sub_menu .tit {position:relative; float:left; margin-top:-8px; padding: 8px 22px 8px 12px;}
    .top_menu .right_menu .sub_menu .tit .txt { float:left;line-height:1.6;font-size:12px; color:#666;}
    .top_menu .right_menu .sub_menu .tit .tit_icon {display:inline-block;position:absolute; background:transparent url('/skin/demo/img/sub_dot.png') 0px 0px no-repeat; width:13px; height:13px; right:0px; top:50%; margin: -9px 3px 0 0;}
    
    .top_menu .right_menu .sub_menu:hover .tit {border:1px solid #f64356; border-bottom:none;margin: -9px -1px 0 -1px}
    .top_menu .right_menu .sub_menu:hover .tit .txt {color:#f64356;}
    .top_menu .right_menu .sub_menu:hover .tit_icon {background:transparent url('/skin/demo/img/sub_dot_on.png') 0px 0px no-repeat;}
    .top_menu .right_menu .sub_menu:hover .over {display:block}
    
    .top_menu .right_menu .sub_menu .sub_btn {padding: 8px 0 6px 0; border-bottom:dashed 1px #DCDCDC; display:block; text-align:center; font-size:12px;letter-spacing:-1px;; color:#666;;}
    .top_menu .right_menu .sub_menu .sub_btn:hover {background: #f7f7f7; color:#f64356}
    .top_menu .right_menu .sub_menu .sub_btn:first-child {padding-top: 10px;}
    .top_menu .right_menu .sub_menu .sub_btn:last-child {padding-bottom: 10px; border-bottom:none;}
    
    
    
    .top_menu .right_menu .btn_cart {position:relative; margin-top:-1px; padding: 0px 7px 0px 36px; float:left; background:transparent url('/skin/demo/img/cartbg.png') 12px 3px no-repeat;}
    .top_menu .right_menu .btn_cart .txt {line-height:1.6; float:left; font-size:11px; color:#666; letter-spacing:-1px; margin: 1px 3px 0 0;}
    .top_menu .right_menu .btn_cart .cart_num {float:left; position:relative; height: 12px; padding-right:1px;color:#FFF; margin-top:0px; font-size:11px; font-family:roboto; background-color:#f64356; border-radius:10px; padding:3px 5px;}
    
    
    
    .top_menu .right_menu .btn_cart .end {width:6px; height:16px; margin-right:-6px; position:absolute; top:0; right:0;}
    .top_menu .right_menu .btn_cart:hover .txt {color:#f64356}
    
    
    #header .top_menu .top_menu_wrap .left .app{ display:inline-block; *zoom:1; *display:inline;  height:25px;width:15px; background:url("./skin/demo/img/app.png") -0px -0px no-repeat; vertical-align:-8px; margin-right:5px;}
    
    #msgbox{display:none; position:absolute; top:25px; left:75%;width:250px; height:200px; z-index:1000; transform:translateX(-50%); font-size:12px; text-align:center;}
    #msgbox .arrow{position:absolute;top:-11px;}
    #msgbox .mesbox{background-color:#fff; border:solid 1px #f64356;}
    #msgbox .mesbox .txtlink{display:block; border-bottom:solid 1px #efefef; padding:7px 5px; text-align:left;}
    #msgbox .mesbox .txtlink p{color:#565656; line-height:25px;}
    #msgbox .mesbox .txtlink span{color:#888888; font-size:11px; letter-spacing:0px;}
    #msgbox .nomgs{height:120px; line-height:120px;  background-color:#fff; border:solid 1px #f64356; }
    #msgbox  .moremgs{display:block; height:30px; background-color:#f64356; border:solid 1px #f64356; font-size:14px; line-height:30px; font-size:11px; color:#FFF;}
    


    #header .gnb_logo_section { width:100%;  border-bottom:solid 1px #efefef; }
        #header .gnb_logo_section .inner{ position:relative; overflow:hidden; width:1139px; height: 81px; margin:0 auto;  } 
        #header .gnb_logo_section .inner .logo{ float:left;margin-top:20px; width:200px; overflow:hidden;}
        #header .gnb_logo_section .inner .logo img{float:left;}
        #header .gnb_logo_section .inner .gnb_menu { float:left; height:48px; margin-top:20px; width:600px; margin-left:20px; }
        #header .gnb_logo_section .inner .gnb_menu ul { position:relative; }
        #header .gnb_logo_section .inner .gnb_menu li { float:left; color:#fffffff;  text-align:center; margin:0px; padding:0px 0px;}
        #header .gnb_logo_section .inner .gnb_menu li a { display:block; color:#000;  padding: 11px 12px 0; font-size: 17px; font-family:'nskl';  height: 36px; text-align:center; letter-spacing:0; cursor:pointer; }
        #header .gnb_logo_section .inner .gnb_menu li a.on { color:#f64356;   }
        #header .gnb_logo_section .inner .gnb_menu li a:hover{ text-decoration:none; color:#f64356; }
        #header .gnb_logo_section .inner .gnb_menu li a { position:relative;}
        #header .gnb_logo_section .inner .gnb_menu .plus:after{position:absolute; content:""; display:block; clear:both; top:12px; right:-18px; background:url('/skin/demo/img/plus.png') no-repeat;width:30px; height:21px;}
        
        #header .gnb_logo_section .inner .search { float:right; position:relative; overflow:hidden; border:none; height:39px; width:271px; margin-top:25px;  border:solid 1px #efefef; border-radius:50px;}
        #header .gnb_logo_section .inner .search .search_in{height:40px; line-height:40px;background:transparent; outline:none;padding: 0px 14px;width:330px;color:#666;border:0px; font-size:13px;}
        #header .gnb_logo_section .inner .search .ser_btn{ position:absolute;width:20px;height:20px;top:10px;right:20px;}
        
        .rankingnum{display:inline-block; width:15px; height:15px; border:solid 1px #a1a1a1; text-align:center; margin-right:10px; line-height:14px;}
        

        .review_order_popup {position:fixed; top:0; left:0; right:0; bottom:0; width:100%; height:100%; z-index:1000; display:none; }
        .review_order_popup .review_order_popup_bg { position:absolute;top:0;left:0;width:100%;height:100%;background:#000;opacity:.5;filter:alpha(opacity=50)}
        .review_order_popup_fg { z-index:9999; position:absolute;top:0px;left:50%;width:1013px;height:392px;margin:0px 0 0 -507px;}
        
        .sub_item_wrap{ padding:0px; width:1146px; overflow:hidden; margin-top:53px; background-color:#fff;  }
        .item_thum{ float:left; position:relative;  min-height:437px; text-align:center;  width:530px;}
        .item_info { float:left; position:relative; display:block; width:611px;min-height:554px; }
        .item_info .sns{display:block;height:16px;}
        
        .item_info .blog{background:url('/skin/demo/img/blog_ico2.png')no-repeat;}
        .item_info .insta{background:url('/skin/demo/img/insta_ico2.png')no-repeat;}
        .item_info .cafe{background:url('/skin/demo/img/cafe_ico2.png')no-repeat;}
        .item_info .plus{background:url('/skin/demo/img/tory_gogo.png')no-repeat;}
        
        
        .item_info_left{ float:left; }
        .title{display:block; font-size:15px; line-height:69px; text-align:center;}
        
        .item_info_gu{ float:left; font-size:18px; line-height:30px; font-weight:800; letter-spacing:-px;}
        .color_txt{color:#e84250; font-weight:normal;}
        .item_info_time { float:left; font-size:15px; line-height:69px; margin-left:15px; text-align:center;letter-spacing:-px;}
        
        .item_info_right{ float:right; text-align:left; margin-right:156px; overflow:hidden; }
        
        .item_btn{ background: url('./skin/demo/img/btn_deal.png'); cursor: pointer;}
        
        .item_btn_cart{  display:inline-block;  background-position:-209px -0px; width:209px;height:88px;}
        .item_btn_buy{  display:inline-block; background-position:-0px -0px; width:209px;height:88px;}
        
        .item_btn_cart:hover{ background-position:-209px -88px; width:209px;height:88px;}
        .item_btn_buy:hover{  background-position:-0px -88px; width:209px;height:88px;}
        
        
        
        
        .item_detail { display:block; width:100%; margin-top:35px; }
        
        
        .item_detail_left { width:100%; } 
        
        .relation_tit { margin-left:10px; display:block; width:180px; height:50px; line-height:50px; text-align:center; background-color:#555555; color:#fff; font-size:15px; font-weight:bold; }
        .relation_list { margin-left:10px; width:178px; border:solid 1px #ccc; padding-bottom:10px; }
        .relation_list a { display:block; width:158px; text-align:left; margin:0 auto; }
        .relation_list img { width:156px; border:solid 1px #ccc; margin-top:10px; margin-bottom:5px; }
        .relation_list p {  }
        .relation_list b { font-size:11px; letter-spacing:-1px; color:#059bff; }
        .relation_list span { font-size:11px; letter-spacing:-1px; color:#999; font-family:'돋움',dotum,sans-serif; }
        
        
        .active a { color:#e43b0d }
        
        .tab-cont { display:none; width:1146px;  overflow:hidden; background-color:#fff;  border-top:none; } 
        
        #tab1 { display:block; }
        
        .subpath { width: 100%;   margin:20px auto 0px; position:relative; font-size:14px; line-height:14px;}
        .subpath .inp { border:solid 1px #e6e6e6; color:#00000; height:34px;}
        .subpath img {  vertical-align:-3px;}
        
        
        .item_info .review_wrap{ height:92px;border:solid 1px #e2e2e2; margin-top:40px;overflow:hidden;}
        .item_info .review_wrap .next{line-height:92px;float:left;}
        .item_info .review_wrap .box{display:block; width:30%; height:92px;position:relative; float:left;}
        .item_info .review_wrap .box .icon{display:block; width:41px; height:37px;position:absolute;top:30px; left:20px;}
        .item_info .review_wrap .box .pro1{background:url(/skin/demo/img/pross1.png);}
        .item_info .review_wrap .box .pro2{background:url(/skin/demo/img/pross2.png);}
        .item_info .review_wrap .box .pro3{background:url(/skin/demo/img/pross3.png);}
        .item_info .review_wrap .box .text{display:block;padding-left:70px; padding-top:30px; font-size:15px;}
        .item_info .review_wrap .box .text em{display:block; color:#e84250; margin-bottom:5px;}
        .item_info .review_wrap .box .text b{display:block; font-weight:normal; color:#686868;}
        
        
        .item_info .time_wrap{overflow:hidden; line-height:69px; padding:0px 20px; background-color:#f8f8f8; border-left:solid 1px #e2e2e2; border-right:solid 1px #e2e2e2;border-bottom:solid 1px #e2e2e2;height:69px;}
        .item_info .time_wrap .left{float:left; width:46%; text-align:left;}
        .item_info .time_wrap .right{float:left; width:52%; text-align:center;line-height:69px;}
        
        .campain_tit{display:inline-block; margin-top:20px; border:solid 1px #ec253a; color:#ec253a; padding:5px 10px;}
        .campain_wrap{width:489px; min-height:60px; line-height:20px; padding:10px; color:#333; font-size:12px;}
        .campain_wrap em{font-size:5px;}
        
        /* 상품대표이미지 */
        #it_img_m {  display:block; width:500px; height:500px; border-radius:10px; }
        
        /* 상품기타이미지 */
        .it_img_thumb { margin:0px; padding:0px; display:block; margin-top:20px; }
        .it_img_thumb li{ margin:0px; padding:0px; display:inline; }
        .it_img_s { width:100px; height:100px; cursor:pointer; border:solid 1px #eeeeee;  border-radius:10px;}
        .it_img_s_on{ border:solid 1px #d32f2f; }
        
        
        .itname{ font-size:27px; line-height:30px; letter-spacing:-1px; color:#212121;  display:block; margin:20px 0px; }
        .item_info .del{ background-color:#f59900; padding:3px 10px; color:#000000; font-size:12px; font-weight:bold; letter-spacing:-1px;}
        
        .item_info .itarea{ font-size:22px; line-height:16px;  color:#ff6262; display:block; margin-top:0px; letter-spacing:-1px;}
        .item_info .itdes{display:block;height:60px; font-size:16px; color:#666; line-height:18px;}
        .item_info .itdisco{position:absolute;top:-10px; display:block; font-size:40px; color:#ffffff; line-height:85px; font-weight:bold;margin-top:0px; text-align:center; width:85px;height:85px; background:url('./skin/demo/img/ratebg.png') no-repeat 0 0;}
        .item_info .itdisco span { font-size:25px; color:#ffffff; line-height:30px; font-weight:bold;margin-top:0px;}
        .item_info .price1{display:block; font-size:16px; color:#aaaaaa; line-height:20px; font-weight:bold;margin-top:30px;text-decoration: line-through; }
        .item_info .price2{display:block; font-size:40px; color:#fd5426; line-height:45px; font-weight:bold;margin-top:0px; letter-spacing:-1px; }
        
        
        
        
        
        
        #btn_zzim { cursor:pointer; }
        #btn_order { cursor:pointer; }
        
        .btn_wrap{margin:20px 0px; text-align:left; height:66px; overflow:hidden;}
        .btn_wrap li{float:left;}
        .btn_wrap li:nth-child(2){margin-left:5px; float:right}
        .btn_wrap .review_req{display:inline-block;position:relative; width:385px; height:64px; line-height:64px;border:solid 1px #ec253a;}
        .btn_wrap .review_req .text{color:#ec253a;display:block; padding:23px 50px; line-height:18px; font-size:16px;} 
        .btn_wrap .review_req .text img{vertical-align:-3px; margin-right:10px;}
        .btn_wrap .scrap_btn{ display:inline-block; position:relative;width:213px; height:64px; line-height:64px;border:solid 1px #ec253a; background-color:#ec253a;}
        .btn_wrap .scrap_btn .text{color:#fff;display:block; padding:23px 20px; line-height:18px; font-size:16px;} 
        .btn_wrap .scrap_btn .text img{vertical-align:-3px; margin-right:10px;}
        .btn_wrap .scrap_btn_on{ display:inline-block; position:relative; width:213px; height:64px;line-height:64px; border:solid 1px #ec253a; background-color:#ec253a;}
        .btn_wrap .scrap_btn_on .text{color:#ffff00;display:block; padding:23px 20px; line-height:18px; font-size:16px;} 
        .btn_wrap .scrap_btn_on .text img{vertical-align:-3px; margin-right:10px;}
        .btn_wrap .cnt_box{position:absolute; top:0px; right:0px;display:block;width:69px;height:64px;line-height:64px; text-align:center; font-size:16px;}
        .border1{border-left:solid 1px #ec253a;}
        .border2{border-left:solid 1px #fff}
       
        <div class="review_order_popup">
            <div class="review_order_popup_bg"></div>
        </div>
        
        <div class="review_order_popup_fg review_order_popup">
        .application_wrap{ width:1013px; padding:30px; background-color:#FFF;border-radius:3px; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; position:relative; }
        .application_wrap .close{ position:absolute; right:-20px; top:-20px;}
        .application_tbl{width:100%;}
        .application_tbl th{font-weight:normal; padding:8px 10px; text-align:left; font-size:14px;}
        .application_tbl td{padding:8px 25px; text-align:left; color:#666;}
        .application_tbl .line{border-bottom:solid 1px #DCDCDC; width:100%;margin:10px 0px 10px 0px; height:1px;}
        .application_wrap .bloginput{padding:0px 10px;height:35px; line-height:35px; border: solid 1px #515b6b; background-color:#515b6b; color:#FFFFFF; border-radius:3px; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box;}
        .application_wrap .bloginput2{padding:0px 10px;height:35px; line-height:35px;background-color:#f4f4f4; border:solid 1px #dcdcdc; color:#666; border-radius:3px; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box;}
        .application_wrap .box{border:solid 1px #dcdcdc; background-color:#f4f4f4;padding:20px;}
        .blogtxt{background-color:#f4f4f4;color:#666; border:solid 1px #dcdcdc; width:100%;padding:10px;height:50px; border-radius:3px; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box;}
        .btn01{display:inline-block;padding:0px 10px; color:#FFFFFF; border: solid 1px #515b6b; background-color:#515b6b;  line-height:33px;  border-radius:3px; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box;}
        .btn01:hover{color:#FFFFFF;}
        
        .box_tbl{width:100%; border:solid 1px #DCDCDC; background-color:#FFFFFF;}
        .box_tbl th {font-weight:bold;color:#666; padding:15px 15px; background-color:#f4f4f4; border-right:solid 1px #DCDCDC; border-bottom:solid 1px #DCDCDC;}
        .box_tbl td {color:#666; padding:15px 15px; border-right:solid 1px #DCDCDC; border-bottom:solid 1px #DCDCDC; line-height:20px;} 
        
    </style> 


</head>
<body>
    <body>

        <div class="mb-3">
		
		<a href= "./update?num=${dto.itemNum}" class="btn btn-primary">상품 수정</a>
       <a href="./delete?num=${dto.itemNum}" class="btn btn-danger">상품 삭제</a>
	</div>
        <!-- wrap -->
        <div id="wrap">
        
        <div class="top_menu">
                <div class="layout_inner">
                    <div class="left_menu">
                    <a href="javascript:nfor_favorite()" class="btn">즐겨찾기</a>
                    <!-- <span class="line"></span>
                    <a href="end_item_list.php" class="btn">종료된 캠페인 <span class="tit_icon"></span></a> -->
                    <span class="line"></span>
                                              <a href="notice_list.php" class="btn">공지사항 <span class="tit_icon"></span></a>
                                              
                     
                                              </div>
                    <div class="right_menu">
            
                
                        <span class="line"></span>
                                        <a href="receive_message.php" class="btn_cart" id="msgboxwrap"><span class="txt">알림</span><b class="cart_num">0 </b> &nbsp;&nbsp;</a>
                        
                        
                        <div id="msgbox">
                        
                                <div class="arrow"><img src="./skin/demo/img/serarrow.png"></div>
                                
                                                        <div class="nomgs">신규 메시지가 없습니다</div>
                                
                                <a href="receive_message.php" class="moremgs">더보기</a>
                
                
                        </div>
                        <script type="text/javascript">
                        <!--
                        $(document).ready(function() {
                            $('#msgboxwrap').mouseover(function() {
                                $("#msgbox").show();  
                            });
                            $('#msgboxwrap').mouseout(function() {
                                $("#msgbox").hide();  
                            });
        
                            $('#msgbox').mouseover(function() {
                                $("#msgbox").show();
                            });
        
                            $('#msgbox').mouseout(function() {
                                $("#msgbox").hide();
                            });
                        });
                        //-->
                        </script>	
        
            <!-- header -->
            <div id="header">

        <!-- 리뷰어신청하기 -->
        
        
        
        
        
        <script type="text/javascript">
        <!--
            $(function(){
        
                $(".it_img_s").click(function () {
                    $(".it_img_s").removeClass("it_img_s_on");
                    $(this).addClass("it_img_s_on");
                    $("#it_img_m").attr("src",$(this).attr("src"));
                });
        
            })
        
        //-->
        </script>
        
        
        
        
        <div class="sub_container">
            <div class="sub_item_wrap">
            
        
        
                <div class="item_thum">
        
        
        
                    <img id="it_img_m" src="../../../resources/images/1028809410_njQmFcpu_1.png">
        
                    <ul class="it_img_thumb">
                                <li><img src="/resources/images/1028809410_njQmFcpu_1.png" class="it_img_s it_img_s_on"></li>
                                <li><img src="resources/images/1028809410_EoluL1P8_4.png" class="it_img_s "></li>
                                <li><img src="resources/images/1028809410_pFTg8PNk_3.png" class="it_img_s "></li>
                                <li><img src="resources/images/1028809410_pFTg8PNk_3.png" class="it_img_s "></li>
                                </ul>
                </div>
                <div class="item_info">
                    <div class="sns blog"></div>
                    <div class="itname fotr"> <span style="color:#55caca">${dto.itemCategory} </span>${dto.itemTitle}</div>
                    <span class="itdes">#남녀노소 #모두가 좋아하는 #건강 간식 </span>
        
                    <div class="btn_wrap">
                        <ul>
        
                            
                                                <li>
                                <a class="review_req" id="btn_order">
        
        
        
                                                                <span class="text"><img src="/skin/demo/img/btn_img1.png">리뷰 신청하기</span>
                                    
                                    <span class="cnt_box border1">
                                        <strong style="color:#ec253a;" id="review_btn_cnt">61</strong>
                                    </span>
                                </a>
                            </li>
                            
        
        
                            <li>
                            <a class="scrap_btn" id="btn_zzim">
                                <span class="text"><img src="/skin/demo/img/btn_img2.png">좋아요</span>
                                <span class="cnt_box border2">
                                    <strong style="color:#fff;">0</strong>
                                </span>
                            </a>
                            </li>
                        </ul>
                    </div>
                    <div class="review_wrap">
        
        
                            
                            <div class="box">
                                <span class="icon pro1"></span>
                                <span class="text">
                                    <em>리뷰어 신청</em> 
                                    <b>09.29 ~ 10.06</b>
                                </span>
                            </div>
        
                            <span class="next"><img src="skin/demo/img/next_icon.png"></span>
        
                            <div class="box">
                                <span class="icon pro2"></span>
                                <span class="text">
                                    <em>리뷰어 선정</em> 
                                    <b>10.07</b>
                                </span>
                            </div>
        
                            <span class="next"><img src="skin/demo/img/next_icon.png"></span>
        
                            <div class="box">
                                <span class="icon pro3"></span>
                                <span class="text">
                                <em>리뷰등록</em> 
                                <b>10.08 ~ 10.29</b>
                            </span></div>
        
                            
                    </div>
                    <div class="time_wrap">
                        <div class="left">
                            <span class="title">신청인원<b class="color_txt">61</b>/10 명</span>	
                        </div>
                        <div class="right">
        
        
                            
        
                                                        
                                   <!--  <script type="text/javascript">
                                    $(function (){ 
                                    var austDay = new Date(1665068399000);
                                        $('#countdown').countdown({until: austDay,  layout: "남은기간<b class='color_txt'>2</b>일 <b class='color_txt'>{hnn}</b>시간 <b class='color_txt'>{mnn}</b>분 <b class='color_txt'>{snn}</b>초" });
                                    });
                                    </script> -->
        
                                    <div class="item_info_time hasCountdown" id="countdown">남은기간<b class="color_txt">2</b>일 <b class="color_txt">06</b>시간 <b class="color_txt">41</b>분 <b class="color_txt">07</b>초</div>
        
        
                                
        
                            
                        </div>
        
                    </div>
                  <span class="campain_tit">캠페인 안내</span>
                  <div class="campain_wrap">
                    <p>
                            <span style="font-size: 16px">업체주소 | <a href="https://smartstore.naver.com/turkuaz" target="_blank">https://smartstore.naver.com/turkuaz</a></span>
        </p>
        <p>&nbsp;</p>
        <p>
                            <span style="font-size: 16px">제공내역 | <a href="https://smartstore.naver.com/turkuaz/products/4503793209" target="_blank">터키 도자기 냄비받침 (3종)</a>+<a href="https://smartstore.naver.com/turkuaz/category/acfc2da0297949b594002b73caa34d77?cp=1" target="_blank">컵받침 (2종)</a></span>
        </p>
        <p>
                            <span style="font-size: 16px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; * 제품가 3만원 상당</span>
        </p>
        <p>
                            <span style="font-size: 16px">체험방식 | 직접 주문 방식</span>
        </p>
        <p>
                            <span style="font-size: 16px">참고사항 | 디자인 선택 가능</span>
        </p>		  </div>
                
            </div>    
            <div style="clear:both;"></div>
            </div>
        </div>
        
        
        <style>
        .teb_menu{ overflow:hidden;  width:100%;  border-top:solid 1px #fff; border-left:solid 1px #fff; border-right:solid 1px #fff; }
        .teb_menu li{ float:left;  border-right:solid 1px #ec253a; padding:20px 50px;  border-bottom:solid 1px #ec253a; border-top:solid 1px #fff; border-right:solid 1px #fff; border-left:solid 1px #fff;}
        .teb_menu li a{ display:block; color:#999; font-size:16px; font-family:'nskr'; color:#212121;}
        .teb_menu .active{ display:block; padding:20px 50px; border-right:solid 1px #ec253a; border-top:solid 1px #ec253a;  border-left:solid 1px #ec253a; border-bottom:solid 1px #fff; background-color:#FFFFFF; color:#f64356;  font-size:16px;}
        .bottom_line{border-bottom:solid 1px #ec253a;height:64px; padding:0px!important;  width:690px;}
        .teb_line{background-color: #ec253a; height:1px; border:none; margin-top:-1px;}
        </style>
        
        
        
        
        
        
        
        <!-- item_detail -->
        <div class="item_detail">
            <ul class="teb_menu">
                <li class=""><a href="#tab1">캠페인 상세정보</a></li>
                <li class="active"><a href="#tab2">신청자 한마디(<span style="color:#f64356;font-weight:bold;">61</span>/10)</a></li>	</ul>
            <hr class="teb_line">
            <div id="tab1" class="tab-cont" style="display: none;">
                <p style="margin: 0cm 0cm 0.0001pt; padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">		</p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                <b style="font-size: 16px"><span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">&lt;캠페인 진행 안내&gt;</span></b>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                <span style="font-size: 16px; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">1. 리뷰어 당첨 시 마이페이지에서 확인 가능하며, 별도 당첨 문자와 이메일이 발송됩니다.</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                <span style="font-size: 16px; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">2. 리뷰 완료 시 마이페이지에서 리뷰 URL을 등록해 주세요.</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                <font color="#333333" face="Nanum Gothic, Malgun Gothic"><span style="font-size: 16px; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">3. 제공 내역 외 포인트가 지급되는 캠페인의 경우 (프리미엄,슈페리얼,노블레스)</span></font>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                <span style="font-size: 16px; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">4. 리뷰 마감일 경과 시 포인트가 지급되지 않습니다.</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                                    <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">&nbsp;</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                                            <span style="font-size: 16px; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;"><b><span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">&lt;제품체험 안내&gt;</span></b></span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                                    <span style="font-size: 16px; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">1. 캠페인 신청 시 기재하신 배송지로 제품이 배송되며, 신청 후 배송지 변경은 불가합니다.</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                <span style="font-size: 16px; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">2. 배송 시 송장번호는 따로 안내되지 않습니다.</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                <span style="font-size: 16px; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">3. 캠페인별 제품 신청방법이 상이하오니 이메일 내 신청방법을 반드시 확인해 주세요.</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                                    <span style="font-size: 16px; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">&nbsp; (스마트스토어 : 톡톡, 쿠폰, 무통장, 바로 배송 / 자사몰 : 적립금, 바로 배송)</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                <span style="font-size: 16px; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">4. 제품 신청 후 1~3일 이내 출고가 진행되며, 상품에 따라 제품 수령까지 4~7일 소요될 수 있습니다.</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                                <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">&nbsp;</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px"><b><span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; color: #000000">&lt;유의사항&gt;</span></b></span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                                    <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">1. 리뷰 미션 미수행 및 리뷰 기간 내 미 포스팅의 경우 페널티가 부여되며,</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                                    <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">&nbsp; &nbsp;제공받으신 서비스에 대한 비용이 청구됩니다.</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">2. 체험 후 작성된 리뷰는 캠페인 종료일로부터 최소 6개월동안 전체공개로 유지해야 하며,&nbsp;</span>
        </p>
        <p style="padding: 0px; color: #333333; font-family: &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;; font-size: 13px">
                                                    <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">&nbsp; &nbsp;임의로 삭제,&nbsp;</span><span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">비공개하신 경우 해당 체험에 대한 금액의 변상을 요구할 수 있습니다.</span>
        </p>
        <p style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13.33px; line-height: 1.5; font-family: Gulim, sans-serif; padding: 0px">
                                <span lang="EN-US" style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">3. 공정위 심사지침 개정에 따라&nbsp;</span><span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000"><span style="color: #000000; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;"><span style="color: #000000; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;">스폰서 배너 삽입 및 '협찬' 문구는&nbsp;</span></span>필수입니다.</span>
        </p>
        <p style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13.33px; line-height: 1.5; font-family: Gulim, sans-serif; padding: 0px">
                                <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">4. 제공받은 제품은 콘텐츠 용도 외 재판매는 절대 불가합니다.</span>
        </p>
        <p style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13.33px; line-height: 1.5; font-family: Gulim, sans-serif; padding: 0px">
                                <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">5. 바르는 제품일 경우 작은 부위에 테스트 후 이상이 없을 시 사용해 주세요.</span>
        </p>
        <p style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13.33px; line-height: 1.5; font-family: Gulim, sans-serif; padding: 0px">
                                <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">&nbsp; &nbsp;체험 후 부작용 및 문제 발생 시에는 업체 측과 상의하셔야 하며,</span>
        </p>
        <p style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13.33px; line-height: 1.5; font-family: Gulim, sans-serif; padding: 0px">
                                                <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">&nbsp; &nbsp;(주)스토리앤미디어는 책임이 없음을 알려드립니다.</span>
        </p>
        <p style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13.33px; line-height: 1.5; font-family: Gulim, sans-serif; padding: 0px">
                                                    <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">6. 건강기능식품 및 의약외품 체험 시 예방, 치료, 치료의 효능, 효과, 효능, 천연</span>
        </p>
        <p style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.5; padding: 0px">
                                                <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">&nbsp; &nbsp;추출, 유래, 자연, 합성 등 기타 의약적 용어는 식품의약안전처</span><span style="color: #000000; font-size: 13.33px"><font face="Gulim, sans-serif">&nbsp;</font></span><span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px">법률 위반으로</span>
        </p>
        <p style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.5; padding: 0px">
                                <span style="font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px">&nbsp; &nbsp;사용하지 않도록 주의 부탁드립니다.</span>
        </p>
        <p style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13.33px; line-height: 1.5; font-family: Gulim, sans-serif; padding: 0px">&nbsp;</p>
        <p style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13.33px; line-height: 1.5; font-family: Gulim, sans-serif; padding: 0px">
                                <span style="color: #000000; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px">- 본 캠페인의 리뷰 콘텐츠는 (주)스토리앤미디어 및 업체&nbsp;</span><span style="background-color: #ffffff; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">홍보 목적으로 사용</span><span style="background-color: #ffffff; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px; color: #000000">될&nbsp;수 있습니다.</span><span style="color: #000000; font-family: &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;; font-size: 16px">&nbsp;</span>
        </p>
        
        
        
        
        
        
            </div>
            <div id="tab2" class="tab-cont" style="display: block;">
                <style>
        .cpa{width:95%; margin:20px auto;}
        .cpa ul {width:100%;}
        .cpa ul li { border-bottom: 1px dashed #eee; padding: 20px 20px 10px 90px;position: relative;min-height: 50px;}
        .cpa ul li img.avatar { width: 50px; height: 50px; border-radius: 100rem; position: absolute; left: 15px; top: 15px; background-color:#ff3300}
        .cpa ul li strong { font-size: 13px; color: #555; font-weight:normal;}
        .cpa ul li p {margin: 5px 0 0 0; font-size: 13px; color: #777;}
        </style>
        <div class="cpa">
            <ul>
                        <li>
                    <img src="./data/member/mb/2948628468_6Oivg0AI_KakaoTalk_20190625_174754457.jpg" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>두유</strong>
                                <p>신청합니다</p>
        
                    
                </li>
                       
                        <li>
                    <img src="./data/member/mb/3718523280_VBwQ3CPr_KakaoTalk_20220616_131648002.jpg" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>지로리</strong>
                                <p>맛집과 제품리뷰를 중점으로 카테고리를 보유하고 있으며 홈페이지형 블로그 구조로 더욱 이웃과 방문자님들께 시각적으로 효과적인 홍보를 하고 있습니다. 블로거 선정이 되면 협찬받은 제품에 대해 사전적인 조사를 하고 글을 쓰는 형식을 추구하고 있습니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>라미블로그</strong>
                                <p>신청합니다. 좋은 리뷰 할게요 : )</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>박집사</strong>
                                <p> 성실, 꼼꼼, 책임감 3가지를 생각하며 열심히 포스팅하겠습니다. 체험단 포스팅은 원하시는 사진수, 글자수 그 이상으로 업로드 하고있어요. 잘 부탁드립니다</p>
        
                    
                </li>
                    </ul>
        </div>
        
        <script type="text/javascript">
        <!--
        function review_delete(rv_id){
            
            if(confirm("신청을 취소하시겠습니까?")){
        
                $.ajax({
                    type: "post",
                    url: "item.php",
                    data: {
                        "mode":"review_delete",
                        "rv_id":rv_id
                    },
                    cache: false,
                    async: false,
                    success: function(response){
                        var json = $.parseJSON(response); 
                        if(json["result"]=="ok"){				
                            alert(json["msg"]);
                            document.location.reload();
                        } else{
                            alert(json["msg"]);
                        }
                    }
                });
        
            }
        
        }
        //-->
        </script>    </div>
            <br><br><br>
        </div>
        <!-- //item_detail -->
        
        
        
        <script type="text/javascript">
        <!--
        var it_buy_qty = parseInt("1");
        var it_opt_depth = parseInt("0");
        var cf_name = "스토리앤미디어";
        var it_url = location.href;	
        var it_img = "https://www.storyn.kr/data/main/166442514316618321651659068648991816278_4nD59N2A_5BED81ACEAB8B0EBB380ED99985D1.png";
        var it_name = "투르크와즈";
        var it_description = "#터키도자기 #이국적 #실물깡패";
        var it_id = "1664425131";
        var app_schema = "net.nfor.demo";
        var app_name = "nfor";
        var kakao_key = "eb2b85038c91eacb325347827375f553";
        
            
        $(".review_order_popup_bg").on("click", function(){	
            $('.review_order_popup').hide();
        });
        
            
        $("#review_close_btn").on("click", function(){	
            $('.review_order_popup').hide();
        });
        
        
        var storyn_wr_id = "";
        
        function storyn_insert(){
            $.ajax({
                type: "post",
                data : "mode=storyn&it_id="+it_id,
                url: "item.php",
                success: function(response){
                    var json = $.parseJSON(response); 
                    
                    if(json["result"]=="login"){
                        alert("로그인하셔야 이용가능합니다");
                        location.replace("login.php?url=item.php?it_id="+it_id);				
                    } else if(json["result"]=="delete"){
                        alert(json["msg"]);
                        window.location.reload();
                    } else if(json["result"]=="insert"){
                        alert(json["msg"]);
                        window.location.reload();
                    } else{
                        alert(json["msg"]);
                    }
        
                    $("#review_btn_cnt").html(json["it_storyn_cnt"]);
                }
            });
        }
        
        function free365_insert(){
            $.ajax({
                type: "post",
                data : "mode=free365&it_id="+it_id,
                url: "item.php",
                success: function(response){
                    var json = $.parseJSON(response); 
                    
                    if(json["result"]=="login"){
                        alert("로그인하셔야 이용가능합니다");
                        location.replace("login.php?url=item.php?it_id="+it_id);				
                    } else if(json["result"]=="delete"){
                        alert(json["msg"]);
                        window.location.reload();
                    } else if(json["result"]=="insert"){
                        alert(json["msg"]);
                        window.location.reload();
                    } else{
                        alert(json["msg"]);
                        window.location.reload();
                    }
        
                    $("#review_btn_cnt").html(json["it_storyn_cnt"]);
                }
            });
        }
            
        $("#btn_order").on("click", function(){	
            if(is_member=="1"){
        
        
                        alert("본 캠페인은 일반 인플루언서 전용 캠페인입니다.");
                return;
                
                        $("html, body").animate({scrollTop:0},'slow');
                $('.review_order_popup').show();
                
        
        
        
        
        
            } else{
                alert("로그인하셔야 이용가능합니다");
                location.href="login.php?url=item.php?it_id="+it_id;
            }
        });
        
        $(document).ready(function() {
            $(".teb_menu li").click(function(){
                $(".teb_menu li").removeClass("active");
                $(this).addClass("active");
                $(".tab-cont").hide();
                $($(this).find("a").attr("href")).show();
                return false;
            });
        
        });
        
        $("#btn_zzim").on("click", function(){	
        
            $.ajax({
                type: "post",
                data : "mode=zzim&it_id="+it_id,
                url: "item.php",
                success: function(response){
                    var json = $.parseJSON(response); 
                    
                    if(json["result"]=="login"){
                        alert("로그인하셔야 이용가능합니다");
                        location.replace("login.php?url=item.php?it_id="+it_id);				
                    } else if(json["result"]=="delete"){
                        
                        $("#btn_zzim").removeClass("scrap_btn").removeClass("scrap_btn_on");
                        $("#btn_zzim").addClass("scrap_btn");
                    } else if(json["result"]=="insert"){
                        $("#btn_zzim").removeClass("scrap_btn").removeClass("scrap_btn_on");
                        $("#btn_zzim").addClass("scrap_btn_on");
                    } else{
                        alert(json["msg"]);
                    }
        
                    $("#btn_zzim strong").html(json["it_zzim_cnt"]);
                }
            });
        
        });
        //-->
        </script>
        
        </div>
        <style>
        #footer { position:relative; background-color:#fff;  border-top:solid 1px #ddd; padding-top:20px;}
        #footer .wrap{overflow:hidden;width:1139px;margin:0px auto; padding:30px;}
        #footer .wrap .f1{ float:left; width:50%;}
        #footer .wrap .f1 .f1_1{display:block; margin-left:0px;margin:15px 0px;color:#828282;font-size:12px;}
        #footer .wrap .f1 .f1_1 .line{border-left:solid 1px #888; height:8px; display:inline-block; margin:0px 15px;}
        #footer .wrap .f1 .f1_1 a{color:#828282;padding:0px 0px;}
        #footer .wrap .f1 .f1_2{display:block; margin-left:0px; margin:20px 0px;color:#606060; font-size:12px; line-height:22px;}
        #footer .wrap .f1 .f1_2 .line{border-left:solid 1px #888; height:8px; display:inline-block; margin:0px 10px;}
        #footer .wrap .f1 .copy{display:block; font-family:Verdana; margin-left:0px; margin-bottom:20px; color:#5c5c5c;font-size:11px; font-family:roboto;}
        
        
        #footer .wrap .f2{ float:right; width:50%; text-align:right;}
        #footer .wrap .f2 .f2_1{overflow:hidden;}
        #footer .wrap .f2 ul{overflow:hidden;float:right; margin-top:10px;}
        #footer .wrap .f2 ul li {float:left; text-align:left;margin-right:15px; width:100px;}
        #footer .wrap .f2 ul li span{display:block; color:#666; margin:10px 0px; font-size:18px; font-family:roboto;}
        #footer .wrap .f2 ul li b{color:#f64356; font-size:24px; font-family:roboto;}
        #footer .wrap .f2 .pat{margin-top:80px;display:block;color:#9b9b9b;;}
        #footer .wrap .f2 .pat a{display:inline-block;margin-right:50px}
        #footer .wrap .f2 .pat .customer_center{display:inline-block;}
        #footer .wrap .f2 .pat .customer_center span{display:block; margin-bottom:10px;}
        #footer .wrap .f2 .pat .customer_center .tel{font-family:roboto; font-size:39px; color:#000;}
        #footer .wrap .f2 .pat .customer_center .time{letter-spacing:-1px; color:#000;}
        
        
        </style>
        
        <!-- //wrap -->
        
        
        
        
        
        
        
        
        
        
        <style>
        #left_banner_top {position:absolute; right:50%; top:0px; margin:220px 595px 0px 0px;  }
        
        /* 좌우배너 */
        #left_banner {position:absolute; right:50%; top:0px; margin:240px 595px 0px 0px; }
        #right_banner {position:absolute; right:50%; top:0px; margin:220px -695px 0px 0px; }
        /* 좌우배너 */
        </style>
        
        
        
        
        <div id="left_banner_top" style="display:none;">
        
            <ul>
             
            </ul>
        
        </div>
        
        <div id="left_banner">
        
            <ul>
             
            </ul>
        
        </div>
        
        
        
        
        
        <div id="right_banner">
        
            <table cellpadding="0" cellspacing="0" border="0" id="tb2">
                </table>
        
            <style>
        .today_view {
            width: 100px; font-size: 11px; margin-top: 40px; position: relative; z-index: 1000;
        }
        .flow.today_view {
            left: 50%; top: 0px; margin-left: 670px; position: fixed;
        }
        .today_view { margin-top: 0px; position: relative; z-index: 1000; border:solid 1px #e3e5e8; border-top:none; width:85px; font-size:11px; background-color:#FFF;}
        .today_view ul{ }
        .today_view .today_view_li { text-align:center; border-top:solid 1px #e3e5e8}
        .today_view .today_view_li .page{position:absolute; left:15px; bottom:40px;}
        .today_view .today_view_li2{ text-align:center; border-top:solid 1px #e3e5e8}
        
        .today_view .today_item{padding:5px 10px; display:block; text-align:left; color:#000;}
        .today_view .today_ico{display:block;}
        .today_view .today_tit b{color:#f27935; font-family:Verdana;  padding-left:0px; vertical-align:-1px;}
        .today_tit{font-size:12px; color:#7d7e80;display:block; margin-top:5px;}
        .flow.today_view { left:50%; top:100px; margin-left:610px; position:fixed; }
        .today_view_img { width:63px; height:63px; z-index:4; }
        
        .recent_view_tit { font-size:12px; display:block; padding:10px;  font-family:'NanumGothicBold' ,Sans-serif; -webkit-font-smoothing:antialiased; -moz-osx-font-smoothing:grayscale; font-smoothing: antialiased; font-weight:normal;}
        .today_view .recent_view_tit b{ color:#f27935; font-family:Verdana;  padding-left:0px; vertical-align:-1px;}
        
        .recent_list_ul{min-height:150px;}
        .recent_list_ul li { position:relative; margin-bottom:10px;  }
        .recent_list_ul span{display:block;padding-top:50px; color:#7d7e80;}
        
        
        
        .recent_list_ul li a { display:inline-block; }
        .top_bottom {display:block;margin-top:15px;      position: absolute;  bottom: -80px;  left: -1px;width: 100px;}
        
        .scrollbtn{width:41px; height:45px; overflow:hidden; }
        .scrollbtn img{float:left;}
        .infobox { display:none; position:absolute; top:-1px; right:10px; width:146px; height:50px; padding:7px 84px 6px 15px; border:1px solid #30343b; background-color:#fff; font-size:11px; text-align:left; z-index:-1; }
        .infobox .it_name{padding:0px; font-size:12px; margin-bottom:3px; color:#666;text-overflow: ellipsis; -webkit-line-clamp:2; -webkit-box-orient: vertical; height:28px; overflow:hidden; width:148px;}
        .infobox .it_price{ font-family: "Roboto"; color:#ff0000; font-size:14px;}
        </style>
        <script type="text/javascript">
        <!--
        
        function scrollDown(){
            if( $('div.dealInfo').length > 0 ) {
                var positionObj = $("#scrolldownPosition");
                var offset = positionObj.offset()
                var top = offset.top - document.documentElement.clientHeight + positionObj.height();
                window.scrollTo(0,top);
            }else{
                window.scrollTo(0,document.body.scrollHeight);
            }
        }
        
        $(window).scroll( function(){
            var scrollTop = $(document).scrollTop();
            var topprefix = 700;
            var rightbannerBottom = $('#tb2').position().top + topprefix + $('#tb2').height();
        
            if (scrollTop >= rightbannerBottom)
            {
                $('.today_view').attr('class','today_view flow');
            }
            else if (scrollTop < rightbannerBottom)
            {
                $('.today_view').attr('class','today_view');
            }
        });
            
        //-->
        </script>
        
        <input type="hidden" id="move_state">
        
        <div class="today_view">
        <ul>
                        <li class="today_view_li" style="min-height:250px">
                    <a href="recent_list.php" class="recent_view_tit">HISTORY<b>0</b></a>
                    
        
                        
                        <ul>
                                        <li class="li_cl li_cl_1" style=""><a href="item.php?it_id=1664425131&amp;category_id="><img src="./data/list/166442514316618321651659068648991816278_y3NO10ZX_5BED81ACEAB8B0EBB380ED99985D1.png" style="width:63px; height:63px; margin-bottom:8px;"></a></li>
                                        </ul>
        
        
                                        <div class="page">	
                            <a href="javascript:today_pn('p')"><img src="./skin/demo/img/btn_0101.png"></a>
                            <span id="nowviewid">1</span> / 1					<a href="javascript:today_pn('n')"><img src="./skin/demo/img/btn_0202.png"></a>
                        </div>
                        <br><br>
        
                        <input type="hidden" name="nownum" id="nownum" value="1">
                        <script type="text/javascript">
                        <!--
                        function today_pn(ty){
                        var nownum = Number($("#nownum").val());
                        var max_pg = Number("1");
        
                        if(ty=="p"){
                            nownum = nownum - 1;
                        } else{
                            nownum = nownum + 1;
                        }
        
                        if(nownum > max_pg){
                            nownum = 1;
                        }
        
                        if(nownum < 1){
                            nownum = max_pg;
                        }
        
                        $("#nowviewid").html(nownum);
                        $("#nownum").val(nownum)
        
                        $(".li_cl").hide();
                        $(".li_cl_"+nownum).show();
                        }
                        //-->
                        </script>
        
                                    </li>
                    <li class="today_view_li2">
                    <a href="zzim_list.php" class="today_item">
                        <span class="today_tit">나의좋아요</span> 		
                    </a>
                </li>
        </ul>
            <div class=" top_bottom">
                <a href="javascript:self.scrollTo(0,0)" class="scrollbtn"> <img src="/skin/demo/img/top.png"></a>
                <a href="javascript:scrollDown()" class="scrollbtn" style="width:45px;"><img src="/skin/demo/img/bown.png"></a>
            </div>	
        </div>
        
        
        
        
        
        <!-- <table cellpadding="0" cellspacing="0" border="0"  class="today_view">
        <tr>
            <td style="text-align:center;">
            
                <table cellpadding="0" cellspacing="0" border="0" style="border:solid 1px #DCDCDC; background-color:#FFF;">
                <tr>
                    <td  style="border-bottom:solid 1px #DCDCDC; height:35px;text-align:center;background-color:#aFaFaF;"><a href="zzim_list.php" style="color:#fff">스크랩 캠페인</a></td>
                </tr>
                <tr>
                    <td  style="border-bottom:solid 1px #DCDCDC; height:35px;text-align:center;background-color:#aFaFaF;"><a href="recent_list.php" style="color:#fff;">최근본 캠페인</a></td>
                </tr>
        
                <tr>
                    <td style="text-align:center; padding:10px 0px; background-color:#fff;">	
                    
                    <ul>
                                <li class="li_cl li_cl_1" style=""><a href="item.php?it_id=1664425131&category_id="><img src="./data/list/166442514316618321651659068648991816278_y3NO10ZX_5BED81ACEAB8B0EBB380ED99985D1.png" style="width:80px; height:80px; margin-bottom:8px;"></a></li>
                                </ul>
        
        
                    
                    
                        <a href="javascript:today_pn('p')"><img src="./skin/demo/img/btn_0101.jpg"></a>
        
                        <span id="nowviewid">1</span> / 1
        
                        <a href="javascript:today_pn('n')"><img src="./skin/demo/img/btn_0202.jpg"></a>
        
        
                        <input type="hidden" name="nownum" id="nownum" value="1">
                        <script type="text/javascript">
                        <!--
                        function today_pn(ty){
                            var nownum = Number($("#nownum").val());
                            var max_pg = Number("1");
        
                            if(ty=="p"){
                                nownum = nownum - 1;
                            } else{
                                nownum = nownum + 1;
                            }
                            
                            if(nownum > max_pg){
                                nownum = 1;
                            }
        
                            if(nownum < 1){
                                nownum = max_pg;
                            }
        
                            $("#nowviewid").html(nownum);
                            $("#nownum").val(nownum)
        
                            $(".li_cl").hide();
                            $(".li_cl_"+nownum).show();
                        }
                
                        </script>
                    
                                </td>
                </tr>
                <tr>
                    <td ><a href="javascript:self.scrollTo(0,0)"><img src="./skin/demo/img/top.png"></a></td>
                </tr>
                <tr>
                    <td ><a href="javascript:scrollDown()"><img src="./skin/demo/img/dwn.png"></a></td>
                </tr>
                </table>
        
        
            
            </td>
        </tr>
        </table> --> 
        
        </div>


<!-- bootStrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script type="text/javascript">
</script>
</body>
</html>