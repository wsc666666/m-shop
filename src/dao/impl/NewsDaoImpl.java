package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import dao.NewsDao;
import entity.Goods;
import entity.News;

public class NewsDaoImpl  extends BaseDao implements NewsDao{

	@Override
	public int insert(News news) {
	
		String sql="insert into news(id,title,time,body,gid) values(?,?,?,?,?)";
		Object[] obj={news.getId(),news.getTitle(),news.getTime(),news.getBody(),news.getGid()};
		return this.executeUpdate(sql, obj);
	}

	@Override
	public int delete(News news) {
		String sql="delete from news where gid=?";
		Object[] obj={news.getGid()};
		return this.executeUpdate(sql, obj);
	}

	@Override
	public int update(News news) {
		String sql="update news set title=?,time=?,body=?,id=? where gid=?";
		Object[] obj={news.getTitle(),news.getTime(),news.getBody(),news.getId(),news.getGid()};
		return this.executeUpdate(sql, obj);
	}

	@Override
	public List<News> getAll() {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=this.getConnection();
			String sql="select * from news";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			List<News> list=new ArrayList<News>();
			while(rs.next()){
				News c=new News();
				c.setId(rs.getString("id"));
				c.setTitle(rs.getString("title"));
				c.setTime(rs.getString("time"));
				c.setBody(rs.getString("body"));
				c.setGid(rs.getString("gid"));
				
				list.add(c);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return null;
	}

	@Override
	public List<News>getNewsByTitle(String title) {
		Connection conn=this.getConnection();
		String sql="select * from news where title like ?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+title+"%");
			List<News> list=new ArrayList<News>();
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				News c=new News();
				c.setId(rs.getString("id"));
				c.setTitle(rs.getString("title"));
				c.setTime(rs.getString("time"));
				c.setBody(rs.getString("body"));
				c.setGid(rs.getString("gid"));
				
				list.add(c);
			}
			closeAll(conn, pstmt, rs);
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
