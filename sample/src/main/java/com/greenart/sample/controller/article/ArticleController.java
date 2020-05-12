package com.greenart.sample.controller.article;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/article")
public class ArticleController {

	
	@RequestMapping("")
	public String getArticleList() {
		return "/article/getArticleList";
	}
}
