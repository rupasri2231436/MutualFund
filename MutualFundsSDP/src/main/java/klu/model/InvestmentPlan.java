package klu.model;

import jakarta.persistence.*;

@Entity
@Table(name = "investment_plans")
public class InvestmentPlan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "plan_name", nullable = false)
    private String planName;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "minimum_investment", nullable = false)
    private Double minimumInvestment;

    @Column(name = "risk_level", nullable = false)
    private String riskLevel;

    public InvestmentPlan() {}

    public InvestmentPlan(String planName, String description, Double minimumInvestment, String riskLevel) {
        this.planName = planName;
        this.description = description;
        this.minimumInvestment = minimumInvestment;
        this.riskLevel = riskLevel;
    }

    public Long getId() {
        return id;
    }

    public String getPlanName() {
        return planName;
    }

    public void setPlanName(String planName) {
        this.planName = planName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getMinimumInvestment() {
        return minimumInvestment;
    }

    public void setMinimumInvestment(Double minimumInvestment) {
        this.minimumInvestment = minimumInvestment;
    }

    public String getRiskLevel() {
        return riskLevel;
    }

    public void setRiskLevel(String riskLevel) {
        this.riskLevel = riskLevel;
    }

    @Override
    public String toString() {
        return "InvestmentPlan [id=" + id + ", planName=" + planName + ", description=" + description 
                + ", minimumInvestment=" + minimumInvestment + ", riskLevel=" + riskLevel + "]";
    }
}
