<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
.my_tit.nobor {
    padding: 0;
    border: 0;
}

.my_tit {
    position: relative;
    padding-bottom: 10px;
    border-bottom: 4px solid #000;
    font-size: 22px;
    color: #000;
    line-height: 30px;
    font-weight: 500;
}

.my_guide_info {
    margin-top: 10px;
}

.pc_view {
    display: block;
}

.my_guide_info dd, .my_guide_info dt {
    font-size: 12px;
    line-height: 24px;
    color: #5d5d5d;
}

.my_guide_info dt {
    display: block;
    font-weight: 700;
}

.return_goods {
    margin-top: 40px;
    border-bottom: 1px solid #d4d4d4;
}

.return_goods .order_lst {
    border-top: 4px solid #000;
}

.order_lst .thead {
    display: table;
    width: 100%;
    border-bottom: 1px solid #303033;
    font-size: 14px;
    line-height: 50px;
    table-layout: fixed;
}

.order_lst .thead .in_td:first-child {
    overflow: hidden;
    width: 68%;
}

.order_lst .thead .in_td {
    display: table-cell;
    position: relative;
    height: 0;
    padding: 0;
    border: 0;
    text-align: center;
    vertical-align: middle;
}

.goods {
    margin-top: 33px;
    padding-bottom: 30px;
}

.goods .goods_row:first-child {
    margin-top: 0;
}

.goods .goods_row {
    display: table;
    position: relative;
    margin-top: 30px;
    width: 100%;
    table-layout: fixed;
}

.goods .in_td:first-child {
    width: 68%;
    text-align: left;
}

.goods .in_td {
    display: table-cell;
    position: relative;
    min-height: 80px;
    margin-top: 18px;
    text-align: center;
    vertical-align: middle;
}

.goods .info_bx {
    display: block;
    position: relative;
    min-height: 100px;
    padding: 0 15px 0 100px;
}

.goods .imgbx {
    overflow: hidden;
    position: absolute;
    top: 0;
    left: 0;
    width: 80px;
    height: 80px;
}

.goods .imgbx .imgin {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    height: 100%!important;
}

.goods .imgbx img {
    width: 100%;
    border: 0;
    vertical-align: top;
}

.goods .info {
    display: inline-block;
    max-width: 76%;
    font-size: 14px;
    color: #303033;
    line-height: 1.57;
    vertical-align: middle;
    word-break: break-all;
}

.goods .info .goods_tit {
    margin: 4px 0;
    font-size: 16px;
    line-height: 24px;
    word-wrap: break-word;
}

.goods .brand, .goods .brand_name, .goods .goods_tit {
    display: block;
    font-size: 13px;
    font-weight: 700;
}



.return_goods .goods .price{
    font-size: 16px;
}

.goods .goods_price, .goods .price {
    margin-top: 10px;
    font-size: 13px;
    line-height: 20px;
}

.goods .type {
    display: block;
    font-size: 22px;
}

.my_payment_refund{
    margin-top: 80px;
}

.refund {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    border-bottom: 1px solid #d4d4d4;
    font-size: 14px;
}

.refund > li {
    width: 50%;
}

.lftsection {
    border-right: 1px solid #d4d4d4;
}

.refund_total, .refund ul > li {
    display: table;
    width: 100%;
    box-sizing: border-box;
}

.lftsection li {
    padding: 15px 3%;
}

.refund .lft, .refund .rgt {
    display: table-cell;
}

.refund .rgt{
    text-align: right;
}

.refund .price {
    font-size: 15px;
}

.refund .price em {
    font-size: 16px;
    vertical-align: top;
    font-style: normal;
}

.rgtsection {
    position: relative;
}

.refund_total, .refund ul > li {
    display: table;
    width: 100%;
    box-sizing: border-box;
}

.rgtsection li {
    padding: 15px 3%;
}

.refund .tt_price {
    padding: 10px 3% 0;
    line-height: 44px;
}

.refund_total {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
}

.refund .tt_price strong {
    font-size: 22px;
    font-weight: 700;
}

.refund .tt_price .price {
    font-size: 33px;
    color: #ff4800;
}

.refund .tt_price .price em {
    font-size: 40px;
}

.my_btnbx {
    margin-top: 60px;
    text-align: right;
}

.trackingCancel_btn {
    min-width: 82px;
    padding: 0 17px;
    border: 1px solid #303033;
    background: #303033;
    font-size: 13px;
    color: #fff;
    line-height: 40px;
    text-decoration: none;
}

/* .btn_black, .btn_bor {
    display: inline-block;
    box-sizing: border-box;
} */
</style>

<c:if test="${not empty list }">
<section class="my_return2">
    <h3 class="my_tit nobor">????????????</h3>

    <dl class="pc_view my_guide_info">
        <dt>?????? ?????? ??????</dt>
        <dd>?????? ?????? ?????? : 23:30 ~ 00:30</dd>
        <dd>?????? ?????? ?????? : ???????????? ?????? ??? ????????? ???????????? ???????????? ?????? ????????? ???????????? ???????????????.</dd>
        <dd>- ???????????? : ?????? ??? ?????? ????????? 23:30 ~ ????????? 06?????????</dd>
        <dd>- ???????????? : ?????? ??? ?????? ????????? 23:30 ~ ????????? 04?????????</dd>
    </dl>

    <div class="return_goods">
        <ul class="order_lst">
            <li class="thead">
                <div class="in_td">????????????</div>
                <div class="in_td col2">????????????</div>
                <div class="in_td col3">????????????</div>
            </li>
            
			<form id="trackingCancelList" method="post">
            <c:set var="total" value="${0}"/>
			<c:forEach var="data" items="${list }">
	            <li>
	                <div class="goods">
	                    <div class="goods_row">
	                        <div class="in_td">
	                            <a class="info_bx" href="/product/209837">
	                                <div class="imgbx">
	                                    <div class="imgin">
	                                        <img src="/finalProject/image/${data.MAIN_CODENAME }/${data.IMG}">
	                                    </div>
	                                </div>
	                                <div class="info">
	                                    <p class="goods_tit">${data.NAME}</p>
	                                    <div>
	                                        <p class="goods_tit">[??????]${data.SIZE1 } 
	                                        <c:if test="${data.SIZE2 != '-' && data.SIZE2 != null}"> [??????] ${data.SIZE2 }</c:if></p>
	                                    </div>
	                                    <div>
	                                        <p class="goods_tit">${data.COUNT }???</p>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                        <div class="in_td col2">
	                            <p class="price"><fmt:formatNumber pattern="#,###" value="${data.PRICE * data.COUNT }"/>???</p>
	                            <c:set var="total" value="${total + (data.PRICE * data.COUNT)}" />
	                        </div>
	                        <div class="in_td col3">
	                            <strong class="type">${data.STATUS }</strong>
	                            <input type="hidden" name="serial" value="${data.SERIAL}" id="serial">
	                            <input type="hidden" name="startDate" value="<fmt:formatDate value="${data.LOGTIME}"/>" id="startDate">
	                            <input type="hidden" name="seq" value="${data.SEQ }" id="seq">
	                            <input type="hidden" name="color" value="${data.COLOR }" id="color">
	                            <input type="hidden" name="size1" value="${data.SIZE1 }" id="size1">
	                            <c:if test="${data.SIZE2 == null }">
	                            	<input type="hidden" name="size2" value="-" id="size2">
	                            </c:if>
	                            <c:if test="${data.SIZE2 != null }">
	                            	<input type="hidden" name="size2" value="${data.SIZE2 }" id="size2">
	                            </c:if>
	                            <input type="hidden" name="count" value="${data.COUNT }" id="count">
	                        </div>
	                    </div>
	                </div>
	            </li>
            </c:forEach>
            </form>
        </ul>
    </div>
</section>


<section class="my_payment_refund">
    <h3 class="my_tit">????????????</h3>
    <ul class="refund">
        <li class="lftsection">
            <ul>
                <li>
                    <div class="lft">??????????????????</div>
                    <div class="rgt">
                        <span class="price"><em><fmt:formatNumber pattern="#,###" value="${total }"/></em>???</span>
                    </div>
                </li>
                <li>
                    <div class="lft">?????????</div>
                    <div class="rgt">
                        <span class="price"><em>(+) 0</em>???</span>
                    </div>
                </li>
                <li>
                    <div class="lft">???????????? ??????</div>
                    <div class="rgt">
                        <span class="price"><em>(-) 0</em>???</span>
                    </div>
                </li>
            </ul>
        </li>
        <li class="rgtsection">
            <ul>
                <li class="refund_inparea">
                    <div class="lft">???????????? : ??????????????? (????????????)</div>
                </li>
                <li>
                    <div class="rgt">
                    </div>
                </li>
                <li></li>
            </ul>
            <div class="refund_total tt_price">
                <div class="lft">
                    <strong>??? ????????????</strong>
                </div>
                <div class="rgt">
                    <p class="price"><em><fmt:formatNumber pattern="#,###" value="${total}"/></em>???</p>
                </div>
            </div>
        </li>
    </ul>
</section>
</c:if>

<div class="my_btnbx">
	<!-- <a class="trackingCancel_btn" id="trackingCancelBtn">????????????</a> -->
	<input type="button" class="trackingCancel_btn" id="trackingCancelBtn" value="????????????">
</div>

<!-- confirm ??????????????? -->
<div id="myConfirmDialog_frame" style="display: none;">
	<div id="myConfirmDialog">
		<i class="material-icons" id="myConfirmDialog_closeBtn">clear</i>
			????????? ????????? ?????????????????????????
		<button id="myConfirmDialog_okBtn">????????????</button>
		<button id="myConfirmDialog_cancelBtn">????????????</button>
	</div>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#trackingCancelBtn').click(function(){
		$('#myConfirmDialog_frame').show();
	});
	
	//??????????????? ?????????
	$('#myConfirmDialog_closeBtn, #myConfirmDialog_cancelBtn').click(function(){
		$('#myConfirmDialog_frame').hide();
	});
	
	$('#myConfirmDialog_okBtn').click(function() {
		$.ajax({
			type:'POST',
			url : '/finalProject/myPage/trackingCancelInsert.do',
			data : $('#trackingCancelList').serialize(),
			dataType : 'json',
			success : function(data){
				location.href="/finalProject/myPage/trackingCancelOk.do";
			}
		});
	});
	
	
});
</script>