package com.ets.calculate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ets.calculate.common.Operator;
import com.ets.calculate.service.CalculatorService;

import java.math.BigDecimal;

@Controller
public class IndexResource {

    @Autowired
    private CalculatorService calculatorService;

    @GetMapping("/")
    public String index(Model model) {
        return "index";
    }

    @GetMapping(value = "/calculate")
    public ModelAndView getCalculateView(Model model,
                                         @RequestParam(name = "first") BigDecimal firstNumber,
                                         @RequestParam(name = "second") BigDecimal secondNumber,
                                         @RequestParam(name = "operator") Operator operator) {
        double result = calculatorService.calculate(firstNumber, secondNumber, operator);
        model.addAttribute("calculationResult", result);
        return new ModelAndView("result");
    }
}