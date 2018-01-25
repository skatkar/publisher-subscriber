/**
 * 
 */
package csuf.project.ds.subscriber.config;

import org.springframework.amqp.core.AnonymousQueue;
import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import csuf.project.ds.subscriber.dao.AlertsDao;
import csuf.project.ds.subscriber.dao.FeedbackDao;
import csuf.project.ds.subscriber.dao.RegisterDao;
import csuf.project.ds.subscriber.mail.SendEmail;

/**
 * @author SWAPNIL
 *
 */

@Configuration
public class SubscriberConfig {

	@Bean
	public DirectExchange direct() {
		return new DirectExchange("routing.direct");
	}

	@Bean
	public Receiver receiver() {
		return new Receiver();
	}

	@Bean
	public SendEmail sendEmail() {
		return new SendEmail();
	}

	/*@Bean
	public Writer writer() {
		return new Writer();
	}*/

	/* This method is just like a init-method */
	/*@PostConstruct
	public void init() {
		writer().initialize();
	}*/

	@Bean
	public FeedbackDao feedbackDao() {
		return new FeedbackDao();
	}
	
	@Bean
	public AlertsDao alertsDao() {
		return new AlertsDao();
	}
	
	@Bean
	public RegisterDao registerDao() {
		return new RegisterDao();
	}
	
	
	/* This queue is for listening email related events */
	@Bean
	public Queue autoDeleteQueueEmail() {
		return new AnonymousQueue();
	}

	/* This queue is for listening feedback related events */
	@Bean
	public Queue autoDeleteQueueFeedback() {
		return new AnonymousQueue();
	}

	/* Queues for alert related information */

	/**
	 * Queue bean to catch sports and news events
	 * 
	 * @return Queue
	 */
	@Bean
	public Queue autoDeleteQueueSportsNews() {
		return new AnonymousQueue();
	}
	
	/**
	 * Queue bean to catch news events
	 * 
	 * @return Queue
	 */

	@Bean
	public Queue autoDeleteQueueNews() {
		return new AnonymousQueue();
	}
	
	/**
	 * Queue bean to catch weather events
	 * 
	 * @return Queue
	 */

	/*@Bean
	public Queue autoDeleteQueue5() {
		return new AnonymousQueue();
	}*/
	
	
	/**
	 * This will be the durable queue
	 * Queue retains until message broker restart
	 * @return
	 */
	@Bean
	public Queue durableQueueWeather() {
		return new Queue("durable-queue");
	}

	/* Queues for alert related information ends */

	
	@Bean
	public Binding binding1(DirectExchange direct, Queue autoDeleteQueueEmail) {
		return BindingBuilder.bind(autoDeleteQueueEmail).to(direct).with("email");
	}

	@Bean
	public Binding binding2(DirectExchange direct, Queue autoDeleteQueueFeedback) {
		return BindingBuilder.bind(autoDeleteQueueFeedback).to(direct).with("feedback");
	}
	
	@Bean
	public Binding binding3(DirectExchange direct, Queue autoDeleteQueueSportsNews) {
		return BindingBuilder.bind(autoDeleteQueueSportsNews).to(direct).with("sports");
	}
	
	@Bean
	public Binding binding4(DirectExchange direct, Queue autoDeleteQueueSportsNews) {
		return BindingBuilder.bind(autoDeleteQueueSportsNews).to(direct).with("news");
	}
	
	@Bean
	public Binding binding5(DirectExchange direct, Queue autoDeleteQueueNews) {
		return BindingBuilder.bind(autoDeleteQueueNews).to(direct).with("news");
	}
	
	/*@Bean
	public Binding binding6(DirectExchange direct, Queue autoDeleteQueue5) {
		return BindingBuilder.bind(autoDeleteQueue5).to(direct).with("weather");
	}*/
	
	@Bean
	public Binding binding6(DirectExchange direct, Queue durableQueueWeather) {
		return BindingBuilder.bind(durableQueueWeather).to(direct).with("weather");
	}

}
