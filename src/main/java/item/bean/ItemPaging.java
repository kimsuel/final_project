package item.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ItemPaging {
	private int currentPage;
	private int pageBlock;
	private int pageSize;
	private int totalA;
	private StringBuffer pagingHTML;
	
	public void makePagingHTML(String main_codename) {
		pagingHTML = new StringBuffer();
		
		int totalP = (totalA-1)/pageSize+1;
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+(pageBlock-1);
		if(endPage > totalP) endPage = totalP;
		
		if(startPage!=1)
			pagingHTML.append("<a id=paging href='newDisplay.do?main_codename="+main_codename+"&pg="+(startPage-1)+"'><</a>");
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage)
				pagingHTML.append("<a id=currentPaging href='newDisplay.do?main_codename="+main_codename+"&pg="+i+"'>"+i+"</a>");
			else
				pagingHTML.append("<a id=paging href='newDisplay.do?main_codename="+main_codename+"&pg="+i+"'>"+i+"</a>");
		}
		if(endPage<totalP)
			pagingHTML.append("<a id=paging href='newDisplay.do?main_codename="+main_codename+"&pg="+(endPage+1)+"'>></a>");
	}
	
	public void makePagingHTML(String main_codename, String sub_codename) {
		pagingHTML = new StringBuffer();
		
		int totalP = (totalA-1)/pageSize+1;
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+(pageBlock-1);
		if(endPage > totalP) endPage = totalP;
		
		if(startPage!=1)
			pagingHTML.append("<a id=paging href='itemDisplay.do?main_codename="+main_codename+"&sub_codename="+sub_codename+"&pg="+(startPage-1)+"'><</a>");
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage)
				pagingHTML.append("<a id=currentPaging href='itemDisplay.do?main_codename="+main_codename+"&sub_codename="+sub_codename+"&pg="+i+"'>"+i+"</a>");
			else
				pagingHTML.append("<a id=paging href='itemDisplay.do?main_codename="+main_codename+"&sub_codename="+sub_codename+"&pg="+i+"'>"+i+"</a>");
		}
		if(endPage<totalP)
			pagingHTML.append("<a id=paging href='itemDisplay.do?main_codename="+main_codename+"&sub_codename="+sub_codename+"&pg="+(endPage+1)+"'>></a>");
	}
}
