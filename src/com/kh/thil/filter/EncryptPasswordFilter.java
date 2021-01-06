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

import com.kh.thil.wrapper.LoginWrapper;

@WebFilter("*.ad")
public class EncryptPasswordFilter implements Filter {

    public EncryptPasswordFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("암호화 필터");
		
		HttpServletRequest hr = (HttpServletRequest) request;
		
		LoginWrapper lw = new LoginWrapper(hr);
		
		
		chain.doFilter(lw, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
