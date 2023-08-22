package edu.chunjae.dto;

public class Serve {
    private int sno; //출고번호(auto)
    private int pno; //출고 제품번호
    private int amount; //출고수량
    private int rprice; //출고가격
    private int resdate; //출고일


    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public int getPno() {
        return pno;
    }

    public void setPno(int pno) {
        this.pno = pno;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getRprice() {
        return rprice;
    }

    public void setRprice(int rprice) {
        this.rprice = rprice;
    }

    public int getResdate() {
        return resdate;
    }

    public void setResdate(int resdate) {
        this.resdate = resdate;
    }

    @Override
    public String toString() {
        return "Serve{" +
                "sno=" + sno +
                ", pno=" + pno +
                ", amount=" + amount +
                ", rprice=" + rprice +
                ", resdate=" + resdate +
                '}';
    }
}
