/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Employee;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Vishal Prasad
 */
@Repository
public class EmployeeDaoImplementation implements EmployeeDao {
    
    @Autowired
    JdbcTemplate template;
    

    public int save(Employee p) {
        String sql = "insert into Emp99(e_name,e_salary,e_company)"
                + "values(\""+ p.getE_name() + "\"," + p.getE_salary() + ",\"" + p.getE_company() + "\")";
        System.out.println();
        System.out.println("weeee "+sql);
        return template.update(sql);
    }

    public int update(Employee p) {
        String sql = "update Emp99 set e_name='" + p.getE_name() + "', e_salary=" + p.getE_salary() + ","
                + "e_company='" + p.getE_company() + "' where e_id=" + p.getE_id() + "";
        return template.update(sql);
    }

    public int delete(int id) {
        String sql = "delete from Emp99 where e_id=" + id + "";
        return template.update(sql);
    }

    public Employee getEmpById(int id) {
        String sql = "select * from Emp99 where e_id=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Employee>(Employee.class));
    }
    
    public List<Employee> getEmployees() {
        String sql = "select * from Emp99";
        System.out.println("test 1");
        List<Employee> emp = template.query(sql, new EmployeeMapper());
        
        return emp;
    }

     private static final class EmployeeMapper implements RowMapper<Employee> {

        @Override
        public Employee mapRow(java.sql.ResultSet rs, int i) throws SQLException {
                  System.out.println("test 2");

            Employee e = new Employee();
            System.out.println("test 3");
                e.setE_id(rs.getInt("e_id"));
                e.setE_name(rs.getString("e_name"));
                e.setE_salary(rs.getDouble("e_salary"));
                e.setE_company(rs.getString("e_company"));
            System.out.println("test "+e+"  "+rs.getString("e_name"));
            return e;
        }
    }
}
