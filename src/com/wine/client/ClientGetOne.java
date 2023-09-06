package com.wine.client;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wine.impl.ClientTelImpl;

import telInfoDAO.ClientDAO;
import telInfoVO.ClientVO;

public class ClientGetOne implements ClientTelImpl {

	@Override
	public void clienttel(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("\"text/html; charset=UTF-8\"");

		ClientDAO ctdao = new ClientDAO();

		String id = request.getParameter("id");

		ClientVO getone = ctdao.getOneInfo(id);

		request.setAttribute("getone", getone);
	}

}
