package edu.chunjae.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface DBConnect {
    final static String NOTICE_SELECT_ALL = "select * from notice order by no desc";
    final static String NOTICE_SELECT_ONE = "select * from notice where no=?";
    final static String NOTICE_INSERT = "insert into notice values (default,?,?,default,default);";
    final static String NOTICE_UPDATE = "update notice set title=?, content=? where no=?";
    final static String NOTICE_DELETE = "delete from notice where no=?";

    final static String CUSTOM_SELECT_ALL = "select * from custom order by regdate desc";
    final static String CUSTOM_SELECT_ONE = "select * from custom where id=?";
    final static String CUSTOM_SELECT_LOG = "select * from custom where id=?";
    final static String CUSTOM_INSERT = "insert into custom values (?,?,?,default,default,?,?,?,default,?)";
    final static String CUSTOM_UPDATE = "update custom set pw=?,tel=?,email=? where id=?";
    final static String CUSTOM_DELETE = "delete from custom where id=?";

    //
    // String DELEVERY_PRO = "update delivery set

    final static String PRODUCT_SELECT_ALL = "select * from product order by no";
    final static String PRODUCT_SELECT_ONE = "select * from product where id=?";
    final static String PRODUCT_INSERT = "insert into product values(default, ?, '', ?, ?, ?, ?, ?, ?, ?, default)";
    final static String PRODUCT_INSERT_UPDATE = "update product set prono = concat(cate, pno) where pno=?";
    final static String PRODUCT_UPDATE = "update product set pname=?, cate=?, pcomment=?, plist=? price=?, imgsrc1=?, imgsrc2=?, imgsrc3=? where pno=?";
    final static String PRODUCT_DELETE = "delete from product where pno=?";

    //입고 처리 패턴
    final static String PRODUCT_RECEIVE = "insert into receive values (default, ?, ?, ?, default)";
    final static String CATEGORY_LOAD = "select * from category";








    public Connection connect();
    public void close(PreparedStatement pstmt, Connection conn);
    public void close(ResultSet rs, PreparedStatement pstmt, Connection conn);
}
