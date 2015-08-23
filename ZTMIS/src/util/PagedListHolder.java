package util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PagedListHolder implements Serializable {

	private static final long serialVersionUID = -4738169279788678000L;

	public static final int DEFAULT_PAGE_SIZE = 2;//ҳ��Ĭ��С

	private List source;//ԭʼ���

	private Date refreshDate;//��ݸ���ʱ��

	private int pageSize = DEFAULT_PAGE_SIZE;

	private int page = 0;// ��ǰ����

	private boolean newPageSet;// �Ƿ�����ҳ��

	public PagedListHolder() {
		this(new ArrayList(0));
	}

	public PagedListHolder(List source) {
		setSource(source);
	}

	public void setSource(List source) {
		this.source = source;
		this.refreshDate = new Date();
	}

	public List getSource() {
		return source;
	}

	public Date getRefreshDate() {
		return refreshDate;
	}

	/**
	 * 设置页面大小
	 * 
	 * @param pageSize
	 */
	public void setPageSize(int pageSize) {
		if (pageSize != this.pageSize) {
			this.pageSize = pageSize;
			if (!this.newPageSet) {
				this.page = 0;
			}
		}
	}

	/**
	 * 页面大小
	 * 
	 * @return
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * 设置当前显示的页�?
	 * 
	 * @param page
	 */
	public void setPage(int page) {
		this.page = page;
		this.newPageSet = true;
	}

	/**
	 * 当前�?
	 * 
	 * @return
	 */
	public int getPage() {
		this.newPageSet = false;
		if (this.page >= getPageCount()) {
			this.page = getPageCount() - 1;
		}
		return this.page;
	}

	/**
	 * 总页�?
	 * 
	 * @return
	 */
	public int getPageCount() {
		float nrOfPages = (float) getSource().size() / getPageSize();
		return (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1
				: nrOfPages);
	}

	/**
	 * 是否是首�?
	 * 
	 * @return
	 */
	public boolean isFirstPage() {
		return getPage() == 0;
	}
	
	/**
	 * 首页
	 * 
	 * @return
	 */
	public void firstPage() {
		this.page=0;
	}

	/**
	 * 是否是尾�?
	 * 
	 * @return
	 */
	public boolean isLastPage() {
		return getPage() == getPageCount() - 1;
	}
	
	
	/**
	 * 尾页
	 * 
	 * @return
	 */
	public void lastPage() {
		this.page = getPageCount() - 1;
	}

	/**
	 * 上一�?
	 * 
	 */
	public void previousPage() {
		if (!isFirstPage()) {
			this.page--;
		}
	}

	/**
	 * 下一�?
	 * 
	 */
	public void nextPage() {
		if (!isLastPage()) {
			this.page++;
		}
	}

	/**
	 * 总记录数
	 * 
	 * @return
	 */
	public int getNrOfElements() {
		return getSource().size();
	}

	/**
	 * 当前页的第一个记录数
	 * 
	 * @return
	 */
	public int getFirstElementOnPage() {
		return (getPageSize() * getPage());
	}

	/**
	 * 当前页最后一个数据数
	 * 
	 * @return
	 */
	public int getLastElementOnPage() {
		int endIndex = getPageSize() * (getPage() + 1);
		return (endIndex > getSource().size() ? getSource().size() : endIndex) - 1;
	}

	/**
	 * 当前页数�?
	 * 
	 * @return
	 */
	public List getPageList() {
		return getSource().subList(getFirstElementOnPage(),
				getLastElementOnPage() + 1);
	}

}
