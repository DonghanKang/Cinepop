package com.mp.cinepop.questionAnswer.model;

import java.sql.Timestamp;

public class QuestionAnswerVO {
	private int Qno;
	private String Qtitle;
	private Timestamp Qregdate;
	private String Qcontent;
    private int Qgroupno;
    private int Qstep;
    private int Qsortno;
    private String Qdelflag;
    
	public int getQno() {
		return Qno;
	}
	public void setQno(int qno) {
		Qno = qno;
	}
	public String getQtitle() {
		return Qtitle;
	}
	public void setQtitle(String qtitle) {
		Qtitle = qtitle;
	}
	public Timestamp getQregdate() {
		return Qregdate;
	}
	public void setQregdate(Timestamp qregdate) {
		Qregdate = qregdate;
	}
	public String getQcontent() {
		return Qcontent;
	}
	public void setQcontent(String qcontent) {
		Qcontent = qcontent;
	}
	public int getQgroupno() {
		return Qgroupno;
	}
	public void setQgroupno(int qgroupno) {
		Qgroupno = qgroupno;
	}
	public int getQstep() {
		return Qstep;
	}
	public void setQstep(int qstep) {
		Qstep = qstep;
	}
	public int getQsortno() {
		return Qsortno;
	}
	public void setQsortno(int qsortno) {
		Qsortno = qsortno;
	}
	public String getQdelflag() {
		return Qdelflag;
	}
	public void setQdelflag(String qdelflag) {
		Qdelflag = qdelflag;
	}
    
    
}
