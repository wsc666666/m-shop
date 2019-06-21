package entity;

public class News {
	private String id;
	private String title;
	private String time;
	private String body;
	private String gid;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	@Override
	public String toString() {
		return "News [id=" + id + ", title=" + title + ", time=" + time
				+ ", body=" + body + ", gid=" + gid + "]";
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	
	

}
