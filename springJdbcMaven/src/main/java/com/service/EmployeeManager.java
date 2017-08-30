/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;

import com.model.Employee;
import java.util.List;

/**
 *
 * @author Vishal Prasad
 */
public interface EmployeeManager {
        
    public int saveEmployee(Employee emp);

    public int updateEmployee(Employee emp);

    public int deleteEmployee(int emp_id);

    public Employee getEmployeeById(int id);

    public List<Employee> getEmployees();
}
