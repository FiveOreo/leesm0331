package reply.model;
import java.io.Serializable;
import java.sql.Date;
/*sw?��?��?���? �?
 * - Domain계층?�� ?��?��?��?��.
 * - ?��?��?��베이?��?�� ?��면계층에?�� 받아?�� 값을 Object?��?��?��
 *  ?���? ?��?�� 객체
 * - VO(Value Object) ?��?�� DTO(Data Transfer Object)객체?���? ?��
 * - 보통 VO객체?��?? 직렬?���? 구현?��
 *   직렬?��?�� 객체�? ?��?���? ?��?��?�� ?�� ?��?��?�� ?��?��?��?�� �?.
 *   ?��?��?��?���? 객체�? ?��?��?��고자 ?�� ?�� 직렬?���? ?��?�� ?���? ?��?���?
 *   ?��?��?�� ?�� ?��?��
 * */
public class replyVO implements Serializable{
	
	private int idx;
	private String name;
	private String msg;
	private java.sql.Date wdate;

	//?��?��?�� ?��버로?��
	public replyVO() {
		this(0,null,null,null);
	}//default ?��?��?��----

	public replyVO(int idx, String name, String msg, Date wdate) {
		super();
		this.idx = idx;
		this.name = name;
		this.msg = msg;
		this.wdate = wdate;
	}//?��?�� ?��?��?��-------------

	//setter, getter-------
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public java.sql.Date getWdate() {
		return wdate;
	}

	public void setWdate(java.sql.Date wdate) {
		this.wdate = wdate;
	}
	//toString()?��버라?��?��. ?��?��?��?���? ?��?���? MemoVO@adb123

	@Override
	public String toString() {
		return "MemoVO [idx=" + idx + ", name=" + name + ", msg=" + msg + ", wdate=" + wdate + "]";
	}
	

}////////////////////////////////////////////////




