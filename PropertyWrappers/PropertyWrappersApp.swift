//
//  PropertyWrappersApp.swift
//  PropertyWrappers
//
//  Created by Никита Бутовцов on 09.10.2022.
//

import SwiftUI

@main
struct PropertyWrappersApp: App {
    @StateObject var image: ImageViewModel = ImageViewModel()
    
    var body: some Scene {
        WindowGroup {
            EnvironmentObjectView()
                .environmentObject(image)
        }
    }
}
