package com.example.jsp_ownclasssutdy_common;

import com.example.jsp_ownclassstudy_bean.VO;
import com.example.jsp_ownclasssutdy_dao.DAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.time.LocalDate;

public class FileUpload {
    public VO uploadPhoto(HttpServletRequest request) {
        String filename = "";
        int sizeLimit = 15 * 1024 * 1024;

        String realPath = request.getServletContext().getRealPath("upload");

        File dir = new File(realPath);
        if (!dir.exists()) dir.mkdirs();

        VO one = null;
        MultipartRequest multipartRequest = null;

        try {
            multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
            filename = multipartRequest.getFilesystemName("photo");
            one = new VO();


            String dataIndex = multipartRequest.getParameter("index");
            String subject = multipartRequest.getParameter("subject");
            String date = multipartRequest.getParameter("date");
            String week = multipartRequest.getParameter("week");
            String title = multipartRequest.getParameter("title");
            String content = multipartRequest.getParameter("content");
            String count = multipartRequest.getParameter("count");
            String photo = multipartRequest.getParameter("photo");

            System.out.println(one.getIndex() + "-" + one.getSubject() + "-" + one.getWeek() + "-" + one.getCount() + "-" + one.getDate() + "-" + one.getTitle() + "-" + one.getContent());


            if (dataIndex != null && !dataIndex.equals(""))
                one.setIndex(Integer.parseInt(dataIndex));
            if (dataIndex != null && !dataIndex.equals("")) {
                DAO dao = new DAO();
                String oldfilename = dao.getPhotoFilename(Integer.parseInt(dataIndex));
                if (filename != null && oldfilename != null)
                    FileUpload.deleteFile(request, oldfilename);
                else if (filename == null && oldfilename != null)
                    filename = oldfilename;

            }

            one.setSubject(subject);
            one.setWeek(Integer.parseInt(week));
            one.setCount(Integer.parseInt(count));
            one.setTitle(title);
            one.setContent(content);
            one.setPhoto(photo);

            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate myDate = LocalDate.parse(date, formatter);
            one.setDate(java.sql.Date.valueOf(myDate));
            one.setPhoto(filename);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return one;
    }


    public static void deleteFile(HttpServletRequest request, String filename) {
        String filepath = request.getServletContext().getRealPath("upload");

        File f = new File(filepath + "/" + filename);
        if (f.exists())
            f.delete();
    }

}