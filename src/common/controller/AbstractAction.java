package common.controller;


//Command�������̽��� ��ӹ޾� execute()�߻� �޼ҵ带 ����� ���´�.
//SubController�� �� Ŭ������ ��ӹ��� ����
abstract public class AbstractAction implements Command{
	
	private String viewPage;//�� ���������� ���� ����
	private boolean isRedirect;//�̵������ redirect�� true,forward�� false
	
	//setter, getter---
	public String getViewPage() {
		return viewPage;
	}
	public void setViewPage(String viewPage) {
		this.viewPage = viewPage;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

}/////////////////////////////////
