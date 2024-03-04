//
//  ContentView.swift
//  MortgageAffordabilityCalculator
//
//  Created by Jose Garcia on 2/27/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var calculatorViewModel = CalculatorViewModel()
    @State private var annualIncome: String = ""
    @State private var monthlyDebt: String = ""
    
    var body: some View {
        VStack {
            Text("Mortgage Affordability Calculator")
                .padding()
                .font(.system(size: 23))
                .bold()
            
            HStack {
                Text("Annual Income:")
                
                TextField("Enter Annual Income", text: $annualIncome)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal)
            .padding(.top)
            
            HStack {
                Text("Monthly Debt:")
                
                TextField("Enter Monthly Debt", text: $monthlyDebt)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal)
            
            Button(action: {
                calculatorViewModel.calculateAffordablePayment(annualIncome: annualIncome, monthlyDebt: monthlyDebt)
            }, label: {
                Text("Calculate")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .fontWeight(.semibold)
            })
            .padding(.top, 30)
            
            Text("Payment you can afford")
                .font(.system(size: 23))
                .padding(.top, 30)
            
            Text("$\(calculatorViewModel.affordablePayment)")
                .font(.system(size: 40))
                .bold()
                .padding(.top, 1)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
