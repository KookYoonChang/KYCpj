package com.kh.thil.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/*")
public class CommonEncodingFilter implements Filter {

    public CommonEncodingFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest hr = (HttpServletRequest) request;
		
		//System.out.println("요청 방식 : " + hr.getMethod());
		if(hr.getMethod().equalsIgnoreCase("POST")) {
		
		request.setCharacterEncoding("UTF-8");
		System.out.println("인코딩 완료!");
		}
		
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
