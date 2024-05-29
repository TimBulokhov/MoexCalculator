//
//  CurrencyInput.swift
//  MoexCalculator
//
//  Created by Timofey Bulokhov on 29.05.2024.
//

import SwiftUI

struct CurrencyInput: View {
    
    let currency: Currency
    let amount: Double
    let calculator: (Double) -> Void
    let tapHandler: () -> Void
    
    var numberFormatter: NumberFormatter = {
        var nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.usesGroupingSeparator = false
        nf.maximumFractionDigits = 2
        return nf
    }()
    
    var body: some View {
        
        HStack {
            
            VStack {
                Text(currency.flag)
                    .font(.system(size: 200))
                    .minimumScaleFactor(0.01)
                    .aspectRatio(1, contentMode: .fit)
                
                Text(currency.rawValue)
                    .font(.title2)
            }
            .frame(height: 100)
            .onTapGesture(perform: tapHandler)

            let topBinding = Binding<Double>(
                get: {
                    amount
                },
                set: {
                    calculator($0)
                }
            )
            
            TextField("", value: topBinding, formatter: numberFormatter)
                .font(.largeTitle)
                .multilineTextAlignment(.trailing)
                .minimumScaleFactor(0.5)
                .keyboardType(.numberPad)
        }
    }
}

struct CurrencyInput_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyInput(
            currency: .RUB,
            amount: 1000,
            calculator: { _ in },
            tapHandler: {}
        )
    }
}
