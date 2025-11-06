package com.nlzub.database;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        // database 서버 접속
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            // 서버 접속 주소, 포트, 사용할 데이터 베이스, 사용자이름, 비밀번호
            String url = "jdbc:mysql://localhost:3306/nlzub";
            String username = "root";
            String password = "root";

            // 접속 및 접속 관리 객체 얻기
            Connection connection = DriverManager.getConnection(url, username, password);

            // 쿼리 수행

//            String query = "INSERT INTO `real_estate`\n" +
//                    "(`realtor_id`, `address`, `area`, `type`, `price`, `rent_price`)\n" +
//                    "VALUE\n" +
//                    "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL);";

//            Statement statement = connection.createStatement();
//            statement = connection.createStatement();
//
//            int count = statement.executeUpdate(query);
//            out.println("저장된 행 : " + count);

            String query = "SELECT * FROM `real_estate` \n" +
                    "ORDER BY `id` DESC\n" +
                    "LIMIT 10;";

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            while(resultSet.next()) {
                String address = resultSet.getString("address");
                int area = resultSet.getInt("area");
                String type = resultSet.getString("type");

                out.println("매물 주소 : " + address + " , 면적 : " + area + ", 타입 : " + type);
            }


            statement.close();
            connection.close();



        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

}
