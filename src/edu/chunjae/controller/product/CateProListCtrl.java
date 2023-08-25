package edu.chunjae.controller.product;

import edu.chunjae.dto.Product;
import edu.chunjae.model.ProductDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/CateProList.do")
public class CateProListCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("msg", "상품 리스트를 출력합니다.");

        String cate = request.getParameter("cate");

        ProductDAO dao = new ProductDAO();
        List<Product> proList;

        //초 중 고 각각 전체 조회?

        if(cate==""){
            proList = dao.getProductList();
        } else if(cate.equals("ABCD")){
            proList = dao.getCateProductListSchool(cate);
        } else if(cate.equals("EFGH")) {
            proList = dao.getCateProductListSchool(cate);
        } else if(cate.equals("IJKL")) {
            proList = dao.getCateProductListSchool(cate);
        }
        else {
            proList = dao.getCateProductList(cate);
        }

//
//        if(request.getParameter("cate")==""){
//            proList = dao.getProductList();
//        } else {
//            cate = request.getParameter("cate");
//            proList = dao.getCateProductList(cate);
//        }

        request.setAttribute("proList", proList);
        RequestDispatcher view = request.getRequestDispatcher("/product/proList.jsp");
        view.forward(request, response);
    }
}
