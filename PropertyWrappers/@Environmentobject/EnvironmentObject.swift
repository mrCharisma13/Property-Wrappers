//
//  @EnvironmentObject.swift
//  PropertyWrappers
//
//  Created by Никита Бутовцов on 15.10.2022.
//

import SwiftUI

struct EnvironmentObjectEx: View {
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        VStack {
            Text("\(counter.number)")
            
            Button {
                counter.number += 1
            } label: {
                Text("Увеличить")
            }

        }
    }
}

struct _EnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectEx()
        
    }
}


//MARK: Model

class Counter: ObservableObject {
    @Published var number = 0
}
