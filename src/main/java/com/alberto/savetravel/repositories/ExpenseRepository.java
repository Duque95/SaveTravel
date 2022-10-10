package com.alberto.savetravel.repositories;

import com.alberto.savetravel.models.Expense;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ExpenseRepository extends CrudRepository<Expense, Long> {
    List<Expense> findAll();

}
