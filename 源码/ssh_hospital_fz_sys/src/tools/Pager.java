package tools;

import java.util.List;

public class Pager<E> {
	private List<E> content;
	
	private Integer pageNo;
	
	private Integer pageCount;
	
	public void setPageCountByTotalCountAndPageSize(int totalCount,int pageSize){
		pageCount = totalCount/pageSize;
		if(totalCount%pageSize!=0){
			pageCount++;
		}
	}

	public Integer getLastPage(){
		if(pageNo!=1){
			return pageNo - 1;
		}
		return 1;
	}
	
	public Integer getNextPage(){
		if(pageNo!=pageCount){
			return pageNo + 1;
		}
		return pageCount;
	}
	
	public List<E> getContent() {
		return content;
	}

	public void setContent(List<E> content) {
		this.content = content;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

}
