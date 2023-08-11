package board.dto;

import java.util.Date;

public class BoardDto {
	
	private int pno;
	private String title;
	private String editor;
	private String postPwd;
	private String contents;
	private int viewCount;
	private Date creDate;
	private int mno;

	public BoardDto() {
		super();
	}
	
	public BoardDto(int pno, String title, String editor, int viewCount, Date creDate) {
		super();
		this.pno = pno;
		this.title = title;
		this.editor = editor;
		this.viewCount = viewCount;
		this.creDate = creDate;
	}

	public BoardDto(int pno, String title, String editor, String postPwd, String contents, int viewCount,
			Date creDate) {
		super();
		this.pno = pno;
		this.title = title;
		this.editor = editor;
		this.postPwd = postPwd;
		this.contents = contents;
		this.viewCount = viewCount;
		this.creDate = creDate;
	}
	
	public BoardDto(int pno, String title, String editor, String postPwd, 
			String contents, int viewCount, Date creDate, int mno) {
		super();
		this.pno = pno;
		this.title = title;
		this.editor = editor;
		this.postPwd = postPwd;
		this.contents = contents;
		this.viewCount = viewCount;
		this.creDate = creDate;
		this.mno = mno;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEditor() {
		return editor;
	}

	public void setEditor(String editor) {
		this.editor = editor;
	}

	public String getPostPwd() {
		return postPwd;
	}

	public void setPostPwd(String postPwd) {
		this.postPwd = postPwd;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public Date getcreDate() {
		return creDate;
	}

	public void setcreDate(Date creDate) {
		this.creDate = creDate;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	@Override
	public String toString() {
		return "BoardDto [pno=" + pno + ", title=" + title + ", editor=" + editor + ", postPwd=" + postPwd
				+ ", contents=" + contents + ", viewCount=" + viewCount + ", creDate=" + creDate
				+ ", mno=" + mno + "]";
	}

}
