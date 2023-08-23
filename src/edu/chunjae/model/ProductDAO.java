package edu.chunjae.model;

import edu.chunjae.dto.Notice;
import edu.chunjae.dto.Product;
import org.checkerframework.checker.units.qual.A;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public List<Product> getProductList() {
        List<Product> proList = new ArrayList<>();
        DBConnect con = new PostgreCon();

        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.PRODUCT_SELECT_ALL);
            rs = pstmt.executeQuery();
            while(rs.next()){
                Product pro = new Product();
                pro.setPno(rs.getInt("pno"));
                pro.setCate(rs.getString("cate"));
                pro.setProno(rs.getString("prono"));
                pro.setPauthor(rs.getString("pauthor"));
                pro.setPname(rs.getString("pname"));
                pro.setPcomment(rs.getString("pcomment"));
                pro.setPlist(rs.getString("plist"));
                pro.setPrice(rs.getInt("price"));
                pro.setImgSrc1(rs.getString("imgSrc1"));
                pro.setImgSrc2(rs.getString("imgSrc2"));
                pro.setImgSrc3(rs.getString("imgSrc3"));
                pro.setResdate(rs.getString("resdate"));
                proList.add(pro);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }

        return proList;
    }

    public Product getProduct(int no) {
        Product pro = new Product();
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null){
            System.out.println("PostgreSQL 연결 성공");
        }

        try {
            pstmt = conn.prepareStatement(DBConnect.PRODUCT_SELECT_ONE);
            pstmt.setInt(1, no);
            rs = pstmt.executeQuery();

            if(rs.next()){
                pro.setPno(rs.getInt("pno"));
                pro.setCate(rs.getString("cate"));
                pro.setProno(rs.getString("prono"));
                pro.setPauthor(rs.getString("pauthor"));
                pro.setPname(rs.getString("pname"));
                pro.setPcomment(rs.getString("pcomment"));
                pro.setPlist(rs.getString("plist"));
                pro.setPrice(rs.getInt("price"));
                pro.setImgSrc1(rs.getString("imgSrc1"));
                pro.setImgSrc2(rs.getString("imgSrc2"));
                pro.setImgSrc3(rs.getString("imgSrc3"));
                pro.setResdate(rs.getString("resdate"));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return pro;
    }


}
