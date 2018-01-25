/**
 * 
 */
package csuf.project.ds.subscriber.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import csuf.project.ds.vo.FeedBackVo;

/**
 * @author SWAPNIL
 *
 */
public class FeedbackDao {
	
		
	@Autowired
	JdbcTemplate jdbcTemplate;
	
			
	public void saveFeedbackInDatabase(FeedBackVo feedbackVo) {
				
		jdbcTemplate.execute("insert into service_feedback(feedback_date,rating,feedback)values" + "('"
				+ feedbackVo.getFeedbackDate() + "','" + feedbackVo.getRating() + "','" + feedbackVo.getDescription()
				+ "')");
	}
	
	public List<FeedBackVo> getAllFeedbacks(){
		return jdbcTemplate.query("select feedback_date,rating,feedback from service_feedback order by feedback_date desc", new RowMapper<FeedBackVo>() {

			@Override
			public FeedBackVo mapRow(ResultSet rs, int number) throws SQLException {
				
				FeedBackVo feedbackVo = new FeedBackVo();
				feedbackVo.setFeedbackDate(rs.getString("feedback_date"));
				feedbackVo.setRating(rs.getString("rating"));
				feedbackVo.setDescription(rs.getString("feedback"));
				
				return feedbackVo;
			}
			
		});
	}
	
}
