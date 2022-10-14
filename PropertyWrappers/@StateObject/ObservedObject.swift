//
//  ObservedObject.swift
//  PropertyWrappers
//
//  Created by Никита Бутовцов on 14.10.2022.
//

import SwiftUI

struct ObservedObjectEx: View {
    @StateObject private var text = TextViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Вводим текст", text: $text.textFieldText)
                
                    .padding(.vertical)
                
                NavigationLink {
                    SecondScreen(text: text)
                } label: {
                    Text("Идем на следующий экран")
                }
            }
            .padding()
        }
    }
}

// MARK: Second screen

struct SecondScreen: View {
    // ObservedObject - аналог binding свойства. Используется для передачи состояния из родительского представления в дочернее
    @ObservedObject var text: TextViewModel
    
    var body: some View {
        Text(text.textFieldText)
    }
}

struct ObservedObject_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectEx()
    }
}

//MARK: ViewModel

class TextViewModel: ObservableObject {
    @Published var textFieldText = ""
}
