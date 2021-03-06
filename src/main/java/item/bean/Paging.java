package item.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class Paging {
	private int currentPage; 	//현재페이지
	private int pageBlock; 		//[이전][1][2][3][다음]
	private int pageSize; 		//1페이지당 10개씩
	private int totalA;			//총글수
	private StringBuffer pagingHTML;
	
	public void makePagingHTML() {
		pagingHTML=new StringBuffer();
		
		//총 페이지 수
		int totalP=(totalA+(pageSize-1))/pageSize;
		
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		if(endPage>totalP) endPage=totalP;
		
		
		if(startPage>pageBlock)
			pagingHTML.append("<span style='font-weight: 700; color: #000; font-size:20px;' id=paging onclick=faqPaging("+(startPage-1)
					+")><</span>");
		
		for(int i=startPage;i<=endPage;i++) {
			if(i==currentPage)
				pagingHTML.append("<span id=currentPaging onclick=faqPaging("+i
						+")>"+i+"</span>");
			else
				pagingHTML.append("<span id=paging onclick=faqPaging("+i
						+")>"+i+"</span>");
		}
		
		if(endPage<totalP)
			pagingHTML.append("<span style='font-weight: 700; color: #000; font-size:20px;' id=paging onclick=faqPaging("+(endPage+1)
					+")>></span>");
	}
	
	
	public void makePagingHTML2() {
		pagingHTML=new StringBuffer();
		
		//총 페이지 수
		int totalP=(totalA+(pageSize-1))/pageSize;
		
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		if(endPage>totalP) endPage=totalP;
		
		
		if(startPage>pageBlock)
			pagingHTML.append("<span style='font-weight: 700; color: #000; font-size:20px;' id=paging onclick=faqPaging2("+(startPage-1)
					+")><</span>");
		
		for(int i=startPage;i<=endPage;i++) {
			if(i==currentPage)
				pagingHTML.append("<span id=currentPaging onclick=faqPaging2("+i
						+")>"+i+"</span>");
			else
				pagingHTML.append("<span id=paging onclick=faqPaging2("+i
						+")>"+i+"</span>");
		}
		
		if(endPage<totalP)
			pagingHTML.append("<span style='font-weight: 700; color: #000; font-size:20px;' id=paging onclick=faqPaging2("+(endPage+1)
					+")>></span>");
	}
	
	public void makePagingHTML3() {
		pagingHTML=new StringBuffer();
		
		//총 페이지 수
		int totalP=(totalA+(pageSize-1))/pageSize;
		
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		if(endPage>totalP) endPage=totalP;
		
		
		if(startPage>pageBlock)
			pagingHTML.append("<span style='font-weight: 700; color: #000; font-size:20px;' id=paging onclick=mantomanPaging("+(startPage-1)
					+")><</span>");
		
		for(int i=startPage;i<=endPage;i++) {
			if(i==currentPage)
				pagingHTML.append("<span id=currentPaging onclick=mantomanPaging("+i
						+")>"+i+"</span>");
			else
				pagingHTML.append("<span id=paging onclick=mantomanPaging("+i
						+")>"+i+"</span>");
		}
		
		if(endPage<totalP)
			pagingHTML.append("<span style='font-weight: 700; color: #000; font-size:20px;' id=paging onclick=mantomanPaging("+(endPage+1)
					+")>></span>");
	}
	
	public void makePagingHTML4() {
		pagingHTML=new StringBuffer();
		
		//총 페이지 수
		int totalP=(totalA+(pageSize-1))/pageSize;
		
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		if(endPage>totalP) endPage=totalP;
		
		
		if(startPage>pageBlock)
			pagingHTML.append("<span style='font-weight: 700; color: #000; font-size:20px;' id=paging onclick=myQnAPaging("+(startPage-1)
					+")><</span>");
		
		for(int i=startPage;i<=endPage;i++) {
			if(i==currentPage)
				pagingHTML.append("<span id=currentPaging onclick=myQnAPaging("+i
						+")>"+i+"</span>");
			else
				pagingHTML.append("<span id=paging onclick=myQnAPaging("+i
						+")>"+i+"</span>");
		}
		
		if(endPage<totalP)
			pagingHTML.append("<span style='font-weight: 700; color: #000; font-size:20px;' id=paging onclick=myQnAPaging("+(endPage+1)
					+")>></span>");
	}
	
	public void makePagingHTML_A() {
		pagingHTML=new StringBuffer();
		
		//총 페이지 수
		int totalP=(totalA+(pageSize-1))/pageSize;
		
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		if(endPage>totalP) endPage=totalP;
		
		
		if(startPage>pageBlock)
			pagingHTML.append("<span style='font-weight: 700; color: #000; font-size:20px;' id=paging onclick=mantomanPaging_A("+(startPage-1)
					+")><</span>");
		
		for(int i=startPage;i<=endPage;i++) {
			if(i==currentPage)
				pagingHTML.append("<span id=currentPaging onclick=mantomanPaging_A("+i
						+")>"+i+"</span>");
			else
				pagingHTML.append("<span id=paging onclick=mantomanPaging_A("+i
						+")>"+i+"</span>");
		}
		
		if(endPage<totalP)
			pagingHTML.append("<span style='font-weight: 700; color: #000; font-size:20px;' id=paging onclick=mantomanPaging_A("+(endPage+1)
					+")>></span>");
	}
}








