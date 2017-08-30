/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import java.*;

/**
 *
 * @author Vishal Prasad
 */
public class Employee {

   private Integer e_id;
   private String e_name;
   private double e_salary;
   private String e_company;

    public int getE_id() {
        return e_id;
    }

    public void setE_id(Integer e_id) {
        this.e_id = e_id;
    }

    public String getE_name() {
        return e_name;
    }

    public void setE_name(String e_name) {
        this.e_name = e_name;
    }

    public double getE_salary() {
        return e_salary;
    }

    public void setE_salary(double e_salary) {
        this.e_salary = e_salary;
    }

    public String getE_company() {
        return e_company;
    }

    public void setE_company(String e_company) {
        this.e_company = e_company;
    }

    public Employee(int e_id, String e_name, double e_salary, String e_company) {
        this.e_id = e_id;
        this.e_name = e_name;
        this.e_salary = e_salary;
        this.e_company = e_company;
    }
    
    public Employee() {
    }
}
