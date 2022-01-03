package com.mp.cinepop.event.model;

import java.sql.Timestamp;

public class EventVO {
	 	private int no;
	    private String title;
	    private String writer;
	    private String content;
	    private String fileName;
	    private String originalFileName;
	    private long fileSize;
	    private Timestamp regdate;
		
	    
		public int getNo() {
			return no;
		}

		public void setNo(int no) {
			this.no = no;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getWriter() {
			return writer;
		}

		public void setWriter(String writer) {
			this.writer = writer;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public String getFileName() {
			return fileName;
		}

		public void setFileName(String fileName) {
			this.fileName = fileName;
		}

		public String getOriginalFileName() {
			return originalFileName;
		}

		public void setOriginalFileName(String originalFileName) {
			this.originalFileName = originalFileName;
		}

		public long getFileSize() {
			return fileSize;
		}

		public void setFileSize(long fileSize) {
			this.fileSize = fileSize;
		}

		public Timestamp getRegdate() {
			return regdate;
		}

		public void setRegdate(Timestamp regdate) {
			this.regdate = regdate;
		}

		@Override
		public String toString() {
			return "EventVO [no=" + no + ", title=" + title + ", writer=" + writer + ", content=" + content
					+ ", fileName=" + fileName + ", originalFileName=" + originalFileName + ", fileSize=" + fileSize
					+ ", regdate=" + regdate + "]";
		}
		
	    
}
