//
//  Currency.swift
//  MoexCalculator
//
//  Created by Timofey Bulokhov on 29.05.2024.
//

import Foundation

enum Currency: String, CaseIterable, Identifiable {
    
    // Коды валют
    case RUR
    case CNY
    case EUR
    case USD

    var id: Self { self }

    var flag: String {
        switch self {
        case .RUR: return "🇷🇺"
        case .CNY: return "🇨🇳"
        case .EUR: return "🇪🇺"
        case .USD: return "🇺🇸"
        }
    }
}

typealias CurrencyRates = [Currency: Double]

struct CurrencyAmount {
    let currency: Currency
    let amount: Double
}

