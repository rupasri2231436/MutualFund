package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import klu.model.InvestmentPlan;

public interface InvestmentRepository extends JpaRepository<InvestmentPlan, Long> {
}
