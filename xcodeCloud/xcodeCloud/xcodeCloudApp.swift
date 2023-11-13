//
//  xcodeCloudApp.swift
//  xcodeCloud
//
//  Created by Philipp Saminger on 07.09.23.
//

import SwiftUI

@main
struct xcodeCloudApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

public class Calculator {
    
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    func divide(_ a: Int, _ b: Int) -> Int? {
        guard b != 0 else { return nil }
        return a / b
    }
    
}
