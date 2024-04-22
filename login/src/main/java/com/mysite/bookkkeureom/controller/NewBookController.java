package com.mysite.bookkkeureom.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NewBookController {

	public static final String ttbkey = "ttbkshjjang10141628001";

	@ResponseBody
	@RequestMapping(value = "newBook.do", produces = "application/json; charset=utf-8")
	public String newBook() throws IOException {

		String url = "http://www.aladin.co.kr/ttb/api/ItemList.aspx";
		url += "?ttbkey=" + ttbkey;
		url += "&QueryType=ItemNewSpecial";
		url += "&MaxResults=3";
		url += "&SearchTarget=Book";
		url += "&output=js";
		url += "&Version=20131101";
		System.out.println(url);

		URL requestUrl = new URL(url);
		HttpURLConnection urlConnection = (HttpURLConnection) requestUrl.openConnection();
		urlConnection.setRequestMethod("GET");

		BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));

		String responseText = "";
		String line;
		while ((line = br.readLine()) != null) {
			responseText += line;
		}
		br.close();
		urlConnection.disconnect();
		System.out.println(responseText);
		return responseText;
	}
}