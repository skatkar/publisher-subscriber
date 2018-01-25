/**
 * 
 */
package csuf.project.ds.subscriber.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import csuf.project.ds.vo.AlertsVo;

/**
 * @author SWAPNIL
 *
 */
public class AlertsDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public void saveAlertsInDatabase(AlertsVo alertsVo) {
		jdbcTemplate.execute("insert into alerts(alert_date, subscriber_name, alert_type, alert_description)values" + "('"
				+ alertsVo.getAlertDate() + "','" + alertsVo.getSubscriberName() + "','" + alertsVo.getType() + "','" + alertsVo.getDescription()
				+ "')");
	}
	
	
	/*public List<ArrayList<AlertsVo>> getAllDetailsForSubscribers(){
		
		List<ArrayList<AlertsVo>> subscribersList = new ArrayList<ArrayList<AlertsVo>>();
		
		List<AlertsVo> firstSubscriber = new ArrayList<AlertsVo>();
		List<AlertsVo> secondSubscriber = new ArrayList<AlertsVo>();
		List<AlertsVo> thirdSubscriber = new ArrayList<AlertsVo>();
		
		
	}
	
	private List<AlertsVo> fetchAllSubscribers(){
		
		return jdbcTemplate.query("select alert_date, subscriber_name, alert_type, alert_description from where subscriber_name=" + "'" + subscriberName + "'", new ResultSetExtractor<ArrayList<AlertsVo>>() {

			@Override
			public ArrayList<AlertsVo> extractData(ResultSet rs) throws SQLException, DataAccessException {
				ArrayList<AlertsVo> alerts = new ArrayList<AlertsVo>();
				while(rs.next()) {
					
					AlertsVo alertsVo = new AlertsVo();
					alertsVo.setAlertDate(rs.getString("alert_date"));
					alertsVo.setSubscriberName(rs.getString("subscriber_name"));
					alertsVo.setType(rs.getString("alert_type"));
					alertsVo.setDescription(rs.getString("alert_description"));
					
					alerts.add(alertsVo);
				}
				return alerts;
			}
			
		});
	}*/
	
	public List<ArrayList<AlertsVo>> getAllDetailsForSubscribers(){
		
		List<ArrayList<AlertsVo>> subscribersList = new ArrayList<ArrayList<AlertsVo>>();
		
		for(String subscriberName : getAllSubscriberNames()) {
			subscribersList.add(getListForEachSubscriber(subscriberName));
		}
		return subscribersList;
	}
	
	
	private ArrayList<AlertsVo> getListForEachSubscriber(String subscriberName){
		return jdbcTemplate.query("select alert_date, subscriber_name, alert_type, alert_description from alerts where subscriber_name=" + "'" + subscriberName + "' order by alert_date desc", new ResultSetExtractor<ArrayList<AlertsVo>>() {

			@Override
			public ArrayList<AlertsVo> extractData(ResultSet rs) throws SQLException, DataAccessException {
				ArrayList<AlertsVo> alerts = new ArrayList<AlertsVo>();
				while(rs.next()) {
					
					AlertsVo alertsVo = new AlertsVo();
					alertsVo.setAlertDate(rs.getString("alert_date"));
					alertsVo.setSubscriberName(rs.getString("subscriber_name"));
					alertsVo.setType(rs.getString("alert_type"));
					alertsVo.setDescription(rs.getString("alert_description"));
					
					alerts.add(alertsVo);
				}
				return alerts;
			}
			
		});
			
	}
	
	
	public List<String> getAllSubscriberNames(){
		return jdbcTemplate.query("select distinct subscriber_name from alerts", new ResultSetExtractor<List<String>>() {

			@Override
			public List<String> extractData(ResultSet rs) throws SQLException, DataAccessException {
				
				List<String> subscribers = new ArrayList<String>();
				while(rs.next()) {
					subscribers.add(rs.getString("subscriber_name"));
				}
				return subscribers;
			}
			
		});
	}
}
