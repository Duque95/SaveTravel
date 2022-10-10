package com.alberto.savetravel.services;

import com.alberto.savetravel.models.Expense;
import com.alberto.savetravel.repositories.ExpenseRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExpenseService {
    private final ExpenseRepository expenseRepository;

    public ExpenseService(ExpenseRepository expenseRepository) {
        this.expenseRepository = expenseRepository;
    }

    public void createExpense(Expense expense) {
        expenseRepository.save(expense);


    }

    public List<Expense> allExpenses() {
        return expenseRepository.findAll();
    }
}
