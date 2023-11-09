package com.example.jsp_ownclassstudy_bean;

import java.util.Date;

public class VO {

    private int index;
    private String subject; // 과목
    private Date date; // 날짜
    private int week; // 주차
    private int count; // 차시
    private String title; // 제목
    private String content; // 내용

    // getter and setter

    public int getIndex(){
        return index;
    }

    public void setIndex(int index){
        this.index = index;
    }
    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getWeek() {
        return week;
    }

    public void setWeek(int week) {
        this.week = week;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
