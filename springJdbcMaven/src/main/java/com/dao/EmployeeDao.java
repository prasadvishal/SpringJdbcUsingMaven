/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Employee;
import java.util.List;

/**
 * Interface declaring data operations.
 * @author Vishal Prasad
 */
public interface EmployeeDao {

    public int save(Employee emp);

    public int update(Employee emp);

    public int delete(int emp_id);

    public Employee getEmpById(int id);

    public List<Employee> getEmployees();

}


