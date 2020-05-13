package com.greenart.sample.util;
// 작성된 게시판 제목 길이 잘라 주는 부분
public class CutString {

	public String strCutBytes(String str, int length, int sizePerLetter) {
		// 사용 할 때 : beans를 이용해서 str(입력문자), length(자를 글자수), 2(bytes)
		int returnLength = 0;
		int tempSize = 0;
		int asc = 0;

		if (str == null || str.equals("") || str.equals("null")) {
			str = "";

		} else {
			str = str.replaceAll("(&nbsp|\n|\r|\t)", " ");
			str = str.replaceAll("&amp;", "&");

			for (int i = 0; i < str.length(); i++) {
				asc = (int) str.charAt(i);

				if (asc > 127) {

					if (length >= tempSize + sizePerLetter) {
						tempSize += sizePerLetter;
						returnLength++;

					} else {
						return str.substring(0, returnLength) + "...";
					}

				} else {
					if (length > tempSize) {
						tempSize++;
						returnLength++;
					}

				}
			}
		}
		return str.substring(0, returnLength);

	}

}
