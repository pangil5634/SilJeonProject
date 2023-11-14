package com.example.jsp_ownclasssutdy_dao;

import com.example.jsp_ownclassstudy_bean.VO;
import com.example.jsp_ownclasssutdy_common.JDBCUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DAO{
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    private final String DATA_INSERT = "insert into OwnClassStudy (subject, date, week, title, content, count, photo) values (?, ?, ?, ?, ?, ?, ?)";
    private final String DATA_UPDATE = "update OwnClassStudy set subject=?, date=?, week=?, title=?, content=?, count=?, photo=? where dataIndex=?";
    private final String DATA_DELETE = "delete from OwnClassStudy where dataIndex=?";
    private final String DATA_GET = "select * from OwnClassStudy where dataIndex=?";
    private final String DATA_LIST = "select * from OwnClassStudy order by week asc; ";

//    private final String DATA_LIST = "select * from OwnClassStudy order by dataIndex desc";

    public int insertData(VO vo){
        System.out.println("===> JDBC로 insertData() 기능 처리");
        try{
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(DATA_INSERT);
            stmt.setString(1, vo.getSubject());
            stmt.setDate(2, (Date)vo.getDate());
            stmt.setInt(3, vo.getWeek());
            stmt.setString(4, vo.getTitle());
            stmt.setString(5, vo.getContent());
            stmt.setInt(6, vo.getCount());
            stmt.setString(7, vo.getPhoto());
            stmt.executeUpdate();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public int deleteData(VO vo){
        System.out.println("===> JDBC로 deleteData() 기능 처리");
        try{
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(DATA_DELETE);
            stmt.setInt(1, vo.getIndex());
            stmt.executeUpdate();
            return 1;
        }  catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public int updateData(VO vo){
        System.out.println("===> JDBC로 updataData() 기능 처리");
        try{
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(DATA_UPDATE);
            stmt.setString(1, vo.getSubject());
            stmt.setDate(2, (Date) vo.getDate());
            stmt.setInt(3, vo.getWeek());
            stmt.setString(4, vo.getTitle());
            stmt.setString(5, vo.getContent());
            stmt.setInt(6, vo.getCount());
            stmt.setInt(8, vo.getIndex());
            stmt.setString(7, vo.getPhoto());

//            System.out.println("수정된 정보 : " + vo.getIndex() + "-" + vo.getSubject() + "-" + vo.getWeek() + "-" + vo.getCount() + "-" + vo.getDate() + "-" + vo.getTitle() + "-" + vo.getContent());
            stmt.executeUpdate();
//            System.out.println("Change Result : " + stmt.executeUpdate());
            return 1;

        }  catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public VO getData(int dataIndex){
        VO one = new VO();

        System.out.println("===> JDBC로 getData() 기능 처리");
        try{

            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(DATA_GET);
            stmt.setInt(1, dataIndex);
            rs = stmt.executeQuery();

            if(rs.next()){
                one.setIndex((rs.getInt("dataIndex")));
                one.setSubject((rs.getString("subject")));
                one.setWeek((rs.getInt("week")));
                one.setCount((rs.getInt("count")));
                one.setDate((rs.getDate("date")));
                one.setTitle((rs.getString("title")));
                one.setContent((rs.getString("content")));
                one.setPhoto((rs.getString("photo")));
            }
//            System.out.println(one.getIndex() + "-" + one.getSubject() + "-" + one.getWeek() + "-" + one.getCount() + "-" + one.getDate() + "-" + one.getTitle() + "-" + one
//                    .getContent());
            rs.close();
        }  catch (Exception e) {
            e.printStackTrace();
        }
        return one;
    }

    public List<VO> getDataList() {
        List<VO> list = new ArrayList<VO>();
        System.out.println("===> JDBC로 getDataList() 기능 처리");
        try{
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(DATA_LIST);
            rs = stmt.executeQuery();
            while(rs.next()){
                VO one = new VO();
                one.setIndex(rs.getInt("dataIndex"));
                one.setSubject(rs.getString("subject"));
                one.setWeek((rs.getInt("week")));
                one.setCount((rs.getInt("count")));
                one.setDate((rs.getDate("date")));
                one.setTitle((rs.getString("title")));
                one.setContent((rs.getString("content")));
                one.setPhoto((rs.getString("photo")));
                list.add(one);
            }
            rs.close();
        }  catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public String getPhotoFilename(int index){
        String filename =null;
        try{
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(DATA_GET);
            stmt.setInt(1, index);
            rs = stmt.executeQuery();
            if(rs.next()){
                filename = rs.getString("photo");
            }
            rs.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return filename;
    }


}
