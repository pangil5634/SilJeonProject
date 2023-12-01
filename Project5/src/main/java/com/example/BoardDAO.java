package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int insertBoard(BoardVO vo) {
        String sql = "insert into BOARD2 (country_name, gold, silver, bronze, content, total) values (" + "'" + vo.getCountry_name() + "', " + "'" + vo.getGold() + "', " + "'" + vo.getSilver() + "', " + "'" + vo.getBronze() + "', " + "'" + vo.getContent() + "', " + "'" + (vo.getGold() + vo.getSilver() + vo.getBronze()) + "')";
        return jdbcTemplate.update(sql);
    }

    public int deleteBoard(int seq) {
        String sql = "delete from BOARD2 where seq = " + seq;
        return jdbcTemplate.update(sql);
    }

    public int updateBoard(BoardVO vo) {
        String sql = "update BOARD2 set country_name = '" + vo.getCountry_name() + "'," + "gold='" + vo.getGold() + "'," + "silver='" + vo.getSilver() + "', " + "bronze='" + vo.getBronze() + "', " + "content='" + vo.getContent() +"', " + "total='" + (vo.getGold() + vo.getSilver() + vo.getBronze())  +  "' where seq=" + vo.getSeq();
        return jdbcTemplate.update(sql);
    }

    public BoardVO getBoard(int seq) {
        String sql = "select * from BOARD2 where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }


    public List<BoardVO> getBoardList() {
        String sql = "select * from BOARD2 order by total desc ";
//        String sql = "select * from BOARD";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }

    class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setCountry_name(rs.getString("country_name"));
            vo.setGold(rs.getInt("gold"));
            vo.setSilver(rs.getInt("silver"));
            vo.setBronze(rs.getInt("bronze"));
            vo.setContent(rs.getString("content"));
            vo.setRegdate(rs.getDate("regdate"));
            vo.setTotal(rs.getInt("total"));
            return vo;
        }
    }


}
