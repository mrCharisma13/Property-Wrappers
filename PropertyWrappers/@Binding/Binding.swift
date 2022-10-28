//
//  Binding.swift
//  PropertyWrappers
//
//  Created by Никита Бутовцов on 09.10.2022.
//


/*
 В данном примере у нас 2 view - родительское ParentView и дочернее ChildView. В ParentView созданы:
 1) TextField для ввода текста и дальнейшей передачи его в ChildView.
 2) Кнопка (NavigationLink) "Жми сюда", после нажатия на которую происходит передача введенного текста в ChildView.
 */

import SwiftUI

struct ParentView: View {
    
    @State private var textFieldText = ""
    
    var body: some View {
        VStack {
            TextField("Печатаем текст и передаем в ChildView", text: $textFieldText)
            
            NavigationLink {
                ChildView(text: $textFieldText)
            } label: {
                Text("Жми сюда")
            }
        }
        .padding()
    }
}

//MARK: View второго экрана
struct ChildView: View {
    
    @Binding var text: String
    
    var body: some View {
        Text(text)
    }
}


struct Binding_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ParentView()
        }
    }
}
