package com.mysite.bookkkeureom.run;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mysite.bookkkeureom.model.vo.BestBookVO;

public class BestBookJavaApp {

	public static final String ttbkey = "ttbkshjjang10141628001";

	public static void main(String[] args) throws IOException {

		String url = "http://www.aladin.co.kr/ttb/api/ItemList.aspx";

		url += "?ttbkey=" + ttbkey;
		url += "&QueryType=Bestseller";
		url += "&MaxResults=12";
		url += "&SearchTarget=Book";
		url += "&output=js";
		url += "&Version=20131101";

//		System.out.println(url);

		URL requestUrl = new URL(url);

		HttpURLConnection urlConnection = (HttpURLConnection) requestUrl.openConnection();

		urlConnection.setRequestMethod("GET");

		BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));

		String responseText = "";
		String line;
		while ((line = br.readLine()) != null) {
//			System.out.println(line);
			responseText += line;
		}

//		System.out.println(responseText);

		JsonObject totalObj = JsonParser.parseString(responseText).getAsJsonObject();

		JsonArray itemArr = totalObj.getAsJsonArray("item");

		ArrayList<BestBookVO> list = new ArrayList<>();
		for (int i = 0; i < itemArr.size(); i++) {
			JsonObject item = itemArr.get(i).getAsJsonObject();

			BestBookVO book = new BestBookVO();
			book.setTitle(item.get("title").getAsString());
			book.setAuthor(item.get("author").getAsString());
			book.setCover(item.get("cover").getAsString());
			book.setBestRank(item.get("bestRank").getAsString());

			list.add(book);
		}
		for (BestBookVO b : list) {
			System.out.println(b);
		}

		br.close();
		urlConnection.disconnect();
	}
}