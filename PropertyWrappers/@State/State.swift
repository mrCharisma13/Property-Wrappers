//
//  State.swift
//  PropertyWrappers
//
//  Created by Никита Бутовцов on 09.10.2022.
//

import SwiftUI

struct StateView: View {
    
    @State private var sliderValue: Float = 0
    
    var body: some View {
        VStack {
            Slider(value: $sliderValue)
            
            Text("\(sliderValue)")
        }
        .padding()
    }
}

struct State_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
