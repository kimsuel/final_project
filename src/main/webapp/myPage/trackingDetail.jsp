<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="../css/myPage.css">
<link rel="stylesheet" href="../css/myDialog.css">
<style type="text/css">
h3.myPage_title {padding-bottom: 10px; border-bottom: 4px solid black; margin: 0px;}

.trackingDetail {position: relative; overflow: hidden; height: auto;}
.trackingDetail h3 {padding-bottom: 10px; border-bottom: 4px solid black; margin: 0px;}
.trackingDetail .stepStatus {margin-top: 84px;}
.trackingDetail .stepStatus ul {display:table;width:100%;margin-top:84px;table-layout:fixed; padding:0px;}
.trackingDetail .stepStatus ul li {display:table-cell;position:relative;text-align:center;vertical-align:middle}
.trackingDetail .stepStatus ul li:last-child {padding-right: 0px;}
.trackingDetail .stepStatus ul li div {position:relative; display:block; text-align:center; width: 80%; padding: 35% 0px; background: #f4f4f4; border-radius: 50%;}
.trackingDetail .stepStatus ul li div.active{background: #303033; color: white;}
.trackingDetail .stepStatus ul li div span {vertical-align: middle; font-size: 16px;}
.trackingDetail .stepStatus ul li:after {
	display:block;clear:both;position:absolute;top:50%;right:4px;width:15px;height:15px;margin-top:-8px;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-top:1px solid #a0a0a0;border-right:1px solid #a0a0a0;content:""
}
.trackingDetail .stepStatus ul li:last-child:after {display: none;}
@media screen and (min-width:541px){
.trackingDetail .stepStatus li[_ngcontent-c10]{padding:0 2%}
.trackingDetail .stepStatus ul li div{display:block;margin:0 auto;padding-top:35%;border-radius:50%;background:#f4f4f4;font-weight:500;font-size:17px;color:#303033;text-align:center}
.trackingDetail .stepStatus ul li div span[_ngcontent-c10]{display:block;position:absolute;top:50%;width:100%;-webkit-transform:translateY(-50%);transform:translateY(-50%);text-align:center}
}

.order_detail {margin-top: 80px;}
.order_detail .order_table {border-top: 4px solid red; border-collapse: collapse;}

.my_info {margin-top: 80px;}
.my_info_table {width:100%; border-collapse: collapse;}
.my_info_table td{padding: 10px 0px 10px 3%; border-bottom: 1px solid #d4d4d4; border-left: 1px solid #d4d4d4;}
.my_info_table td:first-child {border-left: 0px;}

.my_payment {margin-top: 80px;}
.my_payment h3 {padding-bottom: 10px; border-bottom: 4px solid black; margin: 0px;}
.my_payment .my_payment_table {width: 100%; padding: 0px; margin: 0px;}
.my_payment .my_payment_table td{padding: 10px 0px 10px 3%; border-bottom: 1px solid #d4d4d4; border-left: 1px solid #d4d4d4;}
.my_payment .my_payment_table td:first-child {border-left: 0px;}
.my_payment .my_payment_table td * {padding: 10px 0px; margin: 0px;}
.my_payment .my_payment_table td div:nth-child(odd) {width: 30%; float: left;}
.my_payment .my_payment_table td div:nth-child(even) {width: 70%; float: left;}
.my_payment .my_payment_table td:nth-child(3) div:nth-child(odd) {width: 50%; float: left;}
.my_payment .my_payment_table td:nth-child(3) div:nth-child(even) {width: 50%; float: right; text-align: right;}

.my_addr {margin-top: 80px;}
.my_addr .my_addr_table {width: 100%;}
.my_addr .my_addr_table td {padding: 10px 0px 10px 3%; border-bottom: 1px solid #d4d4d4; border-left: 1px solid #d4d4d4;}
.my_addr .my_addr_table td:first-child {width: 15%; border-left: 0px;}
.my_addr .my_addr_table td:nth-child(3) {width: 15%;}
.my_addr .my_addr_table td:nth-child(4) {width: 35%;}

.my_btnbox {margin-top: 80px; text-align: right;}
.btn_black {min-width: 82px;padding: 0 17px;border: 1px solid #303033;background: #303033;font-size: 13px;color: #fff;line-height: 40px;}
</style>

<script>
$(document).ready(function(){
	$('#testBtn').click(function(){
		$('#dialog_frame').show();
	});
	$('#dialog_closeBtn').click(function(){
		$('#dialog_frame').hide();
	});
	
	if('${sessionScope.memberDTO}'=='') {
		$('.trackingDetail').css('width','80%').css('margin-left','10%');
	}
});
</script>

<section class="trackingDetail">
	<h3>??????????????????</h3>
	<div class="stepbox">
		???????????? <span>${param.logtime }${logtime }</span> ???????????? <span>${param.serial }</span>
	</div>
	<div class="stepStatus">
		<ul>
			<li><div><span>????????????</span></div></li>
			<li><div><span>????????????</span></div></li>
			<li><div><span>?????????</span></div></li>
			<!-- <li><div><span>????????????</span></div></li> -->
			<li><div><span>?????????</span></div></li>
			<li><div><span>????????????</span></div></li>
		</ul>
	</div>
	<div class="order_detail">
		<table class="tracking_table">
			<thead>
				<tr>
					<td width="70%">????????????</td>
					<td width="10%">?????????</td>
					<td width="20%">????????????</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="3">
						<div class="items">
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="my_info">
		<h3>???????????????</h3>
		<table class="my_info_table">
			<tr>
				<td width="15%">?????????</td>
				<td width="35%">${memberDTO.name }</td>
				<td width="15%">???????????????</td>
				<td width="35%">${memberDTO.email }</td>
			</tr>
			<tr>
				<td>????????????</td>
				<td>-</td>
				<td>???????????????</td>
				<td>${memberDTO.tel1 }-${memberDTO.tel2 }-${memberDTO.tel3 }</td>
			</tr>
		</table>
	</div>
	
	<div class="my_payment">
		<h3>?????? ????????????</h3>
		<table class="my_payment_table">
			<tr>
				<td width="33%">
					<h4>????????????</h4>
					<div>????????????</div>
					<div>109500???</div>
					<div>?????????</div>
					<div>0???</div>
				</td>
				<td width="33%">
					<h4>????????????</h4>
					<div>???????????? ??????</div>
					<div>(-)16425???</div>
					<div>?????? ??????</div>
					<div>(-)0???</div>
				</td>
				<td width="34%" rowspan="3">
					<div>??? ????????????</div>
					<div>109500???</div>
					<div>????????????</div>
					<div>(-)16425???</div>
					<div>??? ????????????</div>
					<div>93075???</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div>???????????? ??????</div>
					<div>1095 ???????????? ??????</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div>????????????</div>
					<div>??????????????? ???????????? ${buyListDTO.logtime }</div>
				</td>
			</tr>
		</table>
	</div>
	
	<div class="my_addr">
		<h3 class="myPage_title">????????? ??????</h3>
		<table class="my_addr_table">
			<tr>
				<td>????????????</td>
				<td colspan="3">${buyListDTO.name }</td>
			</tr>
			<tr>
				<td>????????????</td>
				<td>-</td>
				<td>???????????????</td>
				<td>${buyListDTO.tel1 }-${buyListDTO.tel2 }-${buyListDTO.tel3 }</td>
			</tr>
			<tr>
				<td>??????</td>
				<td colspan="3">${buyListDTO.addr1 } ${buyListDTO.addr2 }</td>
			</tr>
			<tr>
				<td>??????????????????</td>
				<td colspan="3"></td>
			</tr>
		</table>
	</div>
	
	<div class="my_btnbox">
		<button id="orderPrintBtn" class="btn_black">??????????????? ??????</button>
		<button id="receiptBtn" class="btn_black">????????? ??????</button>
	</div>
	
	<div id="dialog_frame">
		<div id="dialog">
			<i class="material-icons" id="dialog_closeBtn">clear</i>
			????????? ????????????
		</div>		
	</div>
</section>

<script type="text/javascript">
$(document).ready(function(){
	$('.my_shop > ul:eq(0) > li:eq(0) > a').css('font-weight', '800');
	
	var sum = 0;
	//??????????????? ???????????? ????????? ??????
	$('.stepbox').each(function(index){
		$.ajax({
			type : 'POST',
			url : '/finalProject/myPage/getSerialMapper.do',
			data : {'serial' : $(this).children().last().text() },
			dataType : 'json',
			success : function(data) {
				$.each(data.list, function(index, item){
					$('.items').append($('<div/>',{
						class : 'item'
					}).append($('<div/>',{
						class : 'item_1'
					}).append($('<div/>',{
						class : 'item_image'
					}).append($('<img/>',{
						src : '../image/'+item.MAIN_CODENAME+'/'+item.IMG
					})).append($('<div/>',{
						class : 'item_info'
					}).append($('<div/>',{
						class : 'item_name',
						text : item.NAME
					})).append($('<div/>',{
						class : 'item_size',
						text : '[Size] '+item.SIZE1+(item.SIZE2==null ? '' : item.SIZE2)
					})).append($('<div/>',{
						class : 'item_count',
						text : item.PRICE+"??? / ?????? "+item.COUNT+"???"
					}))))).append($('<div/>',{
						class : 'item_2',
						text : '????????????'
					})).append($('<div/>',{
						class : 'item_3',
					}).append($('<strong/>',{
						text : item.STATUS
					})).append($('<br/>')).append($('<span/>',{
						text : item.PARCEL
					})).append($('<a/>',{
						class : 'searchDelivery',
						href : 'javascript:void(0)',
						text : item.PARCEL_CODE
					}))));
					sum += (parseInt(item.PRICE) * parseInt(item.COUNT));
					
					if(data.list.length==index+1) {
						//?????? ????????????
						$('.my_payment_table tr:eq(0) td:eq(0) div:eq(1)').text(sum+"???");
						$('.my_payment_table tr:eq(1) td:eq(0) div:eq(1)').text((sum*0.01)+" ???????????? ??????");
						$('.my_payment_table tr:eq(0) td:eq(2) div:eq(1)').text(sum+"???");
						$('.my_payment_table tr:eq(0) td:eq(1) div:eq(1)').text('(-)'+item.POINT+'???');
						$('.my_payment_table tr:eq(0) td:eq(2) div:eq(3)').text('(-)'+item.POINT+'???');
						var minus = $('.my_payment_table tr:eq(0) td:eq(1) div:eq(1)').text();
						minus = minus.substring(3,minus.length-1);
						$('.my_payment_table tr:eq(0) td:eq(2) div:eq(5)').text((sum-minus)+"???");
						
						$('.my_addr_table tr:eq(3) td:eq(1)').text(item.COMMENTS);
						
						var status = item.STATUS;
						$('.stepStatus ul li').each(function(index, item){
							$(this).children().eq(0).prop('class','');
							if($(this).find('span').text()==status) {
								$(this).children().eq(0).prop('class','active');
							}
						});
					}
				});
			}
		});
	});
	
	$(document).on('click','.searchDelivery', function(){
		window.open('https://service.epost.go.kr/trace.RetrieveDomRigiTraceList.comm?sid1='+$(this).text()+'&displayHeader=N'
				,"","width=730 height=800 scrollbars=yes");
	});
	
	$('#receiptBtn').click(function(){
		window.open('https://iniweb.inicis.com/app/publication/apReceipt.jsp',"","width=425 height=600 scrollbars=yes");
	});
	
	$('#orderPrintBtn').click(function() {
		window.open('/finalProject/myPage/orderList.do?serial=${param.serial}',"","width=600 height=600 scrollbars=yes");
	});
	
});
</script>