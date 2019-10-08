package board.model;

public class BoardBean {
    private int board_num;        //글번호
    private String board_name;    //작성자
    private String board_subject;//제목
    private String board_content;//내용
    private int readcount;        //조회수
    private String board_date;    //작성일
    private String board_id;        //작성자 아이디
    
    public int getBoard_num() {
        return board_num;
    }
    public void setBoard_num(int board_num) {
        this.board_num = board_num;
    }
    public String getBoard_name() {
        return board_name;
    }
    public void setBoard_name(String board_name) {
        this.board_name = board_name;
    }
    public String getBoard_subject() {
        return board_subject;
    }
    public void setBoard_subject(String board_subject) {
        this.board_subject = board_subject;
    }
    public String getBoard_content() {
        return board_content;
    }
    public void setBoard_content(String board_content) {
        this.board_content = board_content;
    }
    public int getReadcount() {
        return readcount;
    }
    public void setReadcount(int readcount) {
        this.readcount = readcount;
    }
    public String getBoard_date() {
        return board_date;
    }
    public void setBoard_date(String board_date) {
        this.board_date = board_date;
    }
    public String getBoard_id() {
        return board_id;
    }
    public void setBoard_id(String board_id) {
        this.board_id = board_id;
    }
}
