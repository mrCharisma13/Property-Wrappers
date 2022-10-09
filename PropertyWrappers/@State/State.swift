//
//  State.swift
//  PropertyWrappers
//
//  Created by Никита Бутовцов on 09.10.2022.
//

/*
 В данном примере созданы:
  1) Cлайдер.
  2) Лэйбл для отображения значения слайдера при перемещении ползунка.
 
 Далее, для хранения и отображения состояния слайдера, создаем private переменную sliderValue с пометкой @State. При создании слайдера мы передаем данную переменную со знаком $ перед ней в значение "value:" вместо "Binding<BinaryFloatingPoint>".
 Так же передаем ее в Text() для отображения значения.
 */

import SwiftUI

struct StateView: View {
    
    @State private var sliderValue = 0.5
    
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
