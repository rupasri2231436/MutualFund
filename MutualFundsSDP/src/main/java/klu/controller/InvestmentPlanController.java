package klu.controller;

import klu.model.InvestmentPlan;
import klu.repository.InvestmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/investment-plans")
@CrossOrigin(origins = "'http://localhost:8081/")
public class InvestmentPlanController {

    @Autowired
    private InvestmentRepository investmentPlanRepository;

    // Create a new investment plan
    @PostMapping
    public InvestmentPlan createPlan(@RequestBody InvestmentPlan investmentPlan) {
        return investmentPlanRepository.save(investmentPlan);
    }

    // Get all investment plans
    @GetMapping
    public List<InvestmentPlan> getAllPlans() {
        return investmentPlanRepository.findAll();
    }

    // Get investment plan by ID
    @GetMapping("/{id}")
    public InvestmentPlan getPlanById(@PathVariable Long id) {
        return investmentPlanRepository.findById(id).orElse(null);
    }

    // Delete an investment plan by ID
    @DeleteMapping("/{id}")
    public String deletePlan(@PathVariable Long id) {
        investmentPlanRepository.deleteById(id);
        return "Plan with ID " + id + " has been deleted.";
    }
}
