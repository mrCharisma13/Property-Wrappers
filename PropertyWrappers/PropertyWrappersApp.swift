//
//  PropertyWrappersApp.swift
//  PropertyWrappers
//
//  Created by Никита Бутовцов on 09.10.2022.
//

import SwiftUI

@main
struct PropertyWrappersApp: App {
    @StateObject var counter: Counter = Counter()
    
    var body: some Scene {
        WindowGroup {
            EnvironmentObjectEx()
                .environmentObject(counter)
        }
    }
}
