package common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//�������̽�: �߻�޼ҵ�� ����� ����� ���´�.
public interface Command {
	
	//public abstract�� �ڵ����� �ٴ´�.
	void execute(HttpServletRequest req, HttpServletResponse res)
	throws Exception;

}
