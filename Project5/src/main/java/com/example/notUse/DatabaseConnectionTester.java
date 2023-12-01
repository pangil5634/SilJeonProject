//package com.example;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//import org.springframework.jdbc.core.JdbcTemplate;
//
//public class DatabaseConnectionTester {
//
//    private JdbcTemplate jdbcTemplate;
//
//    public DatabaseConnectionTester(JdbcTemplate jdbcTemplate) {
//        this.jdbcTemplate = jdbcTemplate;
//    }
//
//    public boolean testDatabaseConnection() {
//        try {
//            // 실행할 테스트 쿼리
//            String testQuery = "SELECT 1";
//
//            // 쿼리 실행
//            jdbcTemplate.queryForObject(testQuery, Integer.class);
//
//            // 예외가 발생하지 않으면 연결 성공
//            return true;
//        } catch (Exception e) {
//            // 예외가 발생하면 연결 실패
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    public static void main(String[] args) {
//        // Spring 컨텍스트에서 JdbcTemplate 빈을 가져온다고 가정
//        ApplicationContext context = new ClassPathXmlApplicationContext("file:src/main/webapp/WEB-INF/applicationContext.xml");
//        JdbcTemplate jdbcTemplate = context.getBean("jdbcTemplate", JdbcTemplate.class);
//
//        // 위에서 가져온 JdbcTemplate을 사용하여 DatabaseConnectionTester를 초기화
//         DatabaseConnectionTester tester = new DatabaseConnectionTester(jdbcTemplate);
//
//        // 데이터베이스 연결 테스트 실행
//         boolean isConnected = tester.testDatabaseConnection();
//
//        // 연결 여부 출력
//         System.out.println("Database Connection Status: " + (isConnected ? "Connected" : "Not Connected"));
//    }
//}
