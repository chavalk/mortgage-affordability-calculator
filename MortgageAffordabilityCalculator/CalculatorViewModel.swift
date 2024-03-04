//
//  CalculatorViewModel.swift
//  MortgageAffordabilityCalculator
//
//  Created by Jose Garcia on 3/3/24.
//

import Foundation

class CalculatorViewModel: ObservableObject {
    @Published var affordablePayment = "0.00"
    
    func calculateAffordablePayment(annualIncome: String, monthlyDebt: String) {
        let annualIncomeInt = Double(annualIncome) ?? 0.00
        let monthlyIncome = annualIncomeInt / 12
        let monthlyDebtInt = Double(monthlyDebt) ?? 0.00
        let debtToIncomeRatio = monthlyDebtInt / monthlyIncome
        let availableDebtToIncomeRatio = 0.569 - debtToIncomeRatio
        let affordablePaymentInt = monthlyIncome * availableDebtToIncomeRatio
        affordablePayment = String(format: "%.2f", affordablePaymentInt)
    }
}
