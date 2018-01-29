package dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import Model.ContactMe;

@Component("contactDao")
public class ContactDao {

private NamedParameterJdbcTemplate jdbc;
	
	

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	
public Boolean insertPost(ContactMe contactme){
		
		MapSqlParameterSource params  = new MapSqlParameterSource();
		params.addValue("name", contactme.getName());
		params.addValue("email", contactme.getEmail());
		params.addValue("number", contactme.getNumber());
		params.addValue("company", contactme.getCompany());
		params.addValue("message", contactme.getMessage());
		
		return jdbc.update("INSERT INTO contact (name,email,number,company,message) VALUES (:name, :email, :number, :company ,:message)", params) == 1;
	}

}
