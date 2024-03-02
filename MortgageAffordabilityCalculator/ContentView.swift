//
//  ContentView.swift
//  MortgageAffordabilityCalculator
//
//  Created by Jose Garcia on 2/27/24.
//

import SwiftUI

struct ContentView: View {
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
            
            Text("Payment you can afford")
                .font(.system(size: 23))
                .padding(.top, 70)
            
            Text("$2,584.96")
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
