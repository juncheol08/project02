package edu.chunjae.dto;

//상품
public class Product {
    private int no;
    private String cate;
    private String prono;
    private String pname;
    private String pcomment;
    private String plist;
    private int price;
    private String imgSrc1;
    private String imgSrc2;
    private String imgSrc3;
    private String resdate;

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public String getProno() {
        return prono;
    }

    public void setProno(String prono) {
        this.prono = prono;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPcomment() {
        return pcomment;
    }

    public void setPcomment(String pcomment) {
        this.pcomment = pcomment;
    }

    public String getPlist() {
        return plist;
    }

    public void setPlist(String plist) {
        this.plist = plist;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImgSrc1() {
        return imgSrc1;
    }

    public void setImgSrc1(String imgSrc1) {
        this.imgSrc1 = imgSrc1;
    }

    public String getImgSrc2() {
        return imgSrc2;
    }

    public void setImgSrc2(String imgSrc2) {
        this.imgSrc2 = imgSrc2;
    }

    public String getImgSrc3() {
        return imgSrc3;
    }

    public void setImgSrc3(String imgSrc3) {
        this.imgSrc3 = imgSrc3;
    }

    public String getResdate() {
        return resdate;
    }

    public void setResdate(String resdate) {
        this.resdate = resdate;
    }

    @Override
    public String toString() {
        return "Product{" +
                "no=" + no +
                ", cate='" + cate + '\'' +
                ", prono='" + prono + '\'' +
                ", pname='" + pname + '\'' +
                ", pcomment='" + pcomment + '\'' +
                ", plist='" + plist + '\'' +
                ", price=" + price +
                ", imgSrc1='" + imgSrc1 + '\'' +
                ", imgSrc2='" + imgSrc2 + '\'' +
                ", imgSrc3='" + imgSrc3 + '\'' +
                ", resdate='" + resdate + '\'' +
                '}';
    }
}
