package com.ruru.bookRent.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ruru.bookRent.model.BookDto;
import com.ruru.bookRent.service.BookService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	
	protected final BookService bookService;
	public HomeController(BookService bookService) {
		this.bookService = bookService;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(@ModelAttribute("BOOK")
					BookDto bookDto, Model model) {
		log.debug("BOOK CONTROLLER");
		List<BookDto> bkList = bookService.selectAll();
		model.addAttribute("BOOK_LIST",bkList);
		return "home";
	}
	
	public BookDto findBook(String id) {
		log.debug("FINDBOOK : {} ", id);
		BookDto bookDto = bookService.findBook(id);
		if(bookDto == null ) {
			bookDto = BookDto.builder()
					.b_name("NOT").b_auther("NOT")
					.build();
		}
		log.debug("FINDBOOK : {} ", bookDto);
		return bookDto;
	}
	
	
	
}
