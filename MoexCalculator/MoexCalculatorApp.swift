//
//  MoexCalculatorApp.swift
//  MoexCalculator
//
//  Created by Timofey Bulokhov on 29.05.2024.
//

import SwiftUI

@main
struct MoexCalculatorApp: App {
    
    @StateObject var viewModel = CalculatorViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewModel)
        }
    }
}
