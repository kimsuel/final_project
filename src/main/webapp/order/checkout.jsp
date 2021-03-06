<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Insert title here</title>
<style type="text/css">
.button {
	background-color: white;
 	border: 1px solid #d4d4d4;
 	color: black; 
 	padding: 10px 20px; 
 	text-align: center; 
 	text-decoration: none;
 	display: inline-block; 
 	font-size: 10px; 
 	vertical-align: middle;
 	cursor: pointer;}
.checkBtn {background-color: black; border: none; color: white; padding: 28px 38%; text-align: center; text-decoration: none; display: inline-block; font-size: 20px; margin: 4px 2px; cursor: pointer;}
#floatMenu {
	position: absolute;
	width: 200px;
	height: 500px;
	left: 55%;
	top: 380px;
	background-color: white;
	color: black;
}

#img_menu{
	margin-top: 50px;
	overflow: auto;
	height: 500px;
}

.checkout1 td {
	padding : .6em; .4em;
}
.checkout2 td {
	padding : .6em; .4em;
}
#checkDeliveryList_frame{
	background-color: rgba(255,255,255,0.8);
    z-index: 1000;
    opacity: 1;
	display: none;
    position: fixed;
    overflow: hidden;
    overflow-y: scroll;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    text-align: center;
}


input[type=text]{
	padding: 5px 0px;
	vertical-align: middle;
}

#agree_frame{
	width: inherit;
    height: inherit;
    padding: 30px 40px 40px 40px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 700px;
    height: 120px;
    z-index: 100;
    text-align: center;
    font-size : 13pt;
    font-weight: 700;
    text-align: center;
}

#sendPerson_frame{
	width: inherit;
    height: inherit;
    padding: 30px 40px 40px 40px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 400px;
    height: 120px;
    z-index: 100;
    text-align: center;
    font-size : 13pt;
    font-weight: 700;
    text-align: center;
}

#sendTel_frame{
	width: inherit;
    height: inherit;
    padding: 30px 40px 40px 40px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 500px;
    height: 120px;
    z-index: 100;
    text-align: center;
    font-size : 13pt;
    font-weight: 700;
    text-align: center;
}

#sendEmail_frame{
	width: inherit;
    height: inherit;
    padding: 30px 40px 40px 40px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 500px;
    height: 120px;
    z-index: 100;
    text-align: center;
    font-size : 13pt;
    font-weight: 700;
    text-align: center;
}

#name_frame{
	width: inherit;
    height: inherit;
    padding: 30px 40px 40px 40px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 500px;
    height: 120px;
    z-index: 100;
    text-align: center;
    font-size : 13pt;
    font-weight: 700;
    text-align: center;
}

#tel_frame{
	width: inherit;
    height: inherit;
    padding: 30px 40px 40px 40px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 500px;
    height: 120px;
    z-index: 100;
    text-align: center;
    font-size : 13pt;
    font-weight: 700;
    text-align: center;
}
#zipcode_frame{
	width: inherit;
    height: inherit;
    padding: 30px 40px 40px 40px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 500px;
    height: 120px;
    z-index: 100;
    text-align: center;
    font-size : 13pt;
    font-weight: 700;
    text-align: center;
}
#addr_frame{
	width: inherit;
    height: inherit;
    padding: 30px 40px 40px 40px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 500px;
    height: 120px;
    z-index: 100;
    text-align: center;
    font-size : 13pt;
    font-weight: 700;
    text-align: center;
}
#point_frame{
	width: inherit;
    height: inherit;
    padding: 30px 40px 40px 40px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 500px;
    height: 120px;
    z-index: 100;
    text-align: center;
    font-size : 13pt;
    font-weight: 700;
    text-align: center;
}
#loading_frame {
	background-color: transparent;
    z-index: 1000;
    opacity: 1;
	display: none;
    position: fixed;
    overflow: hidden;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    text-align: center;
}
#loading{
	width: inherit;
    height: inherit;
    padding: 10px 10px 10px 10px;
    background-color: rgba(255, 255, 255, 1);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    border-radius: 10px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 120px;
    height: 120px;
    z-index: 100;
    text-align: center;
    font-size : 13pt;
    font-weight: 700;
    text-align: center;
}

#checkDeliveryList {
	width: inherit;
    height: inherit;
    padding: 30px 40px 40px 40px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.5) 20px 20px 80px 0px;
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
    position: fixed;
    top: 50%;
    left: 50%;
    box-sizing: border-box;
    width: 500px;
    height: 400px;
    overflow: scroll;
}

#checkDeliveryList_closeBtn{
	position: fixed;
	top: 5px;
	right: 5px;
	cursor: pointer;
}

#agree_closeBtn{
	position: fixed;
	top: 5px;
	right: 5px;
	cursor: pointer;
}
#sendPerson_closeBtn{
	position: fixed;
	top: 5px;
	right: 5px;
	cursor: pointer;
}
#sendTel_closeBtn{
	position: fixed;
	top: 5px;
	right: 5px;
	cursor: pointer;
}
#sendEmail_closeBtn{
	position: fixed;
	top: 5px;
	right: 5px;
	cursor: pointer;
}
#name_closeBtn{
	position: fixed;
	top: 5px;
	right: 5px;
	cursor: pointer;
}
#tel_closeBtn{
	position: fixed;
	top: 5px;
	right: 5px;
	cursor: pointer;
}

#zipcode_closeBtn{
	position: fixed;
	top: 5px;
	right: 5px;
	cursor: pointer;
}

#addr_closeBtn{
	position: fixed;
	top: 5px;
	right: 5px;
	cursor: pointer;
}
#point_closeBtn{
	position: fixed;
	top: 5px;
	right: 5px;
	cursor: pointer;
}
#beforeDeliveryList{
	padding: .8em; .4em;
}
#itemConfirm{
	position: absolute; 
	border-bottom: 1px solid; 
	width: 100%;
	font-size: 18pt;
	font-weight: 800;
}

#agree_okBtn{
 	border: 1px solid #d4d4d4;
	width: 120px;
	height: 40px;
	bottom: 20px;
	left: 80px;
	background-color: white;
	color: black;
	outline: none;
	cursor: pointer;	
}
#sendPerson_okBtn{
	border: 1px solid #d4d4d4;
	width: 120px;
	height: 40px;
	bottom: 20px;
	left: 80px;
	background-color: white;
	color: black;
	outline: none;
	cursor: pointer;	
}

#sendTel_okBtn{
	border: 1px solid #d4d4d4;
	width: 120px;
	height: 40px;
	bottom: 20px;
	left: 80px;
	background-color: white;
	color: black;
	outline: none;
	cursor: pointer;
}

#sendEmail_okBtn{
	border: 1px solid #d4d4d4;
	width: 120px;
	height: 40px;
	bottom: 20px;
	left: 80px;
	background-color: white;
	color: black;
	outline: none;
	cursor: pointer;
}
#name_okBtn{
	border: 1px solid #d4d4d4;
	width: 120px;
	height: 40px;
	bottom: 20px;
	left: 80px;
	background-color: white;
	color: black;
	outline: none;
	cursor: pointer;
}
#tel_okBtn{
	border: 1px solid #d4d4d4;
	width: 120px;
	height: 40px;
	bottom: 20px;
	left: 80px;
	background-color: white;
	color: black;
	outline: none;
	cursor: pointer;
}
#zipcode_okBtn{
	border: 1px solid #d4d4d4;
	width: 120px;
	height: 40px;
	bottom: 20px;
	left: 80px;
	background-color: white;
	color: black;
	outline: none;
	cursor: pointer;
}
#addr_okBtn{
	border: 1px solid #d4d4d4;
	width: 120px;
	height: 40px;
	bottom: 20px;
	left: 80px;
	background-color: white;
	color: black;
	outline: none;
	cursor: pointer;
}
#point_okBtn{
	border: 1px solid #d4d4d4;
	width: 120px;
	height: 40px;
	bottom: 20px;
	left: 80px;
	background-color: white;
	color: black;
	outline: none;
	cursor: pointer;
}
#originDelivery{
	background: black;
	border: 1px solid black;
	color : white;
}
span.active {color:black; font-weight: bold;}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var floatPosition = parseInt($("#floatMenu").css('top'));
	var totalSum = 0;
	
	$('.itemList').each(function(index){
		var nowTag = $(this);
		$.ajax({
			type : 'POST',
			url : '/finalProject/order/getItemDetail.do',
			data : {'seq' : $(this).children().eq(1).find('span:eq(0)').text()},
			dataType : 'json',
			success : function(data) {
				var price = parseFloat(data.itemDTO.price*(1-data.itemDTO.discount)).toFixed(0);
				nowTag.children().eq(0).find('img').prop('src','../image/'+data.itemDTO.main_codename+'/'+data.itemDTO.img);
				nowTag.children().eq(1).find('span:eq(0)').text(data.itemDTO.main_codename);
				nowTag.children().eq(1).find('strong').text(data.itemDTO.name);
				if(data.itemDTO.discount!=0)
					nowTag.children().eq(1).find('span:eq(2)').find('span:eq(0)').text('['+(data.itemDTO.discount*100)+'%]');
				nowTag.children().eq(1).find('span:eq(2)').find('span:eq(1)').text(price);
				var count = parseInt(nowTag.children().eq(1).children().last().children().last().text());
				totalSum += parseInt(price) * count;
				
				$('#totalItemPrice').text(totalSum);
				$('#resultPrice').text(totalSum);
			}
		});
	});
	
	$('#newDelivery').on('click',function(){
		$('#name').val("");
		$('#tel1').val("");
		$('#tel2').val("");
		$('#tel3').val("");
		$('#zipcode').val("");
		$('#addr1').val("");
		$(this).css('background', 'black').css('border', '1px solid black').css('color', 'white');
		$('#originDelivery').css('background', 'white').css('border', '1px solid #d4d4d4').css('color', 'black');
	});
	
	$('#originDelivery').on('click', function(){
		$('#newDelivery').css('background', 'white').css('border', '1px solid #d4d4d4').css('color', 'black');
		$(this).css('background', 'black').css('border', '1px solid black').css('color', 'white');
		$('#name').val('${memberDTO.name}');
		$('#tel1').val('${memberDTO.tel1}');
		$('#tel2').val('${memberDTO.tel2}');
		$('#tel3').val('${memberDTO.tel3}');
		$('#zipcode').val('${memberDTO.zipcode}');
		$('#addr1').val('${memberDTO.addr1}');
	});
	
	$('#choiceDeliveryList').click(function(){
		$('#checkDeliveryList_frame').show();
	});
	
	$('#checkDeliveryList_closeBtn').click(function(){
		$('#checkDeliveryList_frame').hide();
		
	});
	
	$('#checkDeliveryList').on('click','a',function(){		
		$('#name').val($(this).children().eq(0).text());
		$('#tel1').val($(this).children().eq(1).children().eq(0).text());
		$('#tel2').val($(this).children().eq(1).children().eq(1).text());
		$('#tel3').val($(this).children().eq(1).children().eq(2).text());
		$('#zipcode').val($(this).children().eq(2).children().eq(0).text());
		$('#addr1').val($(this).children().eq(2).children().eq(1).text());
		$('#addr2').val($(this).children().eq(2).children().eq(2).text());
		$('#checkDeliveryList_frame').hide();
	});

	
	// ????????????
	$('#addrBtn').on('click',function(){
		new daum.Postcode({
            oncomplete: function(data) {

                var fullAddr = ''; // ?????? ?????? ??????
                var extraAddr = ''; // ????????? ?????? ??????

                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                    fullAddr = data.roadAddress;

                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                    fullAddr = data.jibunAddress;
                }

                if(data.userSelectedType === 'R'){
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                $('#zipcode').val(data.zonecode);
                $('#addr1').val(fullAddr);

                // ????????? ???????????? ????????? ????????????.
                document.getElementById('addr2').focus();
            }
        }).open();
	});
	$('#dialog_closeBtn').click(function(){
		$('#dialog_frame').hide();
	});
	
	$('#usingPoint').click(function(){
		if($('#usingPoint').val()=='????????????') {
			$('#usingPoint').val('????????????');
			$('#pointDiv').val('${memberDTO.point}');
			$('#checkoutPoint').val('${memberDTO.point}');
			$('#havePoint').text('0');			
		}else if($('#usingPoint').val()=='????????????') {
			$('#usingPoint').val('????????????');
			$('#pointDiv').val('0');
			$('#checkoutPoint').val('0');
			$('#havePoint').text('${memberDTO.point}');			
		}
		$('#checkoutPoint').text($(this).prev().val());
		$('#resultPrice').text($('#totalItemPrice').text()-$('#checkoutPoint').val());
	});
	
	$('#pointDiv').keyup(function(){
		var min = 0;
		point = parseInt($('#pointDiv').val().replace(/,/g,'')|| '0');
		
		if($(this).val() !=null && $(this).val() !=''){
			var tmps = parseInt($(this).val().replace(/[^0-9]/g, '')) || '0';
			var tmps2 = tmps.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, '$1');
			$(this).val(tmps2);
		}

		if(parseInt('${memberDTO.point}') > parseInt($(this).val())) {
			$('#usingPoint').val('????????????');
			$('#havePoint').text(parseInt('${memberDTO.point}')-parseInt($(this).val()));
		}else if($(this).val()=='') {
			$('#usingPoint').val('????????????');
			$('#havePoint').text('${memberDTO.point}');
			$(this).val('0');
		}else {
			$('#usingPoint').val('????????????');
			$('#havePoint').text('0');
			$(this).val('${memberDTO.point}');
		}
		
		$('#checkoutPoint').text($(this).val());
		$('#resultPrice').text($('#totalItemPrice').text()-$(this).val());
	});
	
	$('#finalCheckout').click(function(){
		if($('.agreeBx').prop('checked')){			
			if($('.agreeBx').prop('checked', true)){
				if($('#sendPerson').val()==""){
					$('.sendPerson_frame').show();
				}else if($('#sendTel1').val()==""){
					$('.sendTel_frame').show();
				}else if($('#sendTel2').val()==""){
					$('.sendTel_frame').show();
				}else if($('#sendTel3').val()==""){
					$('.sendTel_frame').show();
				}else if($('#sendEmail').val()==""){
					$('.sendEmail_frame').show();
				}else if($('#name').val()==""){
					$('.name_frame').show();
				}else if($('#tel1').val()==""){
					$('.tel_frame').show();
				}else if($('#tel2').val()==""){
					$('.tel_frame').show();
				}else if($('#tel3').val()==""){
					$('.tel_frame').show();
				}else if($('#zipcode').val()==""){
					$('.zipcode_frame').show();
				}else if($('#addr1').val()==""){
					$('.zipcode_frame').show();
				}else if($('#addr2').val()=="" && !$('.detailAddr').prop('checked')){
					$('.addr_frame').show();
				}else if(parseInt($('#pointDiv').val())%10 != 0){
					$('.point_frame').show();
				}else {
					//alert('?????? ??????');
					requestPay();
					//checkoutDB();
				}
			}
		}else if($('.agreeBx').prop('checked', false)){			
			$('.agree_frame').show();
		}
	});
	
	$('#agree_closeBtn').click(function(){
		$('#agree_frame').hide();
	});
	$('#agree_okBtn').click(function(){
		$('#agree_frame').hide();
	});
	$('#sendPerson_closeBtn').click(function(){
		$('#sendPerson_frame').hide();
	});
	$('#sendPerson_okBtn').click(function(){
		$('#sendPerson_frame').hide();
	});
	$('#sendTel_closeBtn').click(function(){
		$('#sendTel_frame').hide();
	});
	$('#sendTel_okBtn').click(function(){
		$('#sendTel_frame').hide();
	});
	$('#sendEmail_closeBtn').click(function(){
		$('#sendEmail_frame').hide();
	});
	$('#sendEmail_okBtn').click(function(){
		$('#sendEmail_frame').hide();
	});
	$('#name_okBtn').click(function(){
		$('#name_frame').hide();
	});
	$('#name_closeBtn').click(function(){
		$('#name_frame').hide();
	});
	$('#tel_closeBtn').click(function(){
		$('#tel_frame').hide();
	});
	$('#tel_okBtn').click(function(){
		$('#tel_frame').hide();
	});
	$('#zipcode_closeBtn').click(function(){
		$('#zipcode_frame').hide();
	});
	$('#zipcode_okBtn').click(function(){
		$('#zipcode_frame').hide();
	});
	$('#addr_okBtn').click(function(){
		$('#addr_frame').hide();
	});
	$('#addr_closeBtn').click(function(){
		$('#addr_frame').hide();
	});
	$('#point_okBtn').click(function(){
		$('#point_frame').hide();
		$('#pointDiv').focus();
	});
	$('#point_closeBtn').click(function(){
		$('#point_frame').hide();
		$('#pointDiv').focus();
	});
	
	$("input[name='radioTxt']:radio").change(function(){
		var checkRadio = this.value;
		if(checkRadio == "1"){
			$('#requestChoice').prop("readonly", true);
			$('#requestChoice').val("?????? ??? ???????????? ?????? ?????????.");
		}else if(checkRadio =="2"){
			$('#requestChoice').prop("readonly", true);
			$('#requestChoice').val("?????? ??? ?????? ?????? ?????? ?????????.");
		}else if(checkRadio == "3"){
			$('#requestChoice').prop("readonly", true);
			$('#requestChoice').val("???????????? ?????? ?????????.");
		}else if(checkRadio == "4"){
			$('#requestChoice').prop("readonly", false);
			$('#requestChoice').val("");
		}
	});
	
	
	//????????? ??????
	var IMP = window.IMP; // ????????????
	
	IMP.init('imp50043848');  // ????????? ?????? ??????

	function requestPay() {
		IMP.request_pay({
		    pg : 'kakao', // ????????????
		    pay_method : 'card',	// ?????? ??????
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '?????????: Bbanb ?????? ??????',	// order ???????????? ????????? ????????? ?????? ?????? ??????
		    //amount : $('#resultPrice').text(),	// ?????? ?????? 
		    amount : '1000',
		    buyer_email : '${memberDTO.email}',	// ????????? email
		    buyer_name :  '${memberDTO.name}',	// ????????? ??????
		    buyer_tel :  '${memberDTO.tel1}-${memberDTO.tel2}-${memberDTO.tel3}',	// ????????? ????????????
		    buyer_addr :  '${memberDTO.addr1} ${memberDTO.addr2}',	// ????????? ??????
		    buyer_postcode :  '${memberDTO.zipcode}',	// ????????? ????????????
		    m_redirect_url : 'http://localhost:8080/finalProject/myPage/tracking.do'	// ?????? ?????? ??? ?????? ??????????????? ????????????
		}, function(rsp) {
			if ( rsp.success ) { // ?????????
				var msg = '????????? ?????????????????????.';
				msg += '??????ID : ' + rsp.imp_uid;
				msg += '?????? ??????ID : ' + rsp.merchant_uid;
				msg += '?????? ?????? : ' + rsp.paid_amount;
				msg += '?????? ???????????? : ' + rsp.apply_num;
				
				//DB??????
				checkoutDB();
			} else { // ?????????
				var msg = '????????? ?????????????????????.';
				msg += '???????????? : ' + rsp.error_msg;
			}
			//alert(msg);
		});
	}
	
	function checkoutDB() {
		//DB??????
		$.ajax({
			type : 'POST',
			url : '/finalProject/order/buyItems.do',
			data : $('#checkoutForm').serialize(),
			dataType : 'text',
			success : function(data) {
				location.href="/finalProject/myPage/tracking.do";
			}
			, beforeSend: function () {
				$('#loading_frame').show();
			}
			, complete: function () {
				$("#loading_frame").hide();
			}
		});
	}
	
});
</script>
</head>

<body>
<div id="agree_frame" class="agree_frame" style="display: none;">
	<div id="agree">
		<i class="material-icons" id="agree_closeBtn">clear</i>
		<div align="center">
			???????????? ?????? ??? ??????, ???????????? ?????? ????????? ??????????????????.<br>			
		</div>
		<button id="agree_okBtn" type="button">??????</button>		
	</div>
</div>		

<div id="sendPerson_frame" class="sendPerson_frame" style="display: none;">
	<div id="sendPersonDiv">
		<i class="material-icons" id="sendPerson_closeBtn">clear</i>
		<div>
			????????? ?????? ????????? ???????????? ???????????????.
		</div>
		<button id="sendPerson_okBtn" type="button">??????</button>
	</div>
</div>
	
<div id="sendTel_frame" class="sendTel_frame" style="display: none;">
	<div id="sendTelDiv">
		<i class="material-icons" id="sendTel_closeBtn">clear</i>
		<div>
			????????? ?????? ???????????? ???????????? ???????????????.
		</div>
		<button id="sendTel_okBtn" type="button">??????</button>
	</div>
</div>

<div id="sendEmail_frame" class="sendEmail_frame" style="display: none;">
	<div id="sendEmailDiv">
		<i class="material-icons" id="sendEmail_closeBtn">clear</i>
		<div>
			????????? ????????? ????????? ?????????.
		</div>
		<button id="sendEmail_okBtn" type="button">??????</button>
	</div>
</div>

<div id="name_frame" class="name_frame" style="display: none;">
	<div id="nameDiv">
		<i class="material-icons" id="name_closeBtn">clear</i>
		<div>
			?????? ?????? ????????? ???????????? ???????????????.
		</div>
		<button id="name_okBtn" type="button">??????</button>
	</div>
</div>	
	
<div id="tel_frame" class="tel_frame" style="display: none;">
	<div id="telDiv">
		<i class="material-icons" id="tel_closeBtn">clear</i>
		<div>
			???????????? ???????????? ???????????????.
		</div>
		<button id="tel_okBtn" type="button">??????</button>
	</div>
</div>

<div id="zipcode_frame" class="zipcode_frame" style="display: none;">
	<div id="telDiv">
		<i class="material-icons" id="zipcode_closeBtn">clear</i>
		<div>
			??????????????? ???????????? ???????????????.
		</div>
		<button id="zipcode_okBtn" type="button">??????</button>
	</div>
</div>

<div id="addr_frame" class="addr_frame" style="display: none;">
	<div id="telDiv">
		<i class="material-icons" id="addr_closeBtn">clear</i>
		<div>
			??????????????? ???????????? ???????????????.
		</div>
		<button id="addr_okBtn" type="button">??????</button>
	</div>
</div>

<div id="point_frame" class="point_frame" style="display: none;">
	<div id="telDiv">
		<i class="material-icons" id="point_closeBtn">clear</i>
		<div>
			??????????????? 10??? ???????????? ?????????????????????.
		</div>
		<button id="point_okBtn" type="button">??????</button>
	</div>
</div>

<div id="loading_frame" style="">
	<div id="loading">
		<img src="../image/main/loading.gif" style="width: 100px; height: 100px;">
	</div>
</div>

<div id="checkDeliveryList_frame" style="display: none;">
	<div id="checkDeliveryList">
		<div style="text-align: left;">
			<i class="material-icons" id="checkDeliveryList_closeBtn">clear</i>
			<h3>????????? ??????</h3>
			<div align="center" style="width:100%; border: 1px solid;"></div>
			<c:if test="${not empty originList }">
				<c:forEach var="data" items="${originList }">			
					<div id="beforeDeliveryList">
						<a href="javascript:void(0)" style="color:black;">
							<div id="sendName">${data.name }</div>
							<div id="sendTel">TEL : <span>${data.tel1}</span>-<span>${data.tel2 }</span>-<span>${data.tel3 }</span></div>
							<div id="sendAddr">[<span>${data.zipcode }</span>] <span>${data.addr1 }</span> <span>${data.addr2}</span></div>
						</a>
					</div>
					<div align="center" style="width:100%; border: 1px solid; background-color: black;"></div>
				</c:forEach>
			</c:if>
		</div>
	</div>
</div>

<div align="center">
<h3>
<span>01 shoppingBag</span> >
<span class="active">02 order</span> >
<span>03 order confirmed</span>
</h3>
</div>

<!-- ?????? div -->
<form name="checkoutForm" id="checkoutForm" method="POST" action="/finalProject/order/buyItems.do">
<div style="width:50%; float:left; margin-left: 50px; margin-right:50px;">
<p>
*????????? ???????????? ??????
</p>
<div align="center" style="width:100%; border: 2px solid;"></div>
<h3>????????? ??????</h3>
<div align="center" style="width:100%; border: 1px solid;"></div>
	<table class="checkout1">
		<tr>	
			<td width="180px">* ????????? ??????</td>
			<td><input type="text" size="60" id="sendPerson" value="${memberDTO.name }">
		</tr>
		<tr>	
			<td width="180px">* ?????????</td>
			<td>
				<input type="text" size="4" id="sendTel1" value="${memberDTO.tel1 }"> -
				<input type="text" size="4" id="sendTel2" value="${memberDTO.tel2 }"> -
				<input type="text" size="4" id="sendTel3" value="${memberDTO.tel3 }">
			</td>
		</tr>
		<tr>
			<td width="180px">* ?????????</td>
			<td><input type="text" size="60" name="email" id="sendEmail" value="${memberDTO.email }"><br>
			<span style="font-size:9pt;">SNS ??? ???????????? ?????? ??????????????? ?????????????????????</span>
			</td>
		</tr>
	</table>
<br><br>
<div>
	<button type="button" class="button" id="originDelivery">???????????????</button>
	<button type="button" class="button" style="margin-left: -4px;" id="newDelivery">??????????????????</button>
</div>
<div style="width:100%; border:1px solid;"></div>
	<table class="checkout2">
		<tr>
			<td width="180px">?????? ?????????</td>
			<td>
			<button type="button" class="button" id="choiceDeliveryList">?????????????????? ??????</button>
			</td>
		</tr>
		<tr>
			<td width="180px">* ?????? ??????</td>
			<td><input type="text" name="name" id="name" size="60" value="${memberDTO.name}"></td>
		</tr>
		<tr>
			<td width="180px">* ?????????</td>
			<td>
			<input type="text" name="tel1" size="4" id="tel1" value="${memberDTO.tel1 }"> - 
			<input type="text" name="tel2" size="4" id="tel2" value="${memberDTO.tel2 }"> -
			<input type="text" name="tel3" size="4" id="tel3" value="${memberDTO.tel3 }">
			</td>
		</tr>
		<tr>
			<td width="180px" valign="top">* ????????????</td>
			<td>
			<input type="text" size="30" name="zipcode" id="zipcode" value="${memberDTO.zipcode }"> 
				<button class="button" type="button" id="addrBtn">????????????</button><br>
			<input type="text" size="60" name="addr1" id="addr1" value="${memberDTO.addr1 }">
			<input type="text" size="60" name="addr2" id="addr2" placeholder="???????????? ??????" value="${memberDTO.addr2 }"><br>
			<input type="checkbox" id="detailAddr" class="detailAddr"> ???????????? ???????????? ??????<br>
			<input type="checkbox" id="updateAddr" name="updateAddr" value="true"> ?????????????????? ??????(???????????? ????????? ???????????????.)
			</td>
		</tr>
		<tr>
			<td width="180px" valign="top">?????????????????? ??????</td>
			<td>
				<input type="radio" name="radioTxt" value="1"> ?????? ??? ???????????? ?????? ?????????.<br>
				<input type="radio" name="radioTxt" value="2"> ?????? ??? ?????? ?????? ?????? ?????????.<br>
				<input type="radio" name="radioTxt" value="3"> ???????????? ?????? ?????????.<br>
				<input type="radio" name="radioTxt" value="4"> ?????? ??????<br>
				<input type="text" name="comments" id="requestChoice" size="60">
			<br><br>
			<span>- ???????????? ????????? ?????? ?????? ?????? ??? ?????? ???????????? ????????? ??? ?????????, ??????????????? ???????????????.</span><br>
			<span style="color:red">
			- ????????? ????????? ??? ???????????? ????????? ???????????? ???????????? ?????? ?????? ????????? ????????? ???????????? ????????? ?????? ??? ?????? ????????? ????????? ?????? ??????.<br>
			- ?????? ???????????? ?????? ????????? ?????? ???, ????????? ??? ??????????????????. ????????? ??? ?????? ????????? ?????? ???????????? ?????? ?????? ????????? ???????????????.</span>
			</td>
		</tr>
	</table>
<br><br>

<c:if test="${memberDTO != null }">
<div style="width:100%; border: 2px solid;"></div>
<h3>???????????? ??????</h3>
<div style="width:100%; border: 1px solid;"></div>
		<table class="checkout3">
			<tr>
				<td width="180px">????????????</td>
				<td><input type="text" name="point" size="14" id="pointDiv" style="text-align: right;" value="0">
				<input type="button" value="????????????" id="usingPoint" class="button">&emsp;
				?????? ???????????? <span id="havePoint">${memberDTO.point }</span>???</td>			
			</tr>
		</table>
<br><br>
</c:if>

<div style="width:100%; border: 2px solid;"></div>
<h3>???????????? ??????</h3>
<div style="width:100%; border: 1px solid;"></div>
<br><br>
<table>
	<tr>
      <td>
         <button type="button" class="button">???????????????</button>
      </td>
   </tr>
   <tr>
      <td>
         <span>
         <br><h4>??????????????? ??????</h4><br>
         ??????????????? ???????????? ?????? ??? ?????? ?????? ????????? ?????? ????????? ????????? ?????? ????????? ??? ????????????.
         ????????? ????????? ????????????????????? ???????????? ???????????? ????????? ??????????????????.
         </span><br><br><br>
      </td>
   </tr>
</table>
</div>

<!-- ????????? div -->
<div id="floatMenu" style="width:40%; height:auto; border:3px solid black; float:left;">
<div id="itemConfirm">???????????? ?????? / ???<span>${fn:length(list) }</span>???</div>
<div id="img_menu">
	<table>
		<c:if test="${sessionScope.list != null }">
			<c:forEach var="data" items="${sessionScope.list }">
				<tr class="itemList">
					<td width="200px">
						<img width="180" height="180" style="margin-top: 30px;
						 margin-left: 10px;"> 
					</td>
					<td style="margin-top: 20px;">
						<span>${data.seq }</span><br>
						<strong></strong><br><br>
						<span style="font-size:9pt;">??????: [Color]${data.color} [Size]${data.size1 }${data.size2 }</span><br><br>
						<span style="color:red; font-size:11pt;">
						<span></span>
						<span></span>??? / <span>${data.count }</span></span>
					</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</div>
<div style="width:100%; border: 1px solid;"></div>
<table align="center" style="width:90%;">
	<tr>
		<td align="left" style="margin-left: 10px;" > ???????????????</td>
		<td align="right"><span id="totalItemPrice"></span>??? </td>
	</tr>
	<tr>
		<td align="left" style="margin-left: 10px;"> ?????????</td>
		<td align="right">0??? </td>
	</tr>
	<tr>
		<td align="left" style="margin-left: 10px;"> ???????????? ??????</td>
		<td align="right" name="checkoutPoint"><span id="checkoutPoint">0</span>???</td>
	</tr>
	<tr>
		<td align="left" style="margin-left: 10px;"> ??? ????????????</td>
		<td align="right"><span id="resultPrice"></span>??? </td>
	</tr>
	<tr>
		<td colspan="2">
		<span><br><br></span>
		<input type="checkbox" class="agreeBx" id="agreeBx">???????????? ?????? ??? ??????, ???????????? ??????????????????, ?????? ???????????????. (??????)
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center" style="margin-left: 20px;">
			<button class="checkBtn" type="button" id="finalCheckout">CHECK OUT</button>
		</td>
	</tr>
</table>
</div>
</form>
</body>
</html>