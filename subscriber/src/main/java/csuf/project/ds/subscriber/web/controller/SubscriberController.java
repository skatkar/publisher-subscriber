/**
 * 
 */
package csuf.project.ds.subscriber.web.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import csuf.project.ds.subscriber.dao.AlertsDao;
import csuf.project.ds.subscriber.dao.FeedbackDao;
import csuf.project.ds.vo.AlertsVo;

/**
 * @author SWAPNIL
 *
 */
@Controller
public class SubscriberController {

	@Autowired
	FeedbackDao feedbackDao;
	
	@Autowired
	AlertsDao alertsDao;
	
	@RequestMapping(value="/fetchfeedbacks", method= RequestMethod.GET)
	public String retrieveFeedBack(ModelMap model) {
		
		model.put("feedbacks", feedbackDao.getAllFeedbacks());
		return "fetchFeedbacks";
	}
	
	
	@RequestMapping(value="/fetchsubscribers", method= RequestMethod.GET)
	public String retrieveSubscriberDetails(ModelMap model) {
		
				
		for(ArrayList<AlertsVo> allSubscribers : alertsDao.getAllDetailsForSubscribers()) {
			for(AlertsVo subscriber : allSubscribers) {
				System.out.println(subscriber);
			}
		}
		
			
		model.put("subscriberList", alertsDao.getAllSubscriberNames());
		model.put("objectsList", alertsDao.getAllDetailsForSubscribers());
		return "subscribers";
	}
	
}
