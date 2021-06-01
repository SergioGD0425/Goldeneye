package com.codebay.goldeneye;

import com.codebay.interservices.MasterDataService;
import com.codebay.models.Employee;
import com.codebay.utils.Utils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.GetMapping;  
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class WebController {

    @GetMapping("/")
    public String index() {
        return "redirect:/form";
    }

    @GetMapping("/form")
    public String formGet(Model model) {
        model.addAttribute("countries", MasterDataService.getCountries());
        return "form";
    }


    @PostMapping("/process_employee")
    public String processEmployee(Employee employee,Model model) {
        model.addAttribute("employee", employee);
        employee.setEmail(Utils.generateEmployeeEmail(employee));

        model.addAttribute("email", employee.getEmail());
        return "email_success";
    }

}