/**
 * 
 */
package csuf.project.ds.subscriber.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import csuf.project.ds.vo.EmailVo;

/**
 * @author SWAPNIL
 *
 */
public class RegisterDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public void saveRegistrationInDatabase(EmailVo emailVo) {
		jdbcTemplate.execute(
				"insert into usr_reg(reg_date, first_name, last_name, email_addr, ssn, usr_addr, city, state, zip_code)values"
						+ "('" + emailVo.getRegistrationDate() + "','" + emailVo.getFirstName() + "','"
						+ emailVo.getLastName() + "','" + emailVo.getEmail() + "','" + emailVo.getSsn() + "','"
						+ emailVo.getAddress() + "','" + emailVo.getCity() + "','" + emailVo.getState() + "','"
						+ emailVo.getZipcode() + "')");
	}
}
