//
//  StateObject.swift
//  PropertyWrappers
//
//  Created by Никита Бутовцов on 14.10.2022.
//

import SwiftUI

struct StateObject1: View {
    @StateObject private var playerVolume = MediaPlayer()
    
    var body: some View {
        VStack {
            Text("\(playerVolume.volume)")
            
            Slider(value: $playerVolume.volume) 
        }
        .padding()
    }
}

struct StateObject_Previews: PreviewProvider {
    static var previews: some View {
        StateObject1()
    }
}

//MARK: ViewModel

// Подписывая класс под протокол ObservableObject дает возможность представлениям следить за изменениями.
// Обертка @Published  позволяет перезагружать зависящие от него представления при изменении данного свойства для отображения корректных данных

class MediaPlayer: ObservableObject {
    @Published var volume: Double = 0
}
