package com.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(urlPatterns = "/index")
public class indexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Book[] books = {
                new Book("试题汇编", "1.jpg", "大神1"),
                new Book("文化基础", "2.jpg", "大神2"),
                new Book("编制指南", "3.jpg", "大神3"),
                new Book("二级C语言", "4.jpg", "大神4"),
                new Book("计算机基础", "5.jpg", "大神5"),
                new Book("辅助审计", "6.jpg", "大神6"),
                new Book("网络技术", "7.jpg", "大神7"),
                new Book("大学基础", "8.jpg", "大神8"),
                new Book("网络安全", "9.jpg", "大神9")

        };
        List<Book> bookList = Arrays.asList(books);
        req.setAttribute("bookList", bookList);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
