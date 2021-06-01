package com.codebay.utils;

import com.codebay.models.Employee;

public class Utils {

    public static String generateEmployeeEmail(Employee employee){
        return (employee.getEmployeeName().charAt(0)+employee.getEmployeeSurname()+"."+employee.getDepartment()+"@"+employee.getCountry()+".goldeneye.com").toLowerCase();
    }

}
