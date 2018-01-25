/**
 * 
 */
package csuf.project.ds.publisher.web.config;

import org.springframework.amqp.core.DirectExchange;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;



/**
 * @author SWAPNIL
 *
 */
@Configuration
public class PublisherConfig {
	
	@Bean
	public DirectExchange direct() {
		return new DirectExchange("routing.direct");
	}
	
	@Bean
	public Sender sender() {
		return new Sender();
	}

}
