package com.Hexaware;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.Hexaware.Dto.BookingInfoRequest;

@Controller
public class LoginController {

	@Autowired
	LoginConnectivity loginConnectivity;

	@Autowired
	ThreatreConnectivity threatreConnectivity;

	@Autowired
	TicketBookingConnectivity ticketbookingConnectivity;

	@RequestMapping("/")
	public String homePage() {
		return "Login.jsp";

	}

	@RequestMapping("/login")
	public String insertLogin(Login login1) {

//  loginConnectivity.save(login1);
////			findThreatreValue();
//		saveThreatreValue();

		Login l = loginConnectivity.findByUsername(login1.getUsername());

		if (l.getUsername().equalsIgnoreCase(login1.getUsername())
				&& l.getPassword().equalsIgnoreCase(login1.getPassword())) {
			System.out.println("MovieTitles");
			return "MoviesTitles.jsp";
		}

		else {
			return "Error.jsp";
		}

	}

	@RequestMapping("/booking")
	public ModelAndView insertTicketBooking(BookingInfoRequest bookinginforequest) {

//		ticketbookingConnectivity.save(book);

		ModelAndView mv = new ModelAndView();
		List<Threatre> tt1 = threatreConnectivity.findAllByMovienameAndShowtimings(bookinginforequest.getMoviename(),bookinginforequest.getShowtimings());
	
		mv.addObject("tt1", tt1);
		
		mv.addObject("bir", bookinginforequest);
		mv.setViewName("SeatSelection.jsp");
		return mv;

	}

	@RequestMapping("/finalbooking")
	public String seatSelectionBooking(TicketBooking ticketbooking) {
		ticketbookingConnectivity.save(ticketbooking);
		String slocation = ticketbooking.getSeatlocation();
//		System.out.println(slocation);
		String[] sloc=slocation.split(",");
		for(String s:sloc)
		{	
			Threatre t4=threatreConnectivity.findByMovienameAndShowtimingsAndShowId(ticketbooking.getMoviename(),ticketbooking.getShowtimings(),Integer.parseInt(s));
			t4.setSeatStatus(2);
			threatreConnectivity.save(t4);
		}
		
		
		
		
		
		
		return "Success.jsp";

	}

	

	@RequestMapping("bhistory")
	public ModelAndView bookingdetails(@RequestParam("bid") int lid) {

		ModelAndView mv = new ModelAndView();
		TicketBooking t1 = ticketbookingConnectivity.findById(lid);

		mv.addObject("t1", t1);
		mv.setViewName("details.jsp");
		return mv;
	}

//	 @GetMapping(path="/bookhistory")
//	  public @ResponseBody Iterable<TicketBooking> getAllUsers() {
//	 
//	    return ticketbookingConnectivity.findAll();
//	  }
	@RequestMapping("/bookhistory")
	public ModelAndView getAllUsers() {

		ModelAndView mv2 = new ModelAndView();
		List<TicketBooking> list1 = (List<TicketBooking>) ticketbookingConnectivity.findAll();
		mv2.addObject("lists", list1);
		mv2.setViewName("bookinghistory.jsp");
		return mv2;
	}

	public void saveThreatreValue() {
		Threatre threatre;
		for (int i = 0; i < 480; i++) {
			threatre = new Threatre();
			threatreConnectivity.save(threatre);

		}

	}
}
