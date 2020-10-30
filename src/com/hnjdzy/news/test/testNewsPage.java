package com.hnjdzy.news.test;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

import com.hnjdzy.news.dao.NewsDao;
import com.hnjdzy.news.dao.impl.NewsDaoImpl;
import com.hnjdzy.news.entity.NewsPage;

public class testNewsPage {

	@Test
	public void test() {
		NewsDao ndi = new NewsDaoImpl();
		int currPage = 1;
		NewsPage np = null;
		try {
			np = new NewsPage();
			np.setCurrPage(currPage);
			np.setPageSize(13);
			np.setPageList(ndi.findNewsByPage(np.getCurrPage(),np.getPageSize()));
			np.setTotalSize(ndi.findAllNews().size());
			np.setTotalPage(np.getTotalSize());
		}catch(SQLException e){
			e.printStackTrace();
		}
		System.out.println(np.getTotalSize());
	}

}
