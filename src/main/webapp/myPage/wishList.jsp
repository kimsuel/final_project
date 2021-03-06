<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>찜목록</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="../css/paging.css">
<link rel="stylesheet" href="../css/itemList.css">
    
<style>
	.large_tab {margin-bottom: 30px;}
	.large_tab > ul:after{display:table;clear:both;content:""}
	.large_tab > ul > li > a{display:inline-block;position:relative;text-transform:uppercase}
	
	@media screen and (min-width:541px){
		.large_tab{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}
		.large_tab > ul > li{float:left;padding:0 18px}
		.large_tab > ul > li > a{font-size:18px;line-height:42px;color:#5d5d5d;font-weight:200}
		.large_tab > ul > li > a.active{font-size:24px;line-height:40px;color:#000;font-weight:700}
		.large_tab > ul > li > a.active:before{position:absolute;top:60%;left:18px;z-index:-1;background:#ff4800;width:96%;height:25px;background:url(https://img.29cm.co.kr/next29cm/navibar.png) 50% 100% no-repeat;background-size:auto 25px;content:""}
		.large_tab > ul > li + li:before{display:inline-block;width:1px;height:40px;margin:0 31px 0 0;background:#d4d4d4;vertical-align:top;content:""}
	}
	
	@media screen and (max-width:540px){
		.large_tab{-ms-flex-wrap:nowrap;flex-wrap:nowrap;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;overflow:auto;-webkit-overflow-scrolling:touch;-webkit-appearance:none;-webkit-backface-visibility:hidden;-webkit-transform:translateZ(0);-webkit-perspective:0}
		.large_tab, .large_tab ul{display:-webkit-box;display:-ms-flexbox;display:flex}
		.large_tab > ul{width:100%}
		.large_tab > ul > li{-webkit-box-flex:1;-ms-flex:1;flex:1;text-align:center}
		.large_tab > ul > li > a{display:block;margin:0 8px;padding:19px 12px;font-size:15px;line-height:20px;color:#d4d4d4;font-weight:600}
		.large_tab > ul > li > a.active{color:#000;font-weight:600}
	}
	
	.no_heart {width: 100%; padding-top: 80px;}
	.no_heart p {text-align: center; font-size: 20pt;}
	#paging {padding-top: 30px; text-align: center;}
</style>

</head>
	
<body>
	<!-- 안에 내용 부분 -->
	<div class="large_tab">
		<ul>
			<li>
				<a href="#" class="active">PRODUCT (${myHeartCount })</a>
			</li>
		</ul>
	</div>
	<div style="width: 100%; min-width: 1000px; overflow: hidden; height: auto;">
		<c:if test="${empty list }">
			<div class="no_heart">
				<p>하트한 내역이 없습니다.</p>
			</div>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="data" items="${list}">
					<div class="itemAll">
						<a class="itemA" href="/finalProject/itemView/itemViewTop.do?seq=${data['SEQ'] }">
							<div class="itemInfo">
								<!-- img -->
								<div class="itemImg">
									<img src="../image/${data.MAIN_CODENAME }/${data.IMG }"/>
								</div>	
								<div class="itemText1">${data['SUB_CODENAME'] }</div>
								<div class="itemText2">${data['NAME'] }</div>
								<c:if test="${data.DISCOUNT!=0 }">
									<div class="itemText3" id="itemText3" style="color: #d4d4d4;">${data['PRICE'] }원</div>
									<fmt:parseNumber var="priceDiscount" integerOnly="true" value='${data.PRICE * (1-data.DISCOUNT )}'/>
									<fmt:parseNumber var="discount" integerOnly="true" value='${data.DISCOUNT*100 }'/>												
									<div class="itemText4" id="itemText4" style="font-size: 14px; color: #ff4800;">${discount }% ${priceDiscount}원</div>
								</c:if>
								<c:if test="${data.DISCOUNT==0 }">
									<div class="itemText3" id="itemText3">${data.PRICE }원</div>							
								</c:if>
							
						</a>
						<!-- 하트 -->
						<a id="wish${data.SEQ}">
							<input type="hidden" id="wish${data.SEQ }" value="${data.SEQ }">
							<i id="myHeart" class="material-icons" style="color: red; font-size: 16px;">favorite</i>
						</a>
							<span>${data.COUNT }</span>&emsp;&emsp;
						<!-- 리뷰 -->
						<a>
							<i class="material-icons" style="font-size: 16px;">chat_bubble_outline</i>
						</a>
							<span>${data.REVIEWCOUNT }</span> 
						</div>
					</div>
			</c:forEach>
			<div class="paging" id="paging">${paging.pagingHTML }</div>
		</c:if>
	</div>
</body>
<script type="text/javascript">
//위시 리스트 추가
$(document).on('click','#myHeart',function(){
	if('${memberDTO}'=='') alert('로그인 하세요');
	else if($(this).text()=='favorite_border') {
		var thisisme = $(this).parent().next();
		$(this).text('favorite');
		$.ajax({
			type : 'POST',
			url : '/finalProject/member/addWishList.do',
			data : {'seq' : $(this).prev().val(),
					'id' : '${memberDTO.id}'},
			dataType : 'json',
			success : function(data) {
				thisisme.text(parseInt(thisisme.text())+1);
			}
		});
	}else if($(this).text()=='favorite') {
		var thisisme = $(this).parent().next();
		$(this).text('favorite_border');
		$.ajax({
			type : 'POST',
			url : '/finalProject/member/deleteWishList.do',
			data : {'seq' : $(this).prev().val(),
					'id' : '${memberDTO.id}'},
			dataType : 'json',
			success : function(data) {
				thisisme.text(parseInt(thisisme.text())-1);
			}
		});
	}
});

//페이징 처리
//페이지 클릭
	$('.paging').on('click','span',function(){
		var pg = $(this).prop('class');
		location.href = '/finalProject/myPage/wishList.do?pg='+pg;
	});

</script>
</html>

