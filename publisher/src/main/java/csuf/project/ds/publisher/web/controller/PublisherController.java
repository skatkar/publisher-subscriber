package csuf.project.ds.publisher.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import csuf.project.ds.publisher.web.config.Sender;
import csuf.project.ds.vo.AlertsVo;
import csuf.project.ds.vo.EmailVo;
import csuf.project.ds.vo.FeedBackVo;

/**
 * @author SWAPNIL
 *
 */

@Controller
public class PublisherController {
	
	@Autowired
	private Sender sender;
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
    public String showRegistrationPage(ModelMap model){
        return "register";
    }
	
		
	/* Publisher method to get the User object */
	@RequestMapping(value="/register", method = RequestMethod.POST)
    public String showRegistrationSuccessPage(ModelMap model,@ModelAttribute("user") EmailVo emailVo){
		
		sender.send("email", emailVo);
		model.put("message", "Thanks for registration! Email will be sent to you shortly");
		return "register";
	}
	
	
	@RequestMapping(value="/feedback", method = RequestMethod.GET)
    public String showFeedbackPage(ModelMap model){
        return "feedback";
    }
	
	@RequestMapping(value="/feedback", method = RequestMethod.POST)
    public String showFeedbackSuccessPage(ModelMap model,@ModelAttribute("feedback") FeedBackVo feedbackVo){
        
		sender.send("feedback", feedbackVo);
		model.put("message", "Thanks for the feedback!");
		return "feedback";
    }

	
	@RequestMapping(value="/alerts", method = RequestMethod.GET)
    public String showAlertsPage(ModelMap model,@ModelAttribute("alerts") AlertsVo alertsVo){
        return "alerts";
    }
	
	@RequestMapping(value="/alerts", method = RequestMethod.POST)
    public String showAlertsSuccessPage(ModelMap model,@ModelAttribute("alerts") AlertsVo alertsVo){
		
		sender.send(alertsVo.getType(),alertsVo);
		model.put("message", "Alert for " + alertsVo.getType() + " posted successfully");
        return "alerts";
    }
	
}
