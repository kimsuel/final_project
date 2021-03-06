<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/faq.css">

<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	function faqPaging(pg){
		
		$('div.small_tab ul#small_tab_ul li a').each(function(){
			if($(this).text()==$('#faq_type').val()) $(this).trigger('click',pg);
		});
	}
	
	function faqPaging2(pg){
		
		$('button[class="faq_searchBtn"]').trigger('click',pg);
		
	}
	
</script>


<script type="text/javascript">

$(document).ready(function(){
	$('.inbox').keyup(function(e){
		if(e.keyCode==13) {
			$('.faq_searchBtn').trigger('click');
		}
	});
	
	$('.my_shop > ul:eq(2) > li:eq(3) > a').css('font-weight', '800');
	
	$('div.info3').hide();
	var faq_type="";
	
	$('div.small_tab ul#small_tab_ul li a').on('click', function(e,pg){
		$(this).parent().siblings().children().removeClass('select_tab');
		$(this).addClass('select_tab');
		faq_type=$(this).text();
		$('#pg').val(pg);
		$('#faq_type').val($(this).text());
				
		$('div#faqTable div.info').siblings().remove();
		$('#faqPagingDiv').empty();
		
		$.ajax({
			type : 'GET',
			url : '/finalProject/customerService/getFaqList.do',
			data : 'pg='+$('#pg').val()+'&faq_type='+faq_type,
			dataType : 'json',
			success : function(data){
				$.each(data.list,function(index,faqDTO){
					$('<div/>',{
						class : 'info2',
					}).append($('<p/>',{
						text: faqDTO.type
						}).css({
							width: '140px',
							'font-weight': '300'
					})).append($('<p/>',{
						class : 'leb',
						text: faqDTO.title
						}).css({
							padding: '17px 3% 17px 60px',
							'text-align': 'left',
							'font-weight': '500',
							cursor : 'pointer'							
					})).appendTo($('#faqTable'));
					
					$('<div/>',{
						class : 'info3',
					}).append($('<p/>',{
						id: 'p_content',
						text: faqDTO.content
					})).appendTo($('#faqTable'));
					
				});
				
				$('#faqPagingDiv').html(data.paging.pagingHTML);
			}
		});
	});
	
	$('div.small_tab ul#small_tab_ul li a:eq(0)').trigger('click');

	//content ?????????,??????
	$(document).on('click','.leb',function(){
		
		if($(this).parent().next().css('display')=='none'){
			$(this).parent().next().slideDown();
			$(this).css('background','lightgray');
			$(this).prev().css('background','lightgray');
			$(this).parent().css('border-bottom','hidden');
			$(this).parent().next().css('background','lightgray');
		}else {
			$(this).parent().next().slideUp();
			$(this).css('background','');
			$(this).prev().css('background','');
			$(this).parent().css('border-bottom','1px solid #d4d4d4');
			$(this).parent().next().css('background','');
		}
	});
	
	$('button[class="faq_searchBtn"]').on('click', function(e,pg){
		$('#pg2').val(pg);
		$('div#faqTable div.info').siblings().remove();
		$('div.small_tab ul#small_tab_ul li a').removeClass('select_tab');
		$('div.small_tab ul#small_tab_ul li a:eq(0)').addClass('select_tab');
		
		$.ajax({
			type : 'GET',
			url : '/finalProject/customerService/searchFaqList.do',
			data : 'pg='+$('#pg2').val()+'&search='+$('input[type="search"]').val(),
			dataType : 'json',
			success : function(data){
				$.each(data.list,function(index,faqDTO){
					$('<div/>',{
						class : 'info2',
					}).append($('<p/>',{
						text: faqDTO.type
						}).css({
							width: '140px',
							'font-weight': '300'
					})).append($('<p/>',{
						text: faqDTO.title
						}).css({
							padding: '17px 3% 17px 60px',
							'text-align': 'left',
							'font-weight': '500'
					})).appendTo($('#faqTable'));
					
					$('<div/>',{
						class : 'info3',
					}).append($('<p/>',{
						id: 'p_content',
						text: faqDTO.content
					})).appendTo($('#faqTable'));
					
				});
				
				$('#faqPagingDiv').html(data.paging2.pagingHTML);
			}
		});
	});
	
	
	
});
</script>

</head>
<body>

<div class="wrap">
	<h3 class="h_tit">FAQ</h3>
	
	<div class="sub_div">
		<div class="searchbox">
			<span class="outbox">
				<input type="search" class="inbox">
			</span>
			<button class="faq_searchBtn"></button>
		</div>
		<p style="font-size: 12px; color: #303033;">???????????? ????????? ????????? <strong>1:1 ????????????</strong>??? ????????? ?????????.</p>
		
		<div style="position: absolute; top: 0; right: 0;">
			<a class="inform" href="faq_guide.do">??????/??????/??????????????? ?????? ></a>
			<a class="inform" href="/finalProject/myPage/tracking.do">??????/?????? ?????? ></a> <!-- href="??????????????????" -->
		</div>
	</div>
	
	<div class="small_tab">
	    <ul id="small_tab_ul">
	        <li>
	            <a href="javascript:void(0)" class="select_tab">???????????? FAQ</a>
	        </li>
	        <li>
	            <a href="javascript:void(0)">????????????</a>
	        </li>
	        <li>
	            <a href="javascript:void(0)">??????</a>
	        </li>
	        <li>
	            <a href="javascript:void(0)" >??????/??????</a>
	        </li>
	        <li>
	            <a href="javascript:void(0)">????????????</a>
	        </li>
	        <li>
	            <a href="javascript:void(0)">??????</a>
	        </li>
	    </ul>
	    
	</div>
	
	<div id="faqTable">
		<div class="info">
		    <p class="info_p" style="width: 140px;">??????</p>
		    <p class="info_p" style="padding: 15px 3% 15px 0;">??????</p>
	    </div>
	</div>
	
	<div id="faqPagingDiv" style="float: left; width: 100%;" align="center"></div>
	
	
</div>

<input type="hidden" value="" id="faq_type">
<input type="hidden" value="1" id="pg">
<input type="hidden" value="1" id="pg2">

</body>
</html>















