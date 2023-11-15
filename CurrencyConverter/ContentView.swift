//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Nosaibah Alrajhi on 15/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var amount : String = ""
    @State private var rate: String = ""
    @State var converted : Double = 0
    var body: some View {
        VStack {
            
            
            HStack {
                Image(systemName: "dollarsign.arrow.circlepath")
                    .foregroundColor(.secondary)
                TextField("Enter amount to convert",text: $amount)
                    .keyboardType(.decimalPad)
            }   .padding()
                .background(Capsule().fill(Color.gray.opacity(0.1)))
            
            
            
            HStack {
                Image(systemName: "dollarsign.arrow.circlepath")
                    .foregroundColor(.secondary)
                TextField("Enter transfer rate",text: $rate)
                    .keyboardType(.decimalPad)
            }   .padding()
                .background(Capsule().fill(Color.gray.opacity(0.1)))
            
            Text("converted amount : \(converted)").padding()
            
            Button(action: {
                       let amount = Double(amount)!
                let rate = Double(rate)!
                 converted = rate * amount
                
                
                   }) {
                       Text("convert")
                           .frame(width: 350, height: 50)
                           .background(Color.darkgreen)
                           .foregroundColor(.white)
                           .clipShape(RoundedRectangle(cornerRadius: 30))
                   }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
