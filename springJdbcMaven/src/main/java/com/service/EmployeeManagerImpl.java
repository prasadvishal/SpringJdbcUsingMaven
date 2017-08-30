/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.service;

import com.dao.EmployeeDao;
import com.model.Employee;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Vishal Prasad
 */
public class EmployeeManagerImpl implements EmployeeManager {

    @Autowired
    EmployeeDao employeeDao;

    @Override
    public int saveEmployee(Employee emp) {
        return employeeDao.save(emp);
    }

    @Override
    public int updateEmployee(Employee emp) {
        return employeeDao.update(emp);
    }

    @Override
    public int deleteEmployee(int emp_id) {
        return employeeDao.delete(emp_id);
    }

    @Override
    public Employee getEmployeeById(int id) {
        return employeeDao.getEmpById(id);
    }

    @Override
    public List<Employee> getEmployees() {
        return employeeDao.getEmployees();
    }

}
