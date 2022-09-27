<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세</title>

summernote jquery  -->
 <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
 <!-- bootStrap -->	
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
 
 
 
</head>
<body>
    <div style="width:1146px; margin:0px auto; min-height:850px; ">



        <!-- 리뷰어신청하기 -->
        <style>
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
        
        <br><br><br>

        <div class="review_order_popup">
            <div class="review_order_popup_bg"></div>
        </div>
        
        <div class="review_order_popup_fg review_order_popup">
        
        
        <form name="freview" id="freview" method="post">
        <input type="hidden" name="it_id" value="1663909622">
        
        <div class="application_wrap">
        <a class="close" id="review_close_btn" href="#"><img src="./skin/demo/img/close_b.png"></a>
        <table class="application_tbl">
        <tbody><tr>
            <th>1. 리뷰에 사용할 매체를 선택해주세요(리뷰어 선정시 변경불가)</th>
        </tr>
        <tr>
            <td>
        
        
            <select name="rv_blog" id="rv_blog" class="bloginput" style="width:798px;">
                <option value="">선택해주세요
                </option><option value="">블로그 : 					</option></select>
          
        
        
        
        
        
            <a href="member_form.php" class="btn01">블로그 등록</a></td>
        </tr>
        <tr>
            <td>
            <div class="line"></div>
            </td>
        </tr>
        <tr>
            <th>2. 신청자 한마디를 남겨주세요 <span><span id="rv_msg_counter">0</span>/500</span></th>
        </tr>
        <tr>
            <td><textarea name="rv_msg" id="rv_msg" class="blogtxt" placeholder="이곳에 입력해주세요"></textarea></td>
        </tr>
        <tr>
            <td>
            <div class="line"></div>
            </td>
        </tr>
        <tr>
            <th>3. 캠페인 상세 내용을 확인 하신 뒤 ‘신청필수 정보’ 를 입력해주세요 <span><span id="rv_memo_counter">0</span>/500</span></th>
        </tr>
        <tr>
            <td>
            <span style="color:#666;"><p>
                        <span style="font-size: 14px">해당 캠페인은 선택사항이 없으므로 신청필수 정보에 '없음' 이라고 기입해주세요.</span>
        </p></span>
            </td>
        </tr>
        <tr>
            <td><input type="text" name="rv_memo" id="rv_memo" class="bloginput2" placeholder="이곳에 입력해주세요" style="width:798px;"></td>
        </tr>
        <tr>
            <td>
            <div class="line"></div>
            </td>
        </tr>
        <tr>
            <th>4. 리뷰 상품을 배송 받을 주소를 입력해주세요 </th>
        </tr>
        <tr>
            <td>
            <label onclick="dy_copy('blank')"><input type="radio" name="dy_adress_type" value="1" checked="">새로운주소</label>
            <label onclick="dy_copy('last')"><input type="radio" name="dy_adress_type" value="2">최근발송주소</label>
            <label onclick="dy_copy('member')"><input type="radio" name="dy_adress_type" value="2">회원정보주소</label>
        
        
        
                <script type="text/javascript">
            <!--
            function dy_copy(ty){
                if(ty=="blank"){
        
                    $("#rv_dy_name").val("");
                    $("#rv_dy_zip").val("");
                    $("#rv_dy_addr1").val("");
                    $("#rv_dy_addr2").val("");
                    $("#rv_dy_hp").val("");
        
                } else if(ty=="last"){
        
                    $("#rv_dy_name").val("");
                    $("#rv_dy_zip").val("");
                    $("#rv_dy_addr1").val("");
                    $("#rv_dy_addr2").val("");
                    $("#rv_dy_hp").val("");
        
                } else if(ty=="member"){
        
                    $("#rv_dy_name").val("");
                    $("#rv_dy_zip").val("");
                    $("#rv_dy_addr1").val("");
                    $("#rv_dy_addr2").val("");
                    $("#rv_dy_hp").val("");
        
                } else{
        
                }
            }
            //-->
            </script>
        
        
            
            </td>
        </tr>
        <tr>
            <td>받는분 이름 &nbsp;&nbsp;&nbsp;<input type="text" name="rv_dy_name" id="rv_dy_name" class="bloginput2" style="width:194px;"> </td>
        </tr>
        <tr>
            <td>배송지 주소&nbsp;&nbsp;&nbsp;<input type="text" name="rv_dy_zip" id="rv_dy_zip" onclick="zipcode('rv_dy_zip','rv_dy_addr1','rv_dy_addr2')" placeholder="우편번호" class="bloginput2" style="width:89px;" readonly=""> <a class="btn01" onclick="zipcode('rv_dy_zip','rv_dy_addr1','rv_dy_addr2')" style="vertical-align:-1px; cursor:pointer;">우편번호찾기</a>
            <input type="text" name="rv_dy_addr1" id="rv_dy_addr1" class="bloginput2" onclick="zipcode('rv_dy_zip','rv_dy_addr1','rv_dy_addr2')" placeholder="주소" style="width:189px;" readonly="">
            <input type="text" name="rv_dy_addr2" id="rv_dy_addr2" class="bloginput2" placeholder="상세주소" style="width:250px;"></td>
        </tr>
        <tr>
            <td>받는분연락처 <input type="text" name="rv_dy_hp" id="rv_dy_hp" class="bloginput2" placeholder="000-0000-0000 처럼 입력해주세요" style="width:304px;"> </td>
        </tr>
        <tr>
            <td>
            <div class="line"></div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="box">
                
                    <table style="width:100%;">
                    <tbody><tr>
                        <td><img src="./skin/demo/img/ah_ico.png"> 신청전에 꼭 확인해주세요!</td>
                    </tr>
                    <tr>
                        <td><label><input type="checkbox" name="chk1" id="chk1" class="review_chk"> 정당한 사유없이 콘텐츠 등록기간 내 리뷰콘텐츠를 작성하지않을 경우 제공상품 또는 용역의 대가를 환불해야 하며, 관련법조항<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(형법 제347조)에 따라 법적 처벌대상이 될 수 있습니다. </label></td>
                    </tr>
                    <tr>
                        <td><label><input type="checkbox" name="chk2" id="chk2" class="review_chk"> 등록한 콘텐츠의 유지기간 (6개월) 미준수 시 제공내역에 대한 비용이 청구될 수 있습니다. </label></td>
                    </tr>
                    <tr>
                        <td><label><input type="checkbox" name="chk3" id="chk3" class="review_chk"> 등록한 콘텐츠는 홍보나 필요에 의해 사용될 수 있습니다.</label></td>
                    </tr>
                    <tr>
                        <td><label><input type="checkbox" name="chk4" id="chk4" class="review_chk"> 제공내역은 타인에게 양도 및 판매를 허용하지 않습니다. </label></td>
                    </tr>
                    <tr>
                        <td><label><input type="checkbox" name="chk5" id="chk5" class="review_chk"> 개인정보 수집 및 이용에 동의합니다. </label></td>
                    </tr>
                    <tr>
                        <td><label><input type="checkbox" name="allchk" id="allchk"> <strong>상기의 내용들에 전체 동의합니다.</strong> </label></td>
                    </tr>
        
                    <tr>
                        <td>
        
                        <table style="width:100%;" class="box_tbl">
                        <tbody><tr>
                            <th>목적   </th>
                            <th>항목</th>
                            <th>보유 및 이용기간</th>
                        </tr>
                        <tr>
                            <td>캠페인 선정 및 진행시 사용</td>
                            <td>회원정보( 이름,생년월일,휴대전화번호 )<br>배송정보( 이름,휴대번호, 주소 )</td>
                            <td>회원정보( 이름,생년월일,휴대전화번호 )<br>:캠페인 종료 후 1개월<br>배송정보( 이름,휴대번호, 주소 )<br>:캠페인 신청후 3개월</td>
                        </tr>
                        </tbody></table>
                        
                        
                        </td>
                    </tr>
                    </tbody></table>
                
                
                </div>
            </td>
        </tr>
        </tbody></table>
        <div style="text-align:center; margin:10px;"><img src="./skin/demo/img/bbttnn02.png" id="review_btn" style="cursor:pointer;"></div>
        
        
        </div>
        
        </form>
        
        
        
        
        
        <script type="text/javascript">
        <!--
        
        
        $(document).on("click", "#allchk", function(){
            nfor_chk_all(this, 'review_chk');
        });
        
        function nfor_chk_all(this_id, this_class){
            if($(this_id).is(":checked")){
                $("."+this_class).prop("checked",true);
            } else{
                $("."+this_class).prop("checked",false);
            }
        }
        
        
        
        
        
        // 결제하기버튼클릭
        $(document).on("click","#review_btn",function(){
        
            if(!$("#rv_blog").val()){
                alert("리뷰에 사용할 매체를 선택해주세요");
                $("#rv_blog").focus();
                return;
            }
        
            if(!$("#rv_msg").val()){
                alert("신청 한마디를 입력해주세요");
                $("#rv_msg").focus();
                return;
            }
        
            if(!$("#rv_memo").val()){
                alert("신청필수정보를 입력해주세요");
                $("#rv_memo").focus();
                return;
            }
        
                if(!$("#rv_dy_name").val()){
                alert("받는분 이름을 입력해주세요");
                $("#rv_dy_name").focus();
                return;
            }
        
            if(!$("#rv_dy_zip").val()){
                alert("배송지 우편번호를 입력해주세요");
                $("#rv_dy_zip").focus();
                return;
            }
            if(!$("#rv_dy_addr1").val()){
                alert("배송지 주소를 입력해주세요");
                $("#rv_dy_addr1").focus();
                return;
            }
            if(!$("#rv_dy_addr2").val()){
                alert("배송지 상세 주소를 입력해주세요");
                $("#rv_dy_addr2").focus();
                return;
            }
            if(!$("#rv_dy_hp").val()){
                alert("받는분 연락처를 입력해주세요");
                $("#rv_dy_hp").focus();
                return;
            }
            
            if(!$('#chk1:checked').length){
                alert("동의목록에 체크해주세요");
                $("#chk1").focus();
                return;
            }
            if(!$('#chk2:checked').length){
                alert("동의목록에 체크해주세요");
                $("#chk2").focus();
                return;
            }
            if(!$('#chk3:checked').length){
                alert("동의목록에 체크해주세요");
                $("#chk3").focus();
                return;
            }
            if(!$('#chk4:checked').length){
                alert("동의목록에 체크해주세요");
                $("#chk4").focus();
                return;
            }
            if(!$('#chk5:checked').length){
                alert("동의목록에 체크해주세요");
                $("#chk5").focus();
                return;
            }
        
            $("#review_btn").hide();
        
            $.ajax({ 
                type : "post"
                , url : "review_update.php"
                , cache : false  
                , data : $("#freview").serialize() 
                , success : function(response){ 
                    console.log(response);
        
                    var json = $.parseJSON(response); 
                    if(json["result"]=="ok"){
                        alert("리뷰어신청이 완료되었습니다");
                        document.location.reload();
                    } else{
                        alert(json["msg"]);
                        $("#review_btn").show();
        
                    }
                }
            }); 
        
        });
        
        $(document).ready(function() {
        
            $('#rv_msg').on('keyup', function() {
                $("#rv_msg_counter").html($(this).val().length);
                if($(this).val().length > 500){
                    $(this).val($(this).val().substring(0, 500));
                }
            });
        
            $('#rv_memo').on('keyup', function() {
                $("#rv_memo_counter").html($(this).val().length);
                if($(this).val().length > 500){
                    $(this).val($(this).val().substring(0, 500));
                }
            });
        
        });
        
        //-->
        </script>
        </div>
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
        
        
        
                    <img id="it_img_m" src="./data/main/16639096363534913948_gybEU3tx_1.png">
        
                    <ul class="it_img_thumb">
                                <li><img src="./data/main/16639096363534913948_gybEU3tx_1.png" class="it_img_s it_img_s_on"></li>
                                <li><img src="./data/main/16639096363534913948_ysDESga0_2.png" class="it_img_s "></li>
                                <li><img src="./data/main/16639096363534913948_CQ3lEIsr_3.png" class="it_img_s "></li>
                                <li><img src="./data/main/16639096363534913948_CuPe4ykl_4.png" class="it_img_s "></li>
                                </ul>
                </div>
                <div class="item_info">
                    <div class="sns blog"></div>
                    <div class="itname fotr"> <span style="color:#55caca">[쇼핑몰] </span>저세상푸드</div>
                    <span class="itdes">#이세상맛이아니다 #중독성갑</span>
        
                    <div class="btn_wrap">
                        <ul>
        
                            
                                                <li>
                                <a class="review_req" id="btn_order">
        
        
        
                                                                <span class="text"><img src="/skin/demo/img/btn_img1.png">리뷰 신청하기</span>
                                    
                                    <span class="cnt_box border1">
                                        <strong style="color:#ec253a;" id="review_btn_cnt">73</strong>
                                    </span>
                                </a>
                            </li>
                            
        
        
                            <li>
                            <a class="scrap_btn" id="btn_zzim">
                                <span class="text"><img src="/skin/demo/img/btn_img2.png">좋아요</span>
                                <span class="cnt_box border2">
                                    <strong style="color:#fff;">2</strong>
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
                                    <b>09.23 ~ 09.29</b>
                                </span>
                            </div>
        
                            <span class="next"><img src="skin/demo/img/next_icon.png"></span>
        
                            <div class="box">
                                <span class="icon pro2"></span>
                                <span class="text">
                                    <em>리뷰어 선정</em> 
                                    <b>09.30</b>
                                </span>
                            </div>
        
                            <span class="next"><img src="skin/demo/img/next_icon.png"></span>
        
                            <div class="box">
                                <span class="icon pro3"></span>
                                <span class="text">
                                <em>리뷰등록</em> 
                                <b>10.01 ~ 10.22</b>
                            </span></div>
        
                            
                    </div>
                    <div class="time_wrap">
                        <div class="left">
                            <span class="title">신청인원<b class="color_txt">73</b>/10 명</span>	
                        </div>
                        <div class="right">
        
        
                            
        
                                                        
                                    <script type="text/javascript">
                                    $(function (){ 
                                    var austDay = new Date(1664463599000);
                                        $('#countdown').countdown({until: austDay,  layout: "남은기간<b class='color_txt'>2</b>일 <b class='color_txt'>{hnn}</b>시간 <b class='color_txt'>{mnn}</b>분 <b class='color_txt'>{snn}</b>초" });
                                    });
                                    </script>
        
                                    <div class="item_info_time hasCountdown" id="countdown">남은기간<b class="color_txt">2</b>일 <b class="color_txt">09</b>시간 <b class="color_txt">19</b>분 <b class="color_txt">03</b>초</div>
        
        
                                
        
                            
                        </div>
        
                    </div>
                  <span class="campain_tit">캠페인 안내</span>
                  <div class="campain_wrap">
                    <p>
                        <span style="font-size: 16px">업체주소 | <a href="https://smartstore.naver.com/flfood/products/6124403997" target="_blank">https://smartstore.naver.com/flfood</a></span>
        </p>
        <p>&nbsp;</p>
        <p>
                        <span style="font-size: 16px">제공내역 | * 아래 내역 모두 제공 *</span>
        </p>
        <p>
                        <span style="font-size: 16px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1. 무뼈 국물닭발 860g</span>
        </p>
        <p>
                        <span style="font-size: 16px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2. 저세상오돌뼈 170g</span>
        </p>
        <p>
                        <span style="font-size: 16px">체험방식 | 직접 주문 방식</span>
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
                <li class="active"><a href="#tab1">캠페인 상세정보</a></li>
                <li><a href="#tab2">신청자 한마디(<span style="color:#f64356;font-weight:bold;">73</span>/10)</a></li>	</ul>
            <hr class="teb_line">
            <div id="tab1" class="tab-cont">
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
            <div id="tab2" class="tab-cont">
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
                    <img src="./data/member/mb/1889660952_YhvOyqAQ_IMG_1751.JPG" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>뱍코</strong>
                                <p>와이프와 함께 체험한다면 효과가 2배로 나올걸로 예상합니다 ^^ 와이프가 외국인(홍콩) 사람이라 외국인의 입맛과  시각의 리뷰도 가능하며 (DSLR+필름카메라)로 일반 사진에 다른 느낌의 연출도 가능합니다 가이드라인에 적합한 상세한 내용으로 포스팅 리뷰해보겠습니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>이지63</strong>
                                <p>정성스런 후기 남기겠습니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>taein0208</strong>
                                <p>닭발이랑 오돌뼈 너무 좋아해서 신청해요 :D</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>소주향기</strong>
                                <p>꼼꼼한 후기 작성하겠습니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>와니로드</strong>
                                <p>세세하고 긍정적인 리뷰 작성하겠습니다 사진, 움짤, 동영상 다수 촬영해요!!  (●'◡'●)</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>톡톡이</strong>
                                <p>402호 문앞에 놓아주세요(공동비번 : 사람-열쇠-1472-종)</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>챠밍21</strong>
                                <p>신청합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>봄봄은미</strong>
                                <p>믿고 배송해주시는만큼 정성스러운 리뷰로 보답합니다. 네이버영수증리뷰, 블로그, 인스타까지 모두 작성합니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>시로복길스</strong>
                                <p>신청합니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>성배우</strong>
                                <p>신청합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>아롬이네</strong>
                                <p>신청합니다 </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>꼼꼼한그녀의놀이터</strong>
                                <p>국물닭발 좋아해서 신청합니다. 술안주로 즐겨보고 싶어요.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>김미진</strong>
                                <p>신청합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>더치맘</strong>
                                <p>야식메뉴의 최강자 닭발!!  먹어보고 싶어요 좋은 사진찍어 꼼꼼하게 리뷰 약속드립니다 </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>kimkongroom</strong>
                                <p>신청</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>꾀돌이 </strong>
                                <p>신청합니다 </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>비너스</strong>
                                <p>진심어린글과 사진으로 보답하겠습니다 꼼꼼한 리뷰하겠습니다 </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>슈퍼키덜트</strong>
                                <p>DSLR로 사진 예쁘게 찍어서 좋은 후기 쓰겠습니다 :)</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>miko</strong>
                                <p>하루에 1~3개의 포스팅으로 7년째 꾸준히 관리하고 있는 블로거입니다. 
        체험후 정성가득하고, 꼼꼼한 리뷰 할게요!</p>
        
                    
                </li>
                        <li>
                    <img src="./data/member/mb/3553582526_2UAtfFbZ_701D9DD6-EBB2-480B-A5C7-5BC6F6C654B7.jpeg" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>Emily Yang</strong>
                                <p>포스팅 상위노출 될수 있도록 움짤, 동영상 촬영하여 가이드에 맞는 고퀄리티 꼼꼼, 성실, 감성 리뷰 약속드립니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>뭉썬</strong>
                                <p>맛있는 사진과 함께 가이드라인에 맞춘 꼼꼼한 포스팅 진행하겠습니다~</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>김작가</strong>
                                <p>일 방문자수 7-9천명 유입되는 푸드인플루언서 입니다 캐논 카메라로 촬영하여 키워드챌린지도 할게요</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>빡수</strong>
                                <p>신청합니다~</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>베베토끼맘</strong>
                                <p>신청합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>븅화</strong>
                                <p>안녕하세요!븅화입니다:)선정시 가이드라인에 맞춘 꼼꼼하고 정성스러운 포스팅은 물론, 캐논 미러리스 카메라로 정성껏 촬영합니다. 감사합니다. 잘 부탁드려요^_^</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>dnlfflfnql</strong>
                                <p>고화질 카메라로 많은 사진과 동영상을 첨부 하여 리뷰 작</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>날복</strong>
                                <p>브랜드(회사) 소개는 물론, 조리과정부터 예쁜 플레이팅샷까지 정확하고 감성돋는 사진&amp;동영상으로 리뷰업로드 하겠습니다! *수령 2일이내 빠른 업로드 (평균 24시간내 업로드중)*</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>뉴찬사랑엄니</strong>
                                <p>
        기대됩니다 알찬후기 꼼꼼후기 D
        약속드립니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>마늘부인</strong>
                                <p>신청합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>재도맘</strong>
                                <p>잘 부탁드립니다~~~~~~~~~~~~</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>그런남자</strong>
                                <p>신청합니다                    </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>군밤이</strong>
                                <p>블로그운영9년차입니다
        가이드를 바탕으로한 꼼꼼한 원고작성과 영상삽입, 고화질 예쁜 감성사진으로리뷰남기겠습니다
        인스타그램 업로드 가능합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>띠밍</strong>
                                <p>안녕하세요 맛집블로거 띠밍입니다!
        장점만을 살려서 성실하고 꼼꼼한 리뷰 남기겠습니다!
        </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>사둥이네</strong>
                                <p>다양한 인테리어소품을 이용한 촬영  / 4k영상을 이용한 촬영,편집  / 정성스럽고 꼼꼼한 리뷰  / 질좋은 고화질촬영  / 약속드립니다 :)</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>디남매</strong>
                                <p>신청합니다 :) 꼼꼼한 후기 남기겠습니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>Happy Gina</strong>
                                <p>캠페인 미션 꼼꼼히 수행하고 사진, 동영상, gif 정성들여 첨부하여 제품의 장점이 돋보이도록 포스팅 하겠습니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>샤넬마미</strong>
                                <p>신청</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>솔솔라</strong>
                                <p>당첨되면 예쁘게 플레이팅해서 올리도록하겠습니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>구뜰한밥상</strong>
                                <p>신청합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./data/member/mb/3730998206_xBJ9Sc5w_EC82ACECA784.jpg" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>먹는게제일좋은냠냠이</strong>
                                <p>캠핑요리로 체험해보고싶습니다
        잘 부탁드립니다. </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>블러썸토리</strong>
                                <p>신청합니다 정성스런 리뷰 올리겠습니다</p>
        
                    
                </li>
                        <li>
                    <img src="./data/member/mb/3749943267_fgBHGD0P_EC8898ECA095EB90A8_DSC01113.jpg" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>민쓰리</strong>
                                <p>맛있는 소주 안주네요 ㅋㅋ</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>러블리한채자매</strong>
                                <p>신청합니다 선정되면 가이드라인에 맞게  예쁜 사진으로 정성스러운 리뷰 작성할게요</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>깡다구</strong>
                                <p>신청합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>찐몽</strong>
                                <p>정성스러운 리뷰 하겠습니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>차가운토끼</strong>
                                <p>성실하고 세심하게 리뷰하겠습니다????
        사진도 이쁘게 올려 환심을 사보도록 하겠습니다!
        </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>쏭다우니</strong>
                                <p>네이버 뷰티 인플루언서이자 뷰스타 10년차 블로거 쏭다우니입니다! 
        예쁜 고퀄리티 사진과 영상으로 가이드 맞춤 꼼꼼리뷰 가능해요!
        인스타그램 (팔로워 1.5만 @ssongdawooni) 운영중입니다~
        잘부탁드립니다 :-)</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>디노아줌마</strong>
                                <p>하이볼 안주찾고있는데
        무뼈닭발+ 저세상 오돌뼈랑 하이볼 같이 먹고 생생후기 남기겠습니다ㅎㅎ </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>미타퐁</strong>
                                <p>홈술, 혼술이나 캠핑 가져가서 먹으려고 신청합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>복숭아꽃</strong>
                                <p>정성후기글 남기도록 할게요 </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>지지네</strong>
                                <p>정성스럽게 사진 찍어 올리겠습니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>신짱아</strong>
                                <p>저요</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>스위트피123</strong>
                                <p>취미생활로 리본공예를 하고 있습니다. 최근 자취를 하게 되면서 집밥을 만들어먹을 일이 많아졌습니다. 식품과 관련된 게시글도 체험단을 통해 게시하고 싶어져 신청합니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>이자매</strong>
                                <p>신청합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>아쿠홀릭</strong>
                                <p>꼼꼼한 후기 작성하겠습니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>빛나는청춘</strong>
                                <p>정성스런 후기 약속드립니다 :)</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>사커맘</strong>
                                <p>신청합니다 가이드라인에 맞게 꼼꼼 리뷰할게요 </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>이션</strong>
                                <p>꼼꼼한리뷰 작성하겠습니다!</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>소소한이</strong>
                                <p>신청합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>yuna</strong>
                                <p>가이드라인에 맞춰 꼼꼼리뷰 약속드려요:)♡</p>
        
                    
                </li>
                        <li>
                    <img src="./data/member/mb/2083885972_ZQRHK7uG_20220806_000649_509.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>영이의공간</strong>
                                <p>신청해용 </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>삐삐약</strong>
                                <p>가이드라인 잘지켜 꼼꼼하고 감각적이게 포스팅 가능해요 :)
        예쁘게 셋팅해서 촬영하고, 선명한사진 은 기본
        움짤 동영상 더해 꼼꼼한 후기 작성할게요 :D</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>다니엘조</strong>
                                <p>꼼꼼한 후기 남기겠습니다. 신청합니다. 감사합니다</p>
        
                    
                </li>
                        <li>
                    <img src="./data/member/mb/2109375314_ngd2YrJT_20190427_160350.jpg" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>천하평정</strong>
                                <p>화끈한 닭발과 함께 즐거운 포차 파티 즐기고 싶어 신청합니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>hikari</strong>
                                <p>성실히 리뷰할께요 </p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>hayo193</strong>
                                <p>맛있는 한상 리뷰 남기겠습니다</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>윤설iiiiiii</strong>
                                <p>신청합니당</p>
        
                    
                </li>
                        <li>
                    <img src="./data/member/mb/1888672917_Xj9hWt7r_EC82ACEBB3B8_-DSC07389.jpg" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>뜬금맘</strong>
                                <p>선정되면 가이드라인에 맞춰 꼼꼼한 포스팅 약속드립니다~</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>매미</strong>
                                <p>신청합니다. 정성스러운 리뷰를 약속드리겠습니다. 감사합니다.</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>제이5431</strong>
                                <p>식품 카테고리 있음 (포스팅 1,000개 보유중)</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>혜봉</strong>
                                <p>맛있게 먹고 꼼꼼하고 정성스런 리뷰 남기겠습니다~</p>
        
                    
                </li>
                        <li>
                    <img src="./data/member/mb/3745426848_hEsCM2be_IMG_7333.PNG" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>왠디</strong>
                                <p>디테일하고 정성가득한 포스팅합니다
        신청해봅니다.,</p>
        
                    
                </li>
                        <li>
                    <img src="./skin/demo/img/0001.png" class="avatar" style="background-color: transparent; opacity: 1; transition: opacity 0.1s;">
                    <strong>아봄</strong>
                                <p>중독성을 경험해보고 싶네요~</p>
        
                    
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
        var it_img = "https://www.storyn.kr/data/main/16639096363534913948_gybEU3tx_1.png";
        var it_name = "저세상푸드";
        var it_description = "#이세상맛이아니다 #중독성갑";
        var it_id = "1663909622";
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
        
        ﻿	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>