package board.model;

public class pageInfo {
    
    private boolean preve; //이전 페이지
    private boolean next;    //다음페이지
    private int startPage=1;    //시작페이지
    private int endPage;        //마지막페이지
    private int currentPage;        //현재페이지
    private int boardSize = 10; //게시판 사이즈
    private int startRow;        //게시판 첫 시작 번호
    private int listCount;    //게시물 전체 갯수
    private int allPage;        //페이지 전체 갯수
    
    
    
    public int getStartRow() {
        return startRow;
    }
    public void setStartRow(int currentPage) {
        this.startRow = (currentPage - 1) * boardSize;
    }
    public int getCurrentPage() {
        return currentPage;
    }
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public int getListCount() {
        return listCount;
    }
    public void setListCount(int listCount) {
        this.listCount = listCount;
    }
    public int getEndPage() {
        return endPage;
    }
    public void setEndPage(int currentPage, int allPage) {
        if(currentPage == allPage) {
            this.endPage = allPage;
        }else if((currentPage + 4) >= allPage) {
            this.endPage = allPage;
        }else {
            this.endPage = currentPage + 4;
        }
    }
    public int getStartPage() {
        return startPage;
    }
    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }
    public int getAllPage() {
        return allPage;
    }
    public void setAllPage(int listCount) {
        if((listCount & boardSize) > 0) {
            this.allPage = (listCount / boardSize) + 1;
        } else {
            this.allPage = listCount / boardSize ;
        }
    }
    public boolean isPreve() {
        return preve;
    }
    public void setPreve(int currentPage) {
        if(currentPage == 1) {
            this.preve = false;
        } else {
            this.preve = true;
        }
    }
    public boolean isNext() {
        return next;
    }
    public void setNext(int currentPage, int allPage) {
        if(currentPage == allPage ) {
            this.next = false;
        } else {
            this.next = true;
        }
    }
}