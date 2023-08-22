package edu.chunjae.dto;

//카테고리
public class Category {

    //A:초등교과서 B:초등참고서 C:초등문제집 D:초등기타 ...
    private String cno;
    private String cname; //카테고리명

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public String toString() {
        return "Category{" +
                "cno=" + cno +
                ", cname='" + cname + '\'' +
                '}';
    }
}


