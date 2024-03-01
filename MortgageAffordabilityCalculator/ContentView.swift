//
//  ContentView.swift
//  MortgageAffordabilityCalculator
//
//  Created by Jose Garcia on 2/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var annualIncome: String = ""
    
    var body: some View {
        VStack {
            Text("Mortgage Affordability Calculator")
                .padding()
                .font(.system(size: 25))
            
            HStack {
                Text("Annual Income:")
                
                TextField("Enter Annual Income", text: $annualIncome)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
