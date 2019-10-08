package common.Filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

// "/*" => 모든 요청이 있을때 EncodingFilter를 거쳐 요청을 처리하게 됨
/*Filter인터페이스를 상속받아 필터를 만든다.
 * 추상메소드 3개를 오버라이드 한다.
 * init()=> doFilter() => destroy()
 * */
@WebFilter("/*")
public class EncodingFilter implements Filter {

	public void destroy() {
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, 
			FilterChain chain) throws IOException, ServletException {
		// request를 보내기 전에 사전 처리할 코드가 있다면 이곳에서 구현한다.
		//또한 response를 보낸 후에 사후 처리할 코드가 있다면 여기서 구현
		// 우리는 여기서 한글 이콘딩을 처리하자.
		request.setCharacterEncoding("UTF-8");
		//System.out.println("EncodingFilter로 한글 처리됨...");
		
		chain.doFilter(request, response);
		//여러 개의 필터가 있을 때 그 다음 필터로 통과시켜 주는 코드
	}


	public void init(FilterConfig fConfig) throws ServletException {
	}

}
