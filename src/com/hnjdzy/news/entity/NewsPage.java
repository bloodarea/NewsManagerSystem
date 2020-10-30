package com.hnjdzy.news.entity;

import java.util.List;

public class NewsPage {
	private int currPage;
	private int pageSize;
	private List<News> pageList;
	private int totalSize;
	private int totalPage;
	public NewsPage() {
	}
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<News> getPageList() {
		return pageList;
	}
	public void setPageList(List<News> pageList) {
		this.pageList = pageList;
	}
	public int getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalSize) {
		if(totalSize % pageSize == 0) {
			totalPage = totalSize / pageSize;
		}
		if(totalSize % pageSize != 0) {
			totalPage = totalSize / pageSize + 1;
		}
	}
	@Override
	public String toString() {
		return "NewsPage [currPage=" + currPage + ", pageSize=" + pageSize + ", pageList=" + pageList + ", totalSize="
				+ totalSize + ", totalPage=" + totalPage + "]";
	}
	
}
