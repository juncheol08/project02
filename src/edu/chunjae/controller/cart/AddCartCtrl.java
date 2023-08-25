package edu.chunjae.controller.cart;

import edu.chunjae.dto.Cart;
import edu.chunjae.model.CartDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/AddCart.do")
public class AddCartCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pno = Integer.parseInt(request.getParameter("pno"));
        HttpSession session = request.getSession();
        String cid = (String) session.getAttribute("sid");

        Cart cart = new Cart();
        cart.setPno(pno);
        cart.setCid(cid);
        cart.setAmount(1);

        CartDAO dao = new CartDAO();
        int cnt = dao.addCart(cart);

        PrintWriter out = response.getWriter();

        if(cnt>0){
            out.println("<script>alert(\"장바구니 추가 성공\");</script>");
            response.sendRedirect(request.getContextPath()+"/CartList.do");
        } else {
            out.println("<script>history.go(-1);</script>");

        }
    }
}
